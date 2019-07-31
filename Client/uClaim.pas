unit uClaim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxSplitter, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ExtCtrls, StdCtrls, Buttons, cxContainer, cxCurrencyEdit,
  cxDropDownEdit, cxCalendar, cxGroupBox, cxRadioGroup, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, DBClient,
  MConnect, SConnect, IBCustomDataSet, Menus, cxImageComboBox;
                
type
  TfClaim = class(TForm)
    DummySaleTopPanel: TPanel;
    ClaimcxGridDBTV: TcxGridDBTableView;
    ClaimcxGridLevel: TcxGridLevel;
    ClaimcxGrid: TcxGrid;
    BottomPanel: TPanel;
    cxSplitter: TcxSplitter;
    BottomLeftPanel: TPanel;
    Panel4: TPanel;
    cxSplitter2: TcxSplitter;
    Panel5: TPanel;
    CreateDetailBB: TBitBtn;
    RemoveFromDetailBB: TBitBtn;
    ClaimDetailcxGrid: TcxGrid;
    ClaimDetailcxGridDBTV: TcxGridDBTableView;
    ClaimDetailcxGridLevel: TcxGridLevel;
    ClaimSourcecxGrid: TcxGrid;
    ClaimSourcecxGridDBTV: TcxGridDBTableView;
    ClaimSourcecxGridLevel: TcxGridLevel;
    DummySaleLeftTopPanel: TPanel;
    Bevel7: TBevel;
    AddBB: TBitBtn;
    RemoveBB: TBitBtn;
    CenterTopPanel: TPanel;
    Label40: TLabel;
    Label41: TLabel;
    Label44: TLabel;
    Label42: TLabel;
    ContractorIDcxME: TcxMaskEdit;
    ContractorNamecxLCB: TcxLookupComboBox;
    TradeEmployeecxLCB: TcxLookupComboBox;
    DistributioncxLCB: TcxLookupComboBox;
    DummySaleRightTopPanel: TPanel;
    Bevel13: TBevel;
    RefreshSB: TSpeedButton;
    Bevel3: TBevel;
    Label9: TLabel;
    Label36: TLabel;
    PresentcxDE: TcxDateEdit;
    SaveBB: TBitBtn;
    BegincxDE: TcxDateEdit;
    EndcxDE: TcxDateEdit;
    CancelBB: TBitBtn;
    ClaimCDS: TClientDataSet;
    ClaimDS: TDataSource;
    ClaimSourceCDS: TClientDataSet;
    ClaimSourceDS: TDataSource;
    ClaimDetailCDS: TClientDataSet;
    ClaimDetailDS: TDataSource;
    TerminalcxLCB: TcxLookupComboBox;
    ClaimCDSCLAIMID: TIntegerField;
    ClaimCDSNUMBER: TStringField;
    ClaimCDSPRESENT: TDateTimeField;
    ClaimCDSCONTRACTORID: TIntegerField;
    ClaimCDSCONTRACTORNAME: TStringField;
    ClaimCDSDISTRIBUTIONID: TIntegerField;
    ClaimCDSDISTRIBUTIONADDRESS: TStringField;
    ClaimCDSTERMINALID: TIntegerField;
    ClaimCDSTERMINALNAME: TStringField;
    ClaimCDSISENTER: TSmallintField;
    ClaimCDSISENTERNAME: TStringField;
    ClaimcxGridDBTVCLAIMID: TcxGridDBColumn;
    ClaimcxGridDBTVCONTRACTORID: TcxGridDBColumn;
    ClaimcxGridDBTVCONTRACTORNAME: TcxGridDBColumn;
    ClaimcxGridDBTVDISTRIBUTIONID: TcxGridDBColumn;
    ClaimcxGridDBTVDISTRIBUTIONADDRESS: TcxGridDBColumn;
    ClaimcxGridDBTVNUMBER: TcxGridDBColumn;
    ClaimcxGridDBTVPRESENT: TcxGridDBColumn;
    ClaimcxGridDBTVTERMINALID: TcxGridDBColumn;
    ClaimcxGridDBTVTERMINALNAME: TcxGridDBColumn;
    ClaimcxGridDBTVISENTER: TcxGridDBColumn;
    ClaimcxGridDBTVISENTERNAME: TcxGridDBColumn;
    ClaimSourceCDSDOCID: TIntegerField;
    ClaimSourceCDSPRESENT: TDateTimeField;
    ClaimSourceCDSNUMBER: TStringField;
    ClaimSourceCDSCOUNTUNIT: TFloatField;
    ClaimSourceCDSSUMDOC: TFloatField;
    ClaimSourcecxGridDBTVDOCID: TcxGridDBColumn;
    ClaimSourcecxGridDBTVPRESENT: TcxGridDBColumn;
    ClaimSourcecxGridDBTVNUMBER: TcxGridDBColumn;
    ClaimSourcecxGridDBTVCOUNTUNIT: TcxGridDBColumn;
    ClaimSourcecxGridDBTVSUMDOC: TcxGridDBColumn;
    ClaimDetailCDSDOCID: TIntegerField;
    ClaimDetailCDSPRESENT: TDateTimeField;
    ClaimDetailCDSNUMBER: TStringField;
    ClaimDetailCDSCOUNTUNIT: TFloatField;
    ClaimDetailCDSSUMDOC: TFloatField;
    ClaimDetailCDSCLAIMDETAILID: TIntegerField;
    ClaimDetailcxGridDBTVCLAIMDETAILID: TcxGridDBColumn;
    ClaimDetailcxGridDBTVDOCID: TcxGridDBColumn;
    ClaimDetailcxGridDBTVPRESENT: TcxGridDBColumn;
    ClaimDetailcxGridDBTVNUMBER: TcxGridDBColumn;
    ClaimDetailcxGridDBTVCOUNTUNIT: TcxGridDBColumn;
    ClaimDetailcxGridDBTVSUMDOC: TcxGridDBColumn;
    ClaimMI: TPopupMenu;
    EnterMI: TMenuItem;
    PrintMI: TMenuItem;
    N3: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure AddBBClick(Sender: TObject);
    procedure RemoveBBClick(Sender: TObject);
    procedure CenterTopPanelResize(Sender: TObject);
    procedure ContractorIDcxMEEnter(Sender: TObject);
    procedure ContractorIDcxMEKeyPress(Sender: TObject; var Key: Char);
    procedure CancelBBClick(Sender: TObject);
    procedure SaveBBClick(Sender: TObject);
    procedure RefreshSBClick(Sender: TObject);
    procedure ContractorNamecxLCBKeyPress(Sender: TObject;
      var Key: Char);
    procedure PresentcxDEKeyPress(Sender: TObject; var Key: Char);
    procedure TradeEmployeecxLCBKeyPress(Sender: TObject;
      var Key: Char);
    procedure DistributioncxLCBKeyPress(Sender: TObject;
      var Key: Char);
    procedure DummySaleTypecxLCBKeyPress(Sender: TObject; var Key: Char);
    procedure ClaimCDSBeforeOpen(DataSet: TDataSet);
    procedure ClaimDSDataChange(Sender: TObject; Field: TField);
    procedure CreateDetailBBClick(Sender: TObject);
    procedure RemoveFromDetailBBClick(Sender: TObject);
    procedure DummySaleEndcxDEPropertiesChange(Sender: TObject);
    procedure DummySaleBegincxDEPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ContractorNamecxLCBPropertiesEditValueChanged(
      Sender: TObject);
    procedure TradeEmployeecxLCBPropertiesEditValueChanged(
      Sender: TObject);
    procedure ClaimSourceCDSBeforeOpen(DataSet: TDataSet);
    procedure ClaimDetailCDSBeforeOpen(DataSet: TDataSet);
    procedure ClaimMIPopup(Sender: TObject);
    procedure EnterMIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure EnableEditor(flag:boolean);
    procedure InsertDummyDetailSale;
  end;

var
  fClaim: TfClaim;

implementation

uses uMain,DynamicProvider;

{$R *.dfm}

procedure TfClaim.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
 fMain.FloatToBcd(self);
 
 RetVal:=1;
 CompName:='ClaimContractor';
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
    'select contractorid, contractorname '+
    'from buytrans_claimcontractor(:contractorid,:contractorname) '+
    'order by contractorname';
   ContractorNamecxLCB.Properties.ListSource:=DS;
   ContractorNamecxLCB.Properties.KeyFieldNames:='CONTRACTORID';
   ContractorNamecxLCB.Properties.ListFieldNames:='CONTRACTORNAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='ClaimTradeemployee';
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
    'select te.id, te.name, te.citypartid '+
    'from tradeemployee te '+
    'join firmtradeemployee fte on fte.tradeemployeeid = te.id and fte.enddate is null '+
    'join employeetote ett on ett.tradeemployeeid = te.id '+
    'where fte.firmid = :contractorid '+
    ' and ett.login like user '+
    'group by te.id, te.name,te.citypartid';
   TradeEmployeecxLCB.Properties.ListSource:=DS;
   TradeEmployeecxLCB.Properties.KeyFieldNames:='ID';
   TradeEmployeecxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='ClaimDistribution';
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
    'select * from buytrans_claimdistribution(:contractorid,:tradeemployeeid)';
   DistributioncxLCB.Properties.ListSource:=DS;
   DistributioncxLCB.Properties.KeyFieldNames:='DISTRIBUTIONID';
   DistributioncxLCB.Properties.ListFieldNames:='DISTRIBUTIONADDRESS';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='ClaimTerminal';
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
    'select t.id, t.name from terminal t '+
    'join employeetoterminal ett on ett.terminalid=t.id '+
    'join employee em on em.id=ett.employeeid '+
    'where em.login=user';
   TerminalcxLCB.Properties.ListSource:=DS;
   TerminalcxLCB.Properties.KeyFieldNames:='ID';
   TerminalcxLCB.Properties.ListFieldNames:='NAME';
   fMain.RefreshCDS(CDS);
  end;

 RetVal:=1;
 CompName:='Claim';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   ClaimCDS.CommandText:='select * from buytrans_claimview(:begindate,:enddate)';
   ClaimCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='ClaimSource';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   ClaimSourceCDS.CommandText:='select * from buytrans_claimsourceview(:claimid)';
   ClaimSourceCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='ClaimDetail';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   ClaimDetailCDS.CommandText:='select * from buytrans_claimdetailview(:claimid)';
   ClaimDetailCDS.RemoteServer:=fMain.SocketConnection;
  end;

 PresentcxDE.Date:=Date;
 BegincxDE.Date:=Date;
 EndcxDE.Date:=Date;
 RefreshSBClick(nil);
end;

procedure TfClaim.AddBBClick(Sender: TObject);
begin
 EnableEditor(true);
 SaveBB.Tag:=0;
 ContractorIDcxME.SetFocus;
end;


procedure TfClaim.EnableEditor(flag:boolean);
begin
 ContractorIDcxME.Clear;
 ContractorIDcxME.Enabled:=flag;

 TClientDataSet(ContractorNamecxLCB.Properties.ListSource.DataSet).Close;
 ContractorNamecxLCB.EditValue:=-1;
 ContractorNamecxLCB.Enabled:=flag;

 TClientDataSet(TradeEmployeecxLCB.Properties.ListSource.DataSet).Close;
 TradeEmployeecxLCB.EditValue:=-1;
 TradeEmployeecxLCB.Enabled:=flag;

 TClientDataSet(DistributioncxLCB.Properties.ListSource.DataSet).Close;
 DistributioncxLCB.EditValue:=-1;
 DistributioncxLCB.Enabled:=flag;

 TerminalcxLCB.EditValue:=-1;
 TerminalcxLCB.Enabled:=flag;

 PresentcxDE.Enabled:=flag;
 SaveBB.Enabled:=flag;
 CancelBB.Enabled:=flag;

 ClaimcxGrid.Enabled:=not flag;
 BottomPanel.Enabled:=not flag;

 BegincxDE.Enabled:=not flag;
 EndcxDE.Enabled:=not flag;
 RefreshSB.Enabled:=not flag;

 AddBB.Enabled:=not flag;
 RemoveBB.Enabled:=not flag;
end;

procedure TfClaim.RemoveBBClick(Sender: TObject);
var ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
begin
 if MessageDLG('Вы действительно хотите удалить накладную?', mtConfirmation,[mbYes,mbNo],0)<>mrYes then
  exit;

 with ClaimcxGridDBTV.DataController do
  begin
   BeginUpdate;
   for i:= 0 to GetSelectedCount - 1 do
    begin
     ARowIndex := GetSelectedRowIndex(I);
     ARowInfo := GetRowInfo(ARowIndex);
     if ARowInfo.Level < Groups.GroupingItemCount then
      Continue
     else
      with fMain do
       try
        SocketConnection.AppServer.DBStartTransaction;
        InUpDelCDS.Close;
        InUpDelCDS.CommandText:=
         'delete from claim where id='+
          IntToStr(Values[ARowInfo.RecordIndex, ClaimcxGridDBTVCLAIMID.Index]);
        InUpDelCDS.Execute;
        SocketConnection.AppServer.DBCommit;
       except on E: Exception do
        begin
         SocketConnection.AppServer.DBRollBack;
         MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
        end; //on
       end; //try
    end;//for  GetSelectedCount
   EndUpdate;
  end;//with cxGEDIdbTVOrders.DataController
 RefreshSBClick(nil);
end;

procedure TfClaim.CenterTopPanelResize(Sender: TObject);
begin
 ContractorNamecxLCB.Width:=CenterTopPanel.Width-ContractorNamecxLCB.Left-5;
 TradeEmployeecxLCB.Width:=CenterTopPanel.Width-TradeEmployeecxLCB.Left-5;
 DistributioncxLCB.Width:=CenterTopPanel.Width-DistributioncxLCB.Left-5;
end;

procedure TfClaim.ContractorIDcxMEEnter(Sender: TObject);
begin
 ContractorIDcxME.Clear;
 ContractorNamecxLCB.Clear;
end;

procedure TfClaim.ContractorIDcxMEKeyPress(Sender: TObject;
  var Key: Char);
var CDS:TclientDataSet;
begin
 if (Key=#27) then
  CancelBBClick(nil);

 if (Key=#13) and (ContractorIDcxME.Text='') then
  ContractorNamecxLCB.SetFocus;

 if ContractorIDcxME.Text='' then
  begin
   TClientDataSet(ContractorNamecxLCB.Properties.ListSource.DataSet).Close;
   exit;
  end;

 if Key=#13 then
  begin
   CDS:=TClientDataSet(ContractorNamecxLCB.Properties.ListSource.DataSet);
   CDS.Close;
   CDS.Params[0].AsInteger:=StrToIntDef(ContractorIDcxME.Text,0);
   CDS.Params[1].Clear;
   CDS.Open;

   if CDS.IsEmpty then
    MessageDLG('Клиент с таким кодом отсутствует',mtError,[mbOK],0)
   else
    ContractorNamecxLCB.EditValue:=CDS.FieldByName('CONTRACTORID').AsInteger;
  end;//if Key=#13 then}
end;

procedure TfClaim.CancelBBClick(Sender: TObject);
begin
  EnableEditor(false);
  AddBB.SetFocus;
end;

procedure TfClaim.SaveBBClick(Sender: TObject);
var DummySaleid:integer;
begin
 if DistributioncxLCB.Text='' then
  begin
   MessageDLG('Не выбран адрес ТТ.',mtError,[mbOK],0);
   exit;
  end;

 if TerminalcxLCB.Text='' then
  begin
   MessageDLG('Не выбран терминал, с которого выписывается накладная.',mtError,[mbOK],0);
   exit;
  end;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   if (SaveBB.Tag=0) then
    InUpDelCDS.CommandText:=
     'insert into claim(distributionid,tradeemployeeid,present,terminalid,isenter) '+
     'values('+IntToStr(DistributioncxLCB.EditValue)+','+
            IntToStr(TradeEmployeecxLCB.EditValue)+','+
            #39+DateToStr(PresentcxDE.Date)+#39+','+
            IntToStr(TerminalcxLCB.EditValue)+',0)';
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E: Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
    exit;
   end; //on
  end; //try
 BegincxDE.Date:=PresentcxDE.Date;
 EndcxDE.Date:=PresentcxDE.Date;
 RefreshSBClick(nil);
 EnableEditor(false);
 ClaimCDS.Last;
 AddBB.SetFocus;
end;

procedure TfClaim.RefreshSBClick(Sender: TObject);
begin
 fMain.RefreshCDS(ClaimCDS);
end;

procedure TfClaim.ContractorNamecxLCBKeyPress(Sender: TObject;
  var Key: Char);
var CDS:TClientDataSet;
begin
 if (Key=#27) then
  CancelBBClick(nil);

 if ContractorNamecxLCB.text='' then
  exit;

 if (Key=#13) then
  begin
   CDS:=TClientDataSet(ContractorNamecxLCB.Properties.ListSource.DataSet);
   CDS.Close;
   CDS.Params[0].Clear;
   CDS.Params[1].AsString:=AnsiUpperCase(ContractorNamecxLCB.Text);
   CDS.Open;
   if CDS.IsEmpty then
    begin
     MessageDLG('Не найдено ни одного клиента, удовлетворяющего заданным критериям поиска ',mtError,[mbOK],0);
     exit;
    end//if
   else
    begin
     ContractorNamecxLCB.EditValue:=CDS.FieldByName('CONTRACTORID').AsInteger;
     ContractorNamecxLCB.Text:=CDS.FieldByName('CONTRACTORNAME').AsString;
    end;//else
  end;//if }
end;

procedure TfClaim.PresentcxDEKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (Key=#27) then
  CancelBBClick(nil);

 if (Key=#13) then
  TerminalcxLCB.SetFocus;
end;

procedure TfClaim.TradeEmployeecxLCBKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (Key=#27) then
  CancelBBClick(nil);

 if (Key=#13) then
  DistributioncxLCB.SetFocus;
end;

procedure TfClaim.DistributioncxLCBKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (Key=#27) then
  CancelBBClick(nil);

 if Key=#13 then
  PresentcxDE.SetFocus;
end;

procedure TfClaim.DummySaleTypecxLCBKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (Key=#13) then
  SaveBB.SetFocus;
  
 if (Key=#27) then
  CancelBBClick(nil);
end;

procedure TfClaim.ClaimCDSBeforeOpen(DataSet: TDataSet);
begin
 ClaimCDS.Params[0].AsDateTime:=BegincxDE.Date;
 ClaimCDS.Params[1].AsDateTime:=EndcxDE.Date;
end;

procedure TfClaim.ClaimDSDataChange(Sender: TObject;
  Field: TField);
var CDS:TClientDataSet;
begin
 if not ClaimDS.DataSet.IsEmpty then
  begin
   fMain.RefreshCDS(ClaimSourceCDS);
   fMain.RefreshCDS(ClaimDetailCDS);
   
   RemoveBB.Enabled:=(ClaimCDSISENTER.AsInteger=0);
   CreateDetailBB.Enabled:=(ClaimCDSISENTER.AsInteger=0) and (not ClaimSourceCDS.IsEmpty);
   RemoveFromDetailBB.Enabled:=(ClaimCDSISENTER.AsInteger=0) and (not ClaimDetailCDS.IsEmpty);
  end
 else
  begin
   ClaimSourceCDS.Close;
   ClaimDetailCDS.Close;
  end;
end;

procedure TfClaim.CreateDetailBBClick(Sender: TObject);
var ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
begin
 if ClaimSourcecxGridDBTV.DataController.GetSelectedCount=0 then
  begin
   MessageDLG('Нет выбранных записей.',mtError,[mbOK],0);
   exit;
  end;

 with ClaimSourcecxGridDBTV.DataController do
  begin
   BeginUpdate;
   for i:= 0 to GetSelectedCount - 1 do
    begin
     ARowIndex := GetSelectedRowIndex(I);
     ARowInfo := GetRowInfo(ARowIndex);
     if ARowInfo.Level < Groups.GroupingItemCount then
      Continue
     else
      with fMain do
       try
        SocketConnection.AppServer.DBStartTransaction;
        InUpDelCDS.Close;
        InUpDelCDS.CommandText:=
         'insert into claimdetail(claimid,docid,present,number,countunit,sumdoc) '+
         'values('+ClaimSourceCDS.Params[0].AsString+','+
                   IntToStr(Values[ARowInfo.RecordIndex, ClaimSourcecxGridDBTVDOCID.Index])+','+
                   #39+DateToStr(Values[ARowInfo.RecordIndex, ClaimSourcecxGridDBTVPRESENT.Index])+#39+','+
                   #39+Values[ARowInfo.RecordIndex, ClaimSourcecxGridDBTVNUMBER.Index]+#39+','+
                   FloatToStr(Values[ARowInfo.RecordIndex, ClaimSourcecxGridDBTVCOUNTUNIT.Index])+','+
                   FloatToStr(Values[ARowInfo.RecordIndex, ClaimSourcecxGridDBTVSUMDOC.Index])+')';
        InUpDelCDS.Execute;

        SocketConnection.AppServer.DBCommit;
       except on E:Exception do
        begin
         SocketConnection.AppServer.DBRollBack;
         MessageDLG(E.Message,mtError,[mbOK],0);
         break;
        end;//on
       end;//try..except
    end;//for  GetSelectedCount
   EndUpdate;
  end;//with cxGEDIdbTVOrders.DataController}
 RefreshSBClick(nil);
end;

procedure TfClaim.RemoveFromDetailBBClick(Sender: TObject);
var ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
begin
 if ClaimDetailcxGridDBTV.DataController.GetSelectedCount=0 then
  begin
   MessageDLG('Нет выбранных записей.',mtError,[mbOK],0);
   exit;
  end;

 with ClaimDetailcxGridDBTV.DataController do
  begin
   BeginUpdate;
   for i:= 0 to GetSelectedCount - 1 do
    begin
     ARowIndex := GetSelectedRowIndex(I);
     ARowInfo := GetRowInfo(ARowIndex);
     if ARowInfo.Level < Groups.GroupingItemCount then
      Continue
     else
      with fMain do
       try
        SocketConnection.AppServer.DBStartTransaction;
        InUpDelCDS.Close;
        InUpDelCDS.CommandText:=
         'delete from claimdetail cd '+
         'where cd.id='+IntToStr(Values[ARowInfo.RecordIndex, ClaimDetailCDSCLAIMDETAILID.Index]);
        InUpDelCDS.Execute;
        SocketConnection.AppServer.DBCommit;
       except on E: Exception do
        begin
         SocketConnection.AppServer.DBRollBack;
         MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
        end; //on
       end; //try
    end;//for  GetSelectedCount
   EndUpdate;
  end;//with cxGEDIdbTVOrders.DataController
 RefreshSBClick(nil);
end;

procedure TfClaim.InsertDummyDetailSale;
begin
end;

procedure TfClaim.DummySaleEndcxDEPropertiesChange(Sender: TObject);
begin
 if EndcxDE.Date<BegincxDE.Date then
  BegincxDE.Date:=EndcxDE.Date;
end;

procedure TfClaim.DummySaleBegincxDEPropertiesChange(
  Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  EndcxDE.Date:=BegincxDE.Date;
end;

procedure TfClaim.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfClaim.ContractorNamecxLCBPropertiesEditValueChanged(
  Sender: TObject);
var CDS:TClientDataSet;
begin
  if (ContractorNamecxLCB.Text='') or (ContractorNamecxLCB.EditValue=-1) or (ContractorNamecxLCB.EditValue=null) then
   exit;
  ContractorIDcxME.EditValue:=ContractorNamecxLCB.EditValue;
  try
   CDS:=TClientDataSet(TradeEmployeecxLCB.Properties.ListSource.DataSet);
   CDS.Close;
   CDS.Params[0].AsInteger:=ContractorNamecxLCB.EditValue;
   CDS.Open;

   if not CDS.IsEmpty then
    begin
     TradeEmployeecxLCB.EditValue:=CDS.FieldByName('ID').AsInteger;
     TradeEmployeecxLCBPropertiesEditValueChanged(nil);
    end;
   DistributioncxLCB.EditValue:=-1;
  except
   ;
  end;//try..except}
end;

procedure TfClaim.TradeEmployeecxLCBPropertiesEditValueChanged(
  Sender: TObject);
var CDS:TClientDataSet;
begin
 if DistributioncxLCB.Enabled and ContractorIDcxME.Enabled and TradeEmployeecxLCB.Enabled then
  begin
   CDS:=TClientDataSet(DistributioncxLCB.Properties.ListSource.DataSet);
   CDS.Close;
   CDS.Params[0].AsInteger:=ContractorIDcxME.EditValue;
   CDS.Params[1].AsInteger:=TradeEmployeecxLCB.EditValue;
   CDS.Open;
  end;
end;

procedure TfClaim.ClaimSourceCDSBeforeOpen(DataSet: TDataSet);
begin
 ClaimSourceCDS.Params[0].AsInteger:=ClaimCDSCLAIMID.AsInteger;
end;

procedure TfClaim.ClaimDetailCDSBeforeOpen(DataSet: TDataSet);
begin
 ClaimDetailCDS.Params[0].AsInteger:=ClaimCDSCLAIMID.AsInteger;
end;

procedure TfClaim.ClaimMIPopup(Sender: TObject);
begin
 EnterMI.Enabled:=(not ClaimDetailCDS.IsEmpty);
 
 if ClaimCDSISENTER.AsInteger=0 then
  EnterMI.Caption:='Провести'
 else
  EnterMI.Caption:='Отменить проведение';

 PrintMI.Enabled:=(ClaimCDSISENTER.AsInteger=1);
end;

procedure TfClaim.EnterMIClick(Sender: TObject);
begin
 with fMain do
 try
  SocketConnection.AppServer.DBStartTransaction;

  InUpDelCDS.Close;
  InUpDelCDS.CommandText:=
   'update claim set isenter=abs(isenter-1) where id='+ClaimCDSCLAIMID.AsString;
  InUpDelCDS.Execute;
  SocketConnection.AppServer.DBCommit;
 except on E: Exception do
  begin
   SocketConnection.AppServer.DBRollBack;
   MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
  end; //on
 end; //try
 RefreshSBClick(nil);
end;

end.
