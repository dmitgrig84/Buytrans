unit uBuyTransTerm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DB, DBClient;

type
  TfBuyTransTerm = class(TForm)
    BuyAddButtonPanel: TPanel;
    ApplayBB: TBitBtn;
    CancelBB: TBitBtn;
    NewbuyStorageLabel: TLabel;
    StoragecxLCB: TcxLookupComboBox;
    Label1: TLabel;
    SalecxLCB: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure StoragecxLCBPropertiesEditValueChanged(Sender: TObject);
    procedure ApplayBBClick(Sender: TObject);
    procedure SalecxLCBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  fBuyTransTerm: TfBuyTransTerm;

implementation

uses DynamicProvider, uMain;

{$R *.dfm}

procedure TfBuyTransTerm.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
 RetVal:=1;
 CompName:='BuyTransTermStorage';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (FindDynamicClientDataSet(self,CDS,CompName+'CDS',true,fMain.SocketConnection,CompName+'DSP')
  and FindDynamicDataSource(self,DS,CompName+'DS',true,CDS) and RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   CDS.CommandText:='select * from buytrans_buytranstermstorage(:operationid,:operationtypeid)';
   StoragecxLCB.Properties.ListSource:=DS;
   StoragecxLCB.Properties.KeyFieldNames:='ID';
   StoragecxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='BuyTransTermSale';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (FindDynamicClientDataSet(self,CDS,CompName+'CDS',true,fMain.SocketConnection,CompName+'DSP')
  and FindDynamicDataSource(self,DS,CompName+'DS',true,CDS) and RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   CDS.CommandText:=
    'select * from buytrans_buytranstermsale(:storageid)';
   SalecxLCB.Properties.ListSource:=DS;
   SalecxLCB.Properties.KeyFieldNames:='SALEID';
   SalecxLCB.Properties.ListFieldNames:='SQNNO;PRESENT';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;
end;

procedure TfBuyTransTerm.FormActivate(Sender: TObject);
var operationid,operationtypeid:integer;
begin
 operationtypeid:=Self.Tag;
 operationid:=Self.ApplayBB.Tag;

 (TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet)).Params[0].AsInteger:=operationid;
 (TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet)).Params[1].AsInteger:=operationtypeid;

 fMain.RefreshCDS(TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet));
 SalecxLCB.EditValue:=-1;
 SalecxLCB.Enabled:=(Self.Tag=0);
 if (Self.Tag=0) then
  begin
   if TClientDataSet(SalecxLCB.Properties.ListSource.DataSet).Active then
    fMain.RefreshCDS(TClientDataSet(SalecxLCB.Properties.ListSource.DataSet));
  end
end;

procedure TfBuyTransTerm.StoragecxLCBPropertiesEditValueChanged(
  Sender: TObject);
begin
 if (StoragecxLCB.EditValue<>null) and (StoragecxLCB.EditValue>0) then
  begin
   TClientDataSet(SalecxLCB.Properties.ListSource.DataSet).Params[0].AsInteger:=StoragecxLCB.EditValue;
   fMain.RefreshCDS(TClientDataSet(SalecxLCB.Properties.ListSource.DataSet));
  end
 else
  TClientDataSet(SalecxLCB.Properties.ListSource.DataSet).Close;
end;

procedure TfBuyTransTerm.ApplayBBClick(Sender: TObject);
var retvalue:string;
begin
 if StoragecxLCB.Text='' then
  exit;

 if ((SalecxLCB.Text='') and (Self.Tag=0)) then
  exit;

 if MessageDlg('Вы уверенны в создании накладной?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;

   if (Self.Tag=0) then
    InUpDelCDS.CommandText:=
     'select * from buytrans_buytranstermcreate('+
        IntToStr(StoragecxLCB.EditValue)+','+
        IntToStr(SalecxLCB.EditValue)+',null)';

   if (Self.Tag=1) then
    InUpDelCDS.CommandText:=
     'select * from buytrans_transorgcreate('+
      IntToStr(Self.ApplayBB.Tag)+','+
      IntToStr(StoragecxLCB.EditValue)+')';

   if (Self.Tag=2) then
    InUpDelCDS.CommandText:=
     'select retvalue from buytrans_transsalecreate('+
      IntToStr(Self.ApplayBB.Tag)+','+
      IntToStr(StoragecxLCB.EditValue)+')';

   InUpDelCDS.Open;
   retvalue:=InUpDelCDS.Fields[0].AsString;
   SocketConnection.AppServer.DBCommit;
   if (Self.Tag=2) then
    MessageDlg(retvalue,mtInformation,[mbOk],0);
   ModalResult:=mrOk;
   Self.Close;
  except on E: Exception do
   begin
    SocketConnection.AppServer.DBRollback;
    MessageDlg('Ошибка добавления накладной!' + #13+ ' ' + E.Message,mtError,[mbOk],0);
    exit;
   end; //on
  end; //try..except
end;

procedure TfBuyTransTerm.SalecxLCBPropertiesEditValueChanged(
  Sender: TObject);
begin
 if (SalecxLCB.EditValue<>null) and (SalecxLCB.EditValue>0) then
  TClientDataSet(SalecxLCB.Properties.ListSource.DataSet).Locate('SALEID',SalecxLCB.EditValue,[]);
end;

end.



