unit uDeltaDocFact;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, StdCtrls, Buttons, RXCtrls, cxSplitter, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, cxCurrencyEdit, DBClient, Menus,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,cxExportGrid4Link;

type
  TfDeltaDocFact = class(TForm)
    BuyDeltaDocFactTopPanel: TPanel;
    BuycxGridDBTV: TcxGridDBTableView;
    BuycxGridLevel: TcxGridLevel;
    BuycxGrid: TcxGrid;
    BuyDeltaDocFactcxGridDBTV: TcxGridDBTableView;
    BuyDeltaDocFactcxGridLevel: TcxGridLevel;
    BuyDeltaDocFactcxGrid: TcxGrid;
    BuyDeltaDocFactcxSplitter: TcxSplitter;
    Panel20: TPanel;
    RxLabel4: TRxLabel;
    RefreshBB: TBitBtn;
    BegincxDE: TcxDateEdit;
    EndcxDE: TcxDateEdit;
    CreateBB: TBitBtn;
    SaveBB: TBitBtn;
    SumcxCE: TcxCurrencyEdit;
    CancelBB: TBitBtn;
    BuyCDS: TClientDataSet;
    BuyDeltaDocFactCDS: TClientDataSet;
    BuyCDSBUYID: TIntegerField;
    BuyCDSNUMBERDOC: TStringField;
    BuyCDSINPUTDATE: TDateTimeField;
    BuyCDSWHENINSERT: TDateTimeField;
    BuyCDSFIRMID: TIntegerField;
    BuyCDSFIRMNAME: TStringField;
    BuyCDSDISTRIBUTIONID: TIntegerField;
    BuyCDSADDRESS: TStringField;
    BuyCDSBUYDOCSUM: TFloatField;
    BuyCDSBUYFACTSUM: TFloatField;
    BuyCDSBUYDELTADOCFACTSUM: TFloatField;
    BuyDS: TDataSource;
    BuycxGridDBTVBUYID: TcxGridDBColumn;
    BuycxGridDBTVNUMBERDOC: TcxGridDBColumn;
    BuycxGridDBTVINPUTDATE: TcxGridDBColumn;
    BuycxGridDBTVWHENINSERT: TcxGridDBColumn;
    BuycxGridDBTVFIRMID: TcxGridDBColumn;
    BuycxGridDBTVFIRMNAME: TcxGridDBColumn;
    BuycxGridDBTVDISTRIBUTIONID: TcxGridDBColumn;
    BuycxGridDBTVADDRESS: TcxGridDBColumn;
    BuycxGridDBTVBUYDOCSUM: TcxGridDBColumn;
    BuycxGridDBTVBUYFACTSUM: TcxGridDBColumn;
    BuycxGridDBTVBUYDELTADOCFACTSUM: TcxGridDBColumn;
    BuyDeltaDocFactDS: TDataSource;
    BuyDeltaDocFactCDSBUYDELTADOCFACTID: TIntegerField;
    BuyDeltaDocFactCDSNOTWIREDNUMBER: TStringField;
    BuyDeltaDocFactCDSPRESENT: TDateTimeField;
    BuyDeltaDocFactCDSFIRMID: TIntegerField;
    BuyDeltaDocFactCDSFIRMNAME: TStringField;
    BuyDeltaDocFactCDSDISTRIBUTIONID: TIntegerField;
    BuyDeltaDocFactCDSADDRESS: TStringField;
    BuyDeltaDocFactCDSSUMDOC: TFloatField;
    BuyDeltaDocFactcxGridDBTVBUYDELTADOCFACTID: TcxGridDBColumn;
    BuyDeltaDocFactcxGridDBTVNOTWIREDNUMBER: TcxGridDBColumn;
    BuyDeltaDocFactcxGridDBTVPRESENT: TcxGridDBColumn;
    BuyDeltaDocFactcxGridDBTVFIRMID: TcxGridDBColumn;
    BuyDeltaDocFactcxGridDBTVFIRMNAME: TcxGridDBColumn;
    BuyDeltaDocFactcxGridDBTVDISTRIBUTIONID: TcxGridDBColumn;
    BuyDeltaDocFactcxGridDBTVADDRESS: TcxGridDBColumn;
    BuyDeltaDocFactcxGridDBTVSUMDOC: TcxGridDBColumn;
    BuyDeltaDocFactPM: TPopupMenu;
    DeleteMI: TMenuItem;
    BuyPM: TPopupMenu;
    RemoveFromList: TMenuItem;
    AddToList: TMenuItem;
    BuyCDSNOTINLIST: TStringField;
    BuycxGridDBTVNOTINLIST: TcxGridDBColumn;
    BudgetItemcxLCB: TcxLookupComboBox;
    BuyDeltaDocFactCDSBUDGETITEMNAME: TStringField;
    BuyDeltaDocFactcxGridDBTVBUDGETITEMNAME: TcxGridDBColumn;
    ExportToExcelMI: TMenuItem;
    N1: TMenuItem;
    ExportExcelMI: TMenuItem;
    BuyCDSNUMBERCF: TStringField;
    BuycxGridDBTVNUMBERCF: TcxGridDBColumn;
    BuyDeltaDocFactCDSNUMBERCF: TStringField;
    BuyDeltaDocFactcxGridDBTVNUMBERCF: TcxGridDBColumn;
    BuyDeltaDocFactCDSSUMDOCWITHOUTNDS: TFloatField;
    BuyDeltaDocFactcxGridDBTVSUMDOCWITHOUTNDS: TcxGridDBColumn;
    BuyCDSSIGNFLAG: TIntegerField;
    BuycxGridDBTVSIGNFLAG: TcxGridDBColumn;
    BuyDeltaDocFactCDSSIGNFLAG: TIntegerField;
    BuyDeltaDocFactcxGridDBTVSIGNFLAG: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RefreshBBClick(Sender: TObject);
    procedure CreateBBClick(Sender: TObject);
    procedure SaveBBClick(Sender: TObject);
    procedure CancelBBClick(Sender: TObject);
    procedure BuyDeltaDocFactCDSBeforeOpen(DataSet: TDataSet);
    procedure BuyDeltaDocFactBegincxDEPropertiesChange(Sender: TObject);
    procedure BuyDeltaDocFactEndcxDEPropertiesChange(Sender: TObject);
    procedure DeleteMIClick(Sender: TObject);
    procedure BuyDeltaDocFactPMPopup(Sender: TObject);
    procedure RemoveFromListClick(Sender: TObject);
    procedure ExportToExcelMIClick(Sender: TObject);
    procedure ExportExcelMIClick(Sender: TObject);
  private
    { Private declarations }
  public
   procedure CreateDocEnablePanel(flag:boolean);
  end;

var
  fDeltaDocFact: TfDeltaDocFact;

implementation

uses uMain,DynamicProvider;

{$R *.dfm}

procedure TfDeltaDocFact.FormResize(Sender: TObject);
begin
 BuyDeltaDocFactcxGrid.Width:=Round(Self.Width/2);
end;

procedure TfDeltaDocFact.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
 fMain.FloatToBcd(self);
 
 RetVal:=1;
 CompName:='DeltaDocFactBuy';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   BuyCDS.ProviderName:=CompName+'DSP';
   BuyCDS.RemoteServer:=fMain.SocketConnection;
   BuyCDS.CommandText:=
    'select * from buytrans_deltadocfactbuy';
  end;

 RetVal:=1;
 CompName:='DeltaDocFact';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   BuyDeltaDocFactCDS.ProviderName:=CompName+'DSP';
   BuyDeltaDocFactCDS.RemoteServer:=fMain.SocketConnection;
   BuyDeltaDocFactCDS.CommandText:=
    'select * from buytrans_deltadocfact(:begindate,:enddate)';
  end;

 RetVal:=1;
 CompName:='BDDFBudgetItem'; //ПОИСК ТОВАРА
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
    'select bi.id budgetitemid,bi.code||'+#39+'//'+#39+'||bi.name budgetitemname '+
    'from budgetitem bi '+
    'where bi.isleaf=1 '+
    ' and bi.typeitem=2 '+
    'order by bi.orderby';
   BudgetItemcxLCB.Properties.ListSource:=DS;
   BudgetItemcxLCB.Properties.KeyFieldNames:='BUDGETITEMID';
   BudgetItemcxLCB.Properties.ListFieldNames:='BUDGETITEMNAME';
  end;

 try
  BuycxGridDBTV.BeginUpdate;
  with BuycxGridDBTV.DataController.Filter do
   begin
    Root.AddItem(BuycxGridDBTV.
     Columns[BuycxGridDBTV.GetColumnByFieldName('NOTINLIST').Index],foEqual, null,'пусто');
    Active:=true;
   end
 finally
  BuycxGridDBTV.EndUpdate;
 end;

 BegincxDE.Date:=Date;
 EndcxDE.Date:=Date;
 CreateDocEnablePanel(false);
 FormResize(self);
 RefreshBBClick(self)
end;

procedure TfDeltaDocFact.CreateDocEnablePanel(flag:boolean);
begin
 CreateBB.Enabled:=not flag;
 BegincxDE.Enabled:=not flag;
 EndcxDE.Enabled:=not flag;
 RefreshBB.Enabled:=not flag;
 BuycxGrid.Enabled:=not flag;
 BuyDeltaDocFactcxGrid.Enabled:=not flag;

 SumcxCE.Enabled:=flag;
 BudgetItemcxLCB.Enabled:=flag;
 SaveBB.Enabled:=flag;
 CancelBB.Enabled:=flag;
 SumcxCE.Clear;
end;

procedure TfDeltaDocFact.RefreshBBClick(Sender: TObject);
begin
 fMain.RefreshCDS(BuyCDS);
 fMain.RefreshCDS(BuyDeltaDocFactCDS);
 fMain.RefreshCDS(TClientDataSet(BudgetItemcxLCB.Properties.ListSource.DataSet));
end;

procedure TfDeltaDocFact.CreateBBClick(Sender: TObject);
begin
 if BuycxGridDBTV.DataController.GetSelectedCount<>1 then
  begin
   MessageDLG('Необходимо выбрать только одну запись.',mtInformation,[mbOK],0);
   exit;
  end;
 CreateDocEnablePanel(true);
 SumcxCE.Value:=BuyCDSBUYDELTADOCFACTSUM.Value;
 if ((BudgetItemcxLCB.Text='') and TClientDataSet(BudgetItemcxLCB.Properties.ListSource.DataSet).Locate('BUDGETITEMID',772,[])) then
  BudgetItemcxLCB.EditValue:=TClientDataSet(BudgetItemcxLCB.Properties.ListSource.DataSet).FieldByName('BUDGETITEMID').AsInteger;
end;

procedure TfDeltaDocFact.SaveBBClick(Sender: TObject);
begin
 if (BudgetItemcxLCB.Text='') or (SumcxCE.Text='') then
  begin
   MessageDLG('Один из обязательных параметров не заполнен.',mtError,[mbOK],0);
   exit;
  end;

 with fMain do
  begin
   try
    SocketConnection.AppServer.DBStartTransaction;
    InUpDelCDS.Close;
    InUpDelCDS.CommandText:=
     'execute procedure buytrans_deltadocfactinsert('+BuyCDSBUYID.AsString+','+
               FloatToStr(SumcxCE.Value)+','+
               IntToStr(BudgetItemcxLCB.EditValue)+','+
               BuyCDSSIGNFLAG.AsString+')';
    InUpDelCDS.Execute;
    SocketConnection.AppServer.DBCommit;
   except on E:Exception do
    begin
     SocketConnection.AppServer.DBRollBack;
     MessageDLG('Ошибка:'+E.Message+#10#13+InUpDelCDS.CommandText,mtError,[mbOK],0);
     exit;
    end;//on
   end;//try..excep
   BegincxDE.Date:=BuyCDSINPUTDATE.AsDateTime;
   EndcxDE.Date:=BuyCDSINPUTDATE.AsDateTime;
   RefreshBBClick(self);
   CreateDocEnablePanel(false);
  end;
end;

procedure TfDeltaDocFact.CancelBBClick(Sender: TObject);
begin
 CreateDocEnablePanel(false);
end;

procedure TfDeltaDocFact.BuyDeltaDocFactCDSBeforeOpen(
  DataSet: TDataSet);
begin
 BuyDeltaDocFactCDS.Params[0].AsDateTime:=BegincxDE.Date;
 BuyDeltaDocFactCDS.Params[1].AsDateTime:=EndcxDE.Date;
end;

procedure TfDeltaDocFact.BuyDeltaDocFactBegincxDEPropertiesChange(
  Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  EndcxDE.Date:=BegincxDE.Date;
end;

procedure TfDeltaDocFact.BuyDeltaDocFactEndcxDEPropertiesChange(
  Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  BegincxDE.Date:=EndcxDE.Date;
end;

procedure TfDeltaDocFact.DeleteMIClick(Sender: TObject);
begin
 if MessageDLG('Удалить документ?',mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
  exit;
 with fMain do
  begin
   try
    SocketConnection.AppServer.DBStartTransaction;
    InUpDelCDS.Close;
    InUpDelCDS.CommandText:=
     'delete from buydeltadocfact where id='+BuyDeltaDocFactCDSBUYDELTADOCFACTID.AsString;
    InUpDelCDS.Execute;
    SocketConnection.AppServer.DBCommit;
   except on E:Exception do
    begin
     SocketConnection.AppServer.DBRollBack;
     MessageDLG('Ошибка:'+E.Message+#10#13+InUpDelCDS.CommandText,mtError,[mbOK],0);
     exit;
    end;//on
   end;//try..excep
   RefreshBBClick(self);
   CreateDocEnablePanel(false);
  end;
end;

procedure TfDeltaDocFact.BuyDeltaDocFactPMPopup(Sender: TObject);
begin
 DeleteMI.Enabled:=(BuyDeltaDocFactCDS.RecordCount>0);
end;

procedure TfDeltaDocFact.RemoveFromListClick(Sender: TObject);
var i:integer;
    ARowIndex: Integer;
    ARowInfo: TcxRowInfo;
begin
 if MessageDLG('Вы действительно хотите убрать из списка выбранные записи?',mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
  exit;

 with BuycxGridDBTV.DataController do
  begin
   BeginUpdate;
   try
    for i:=0 to GetSelectedCount-1 do
     begin
      ARowIndex := GetSelectedRowIndex(i);
      ARowInfo := GetRowInfo(ARowIndex);
      if ARowInfo.Level < Groups.GroupingItemCount then
       Continue
      else
       begin
        fMain.SocketConnection.AppServer.DBStartTransaction;
        try
         fMain.InUpDelCDS.Close;
         if TComponent(Sender).Tag=0 then
          fMain.InUpDelCDS.CommandText:=
           'insert into buydeltadocfactex(buyid,signflag) '+
           'values ('+IntToStr(Values[ARowInfo.RecordIndex, BuycxGridDBTVBUYID.Index])+','+
                      IntToStr(Values[ARowInfo.RecordIndex, BuycxGridDBTVSIGNFLAG.Index])+')';

         if TComponent(Sender).Tag=1 then
          fMain.InUpDelCDS.CommandText:=
          'delete from buydeltadocfactex where buyid='+
           IntToStr(Values[ARowInfo.RecordIndex, BuycxGridDBTVBUYID.Index]);

         fMain.InUpDelCDS.Execute;
         fMain.SocketConnection.AppServer.DBCommit;
        except on E:Exception do
         begin
          fMain.SocketConnection.AppServer.DBRollBack;
          MessageDLG(e.Message,mtError,[mbOK],0);
         end;//on
        end;//try..except
       end;
     end;//for  GetSelectedCount
   finally
    EndUpdate;
    ClearSelection;
    CreateDocEnablePanel(false);
    RefreshBBClick(self);
   end;
  end;//with cxGEDIdbTVOrders.DataController
end;

procedure TfDeltaDocFact.ExportToExcelMIClick(Sender: TObject);
begin
 with fMain.SaveDialog do
  begin
   DefaultExt := 'xls';
   Filter := 'Microsoft Excel 2000 (*.xls)|*.xls';
   FileName := 'Приходные накладные.xls';
   if Execute then
    ExportGrid4ToExcel(FileName,BuyDeltaDocFactcxGrid);
  end;
end;

procedure TfDeltaDocFact.ExportExcelMIClick(Sender: TObject);
begin
 with fMain.SaveDialog do
  begin
   DefaultExt := 'xls';
   Filter := 'Microsoft Excel 2000 (*.xls)|*.xls';
   FileName := 'Приходные накладные.xls';
   if Execute then
    ExportGrid4ToExcel(FileName,BuycxGrid);
  end;
end;

end.
