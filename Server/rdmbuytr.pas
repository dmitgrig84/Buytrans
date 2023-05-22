unit rdmbuytr;

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, buytrsrv_TLB, StdVcl, DBTables, Db, Provider, IBDatabase,
  IBCustomDataSet, IBQuery, IBEvents, DBCtrls,Dialogs;

type
  TBuyTrRDM = class(TRemoteDataModule, IBuyTrRDM)
    AnyCommandDSP: TDataSetProvider;
    ReadIBTransaction: TIBTransaction;
    AnyCommandIBQuery: TIBQuery;
    InUpDelDSP: TDataSetProvider;
    InUpDelIBTransaction: TIBTransaction;
    InUpDelIBQuery: TIBQuery;
    IBDatabase: TIBDatabase;
    procedure IBQueryAfterOpen(DataSet: TDataSet);
    procedure RemoteDataModuleCreate(Sender: TObject);
    procedure RemoteDataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    procedure DBCommit; safecall;
    procedure DBDisconnect; safecall;
    procedure DBRollBack; safecall;
    procedure DBSetDatabaseParams(const Login, Password, IPAddress, HostName,
      ClientVersion: WideString; out RetVal, SQLDialect: OleVariant);
      safecall;
    procedure DBStartTransaction; safecall;
    procedure DBCreateProvider(const ProviderName: WideString;
      out RetVal: OleVariant); safecall;
  public
   ViewClientInf:boolean;
  end;

implementation

uses viewsrvform,DynamicProvider;

{$R *.DFM}

class procedure TBuyTrRDM.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

procedure TBuyTrRDM.DBDisconnect;
begin
 IBDatabase.Close;
end;

procedure TBuyTrRDM.DBSetDatabaseParams(const Login, Password, IPAddress,
  HostName, ClientVersion: WideString; out RetVal, SQLDialect: OleVariant);
begin
 if not ServerForm.FormIBDatabase.Connected then
  begin
   ServerForm.FormIBDatabase.DatabaseName:=ServerForm.BasePath;
   ServerForm.FormIBDatabase.SQLDialect:=StrToIntDef(ServerForm.BaseSQLDialect,1);
   ServerForm.FormIBDatabase.Params.Clear;
   ServerForm.FormIBDatabase.Params.Add('lc_ctype='+ServerForm.BaseCharacterSet);
   ServerForm.FormIBDatabase.Params.Add('user_name='+Login);
   ServerForm.FormIBDatabase.Params.Add('password='+Password);
   ServerForm.FormIBDatabase.LoginPrompt:=false;
   try
    ServerForm.FormIBDatabase.Connected:=true;
   except on E:Exception do
    begin
     retval:=1;
     if pos('file',E.Message)>0 then
      retval:=2;
     if pos('user',E.Message)>0 then
      retval:=3;
     exit;
    end;
   end;
  end;

 if ServerForm.FormIBDatabase.Connected then
  begin
   IBDatabase.Connected:=false;
   IBDatabase.DatabaseName:=ServerForm.FormIBDatabase.DatabaseName;
   IBDatabase.SQLDialect:=ServerForm.FormIBDatabase.SQLDialect;
   IBDatabase.Params.Clear;
   IBDatabase.Params.Add('lc_ctype='+ServerForm.BaseCharacterSet);
   IBDatabase.Params.Add('user_name='+Login);
   IBDatabase.Params.Add('password='+Password);
   try
    IBDatabase.Connected:=true;
    AnyCommandIBQuery.Close;
    AnyCommandIBQuery.SQL.Clear;
    AnyCommandIBQuery.SQL.Add('select id,name from employee em where em.login=user');
    AnyCommandIBQuery.Open;
    ServerForm.UserListView.Items.BeginUpdate;
    with ServerForm.UserListView.Items.Add do
     begin
      Caption:=IntToStr(GetCurrentThreadID);
      SubItems.Add(IntToStr(0));
      SubItems.Add(UpperCase(Hostname));
      SubItems.Add(IPAddress);
      SubItems.Add(ClientVersion);
      SubItems.Add(AnyCommandIBQuery.FieldByName('name').AsString);
      SubItems.Add(DateTimeToStr(Date+Time));
      SubItems.Add(DateTimeToStr(Date+Time));
     end;
    ServerForm.UserListView.Items.EndUpdate;
    ViewClientInf:=true;
    retval:=0;
    SQLDialect:=IBDatabase.SQLDialect;
   except on E:Exception do
    begin
     retval:=1;
     if pos('file',E.Message)>0 then
      retval:=2;
     if pos('user',E.Message)>0 then
      retval:=3;
     ShowMessage(E.Message);
     exit;
    end;
   end;
  end;
end;

procedure TBuyTrRDM.DBStartTransaction;
begin
 InUpDelIBTransaction.StartTransaction;
end;

procedure TBuyTrRDM.DBCommit;
begin
 InUpDelIBTransaction.Commit;
end;

procedure TBuyTrRDM.DBRollBack;
begin
 InUpDelIBTransaction.Rollback;
end;

procedure TBuyTrRDM.IBQueryAfterOpen(DataSet: TDataSet);
begin
 if ViewClientInf then
  begin
   ServerForm.UserListView.Items.Item[ServerForm.UserListView.FindCaption(0,IntToStr(GetCurrentThreadID),false,true,false).Index].SubItems[6]:=DateTimeToStr(Date+Time);
  end;
end;

procedure TBuyTrRDM.RemoteDataModuleCreate(Sender: TObject);
begin
 ViewClientInf:=false;
 IBDatabase.Connected:=false;
end;

procedure TBuyTrRDM.RemoteDataModuleDestroy(Sender: TObject);
begin                                           
 if ViewClientInf then
  begin
   ServerForm.UserListView.Items.BeginUpdate;
   ServerForm.UserListView.Items.Delete(ServerForm.UserListView.FindCaption(0,IntToStr(GetCurrentThreadID),false,true,false).Index);
   ServerForm.UserListView.Items.EndUpdate;
  end;
end;

procedure TBuyTrRDM.DBCreateProvider(const ProviderName: WideString;
  out RetVal: OleVariant);
var IBQ:TIBQuery;
    DSP:TDataSetProvider;  
begin
 if FindDynamicIBQuery(self,IBQ,ProviderName+'IBQ',true,IBDatabase,ReadIBTransaction)
  and FindDynamicDataSetProvider(self,DSP,ProviderName+'DSP',true,IBQ) then
  RetVal:=0
 else
  RetVal:=1;

 IBQ.AfterOpen:=IBQueryAfterOpen;
end;

initialization
  TComponentFactory.Create(ComServer, TBuyTrRDM,Class_BuyTrRDM, ciMultiInstance, tmApartment);
end.
