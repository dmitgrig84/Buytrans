unit uRemoving;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCalendar, cxTextEdit, cxMaskEdit, cxCheckBox, ExtCtrls, StdCtrls,
  Buttons, DBClient, Menus, frxClass, frxDBSet, cxCurrencyEdit, cxExportGrid4Link;

type
  TfRemoving = class(TForm)
    TopPanel: TPanel;
    DrinkIDFiltercxME: TcxMaskEdit;
    PresentFiltercxDE: TcxDateEdit;
    StorageFiltercxLCB: TcxLookupComboBox;
    RemovingcxGrid: TcxGrid;
    RemovingcxGridDBTV: TcxGridDBTableView;
    RemovingcxGridLevel: TcxGridLevel;
    RemovingCDS: TClientDataSet;
    RemovingDS: TDataSource;
    RightPanel: TPanel;
    RefreshBB: TBitBtn;
    RemovingCDSREMOVINGID: TIntegerField;
    RemovingCDSSTORAGEID: TIntegerField;
    RemovingCDSSTORAGENAME: TStringField;
    RemovingCDSDRINKID: TIntegerField;
    RemovingCDSDRINKNAME: TStringField;
    RemovingCDSDRINKINDID: TIntegerField;
    RemovingCDSPRESENT: TDateTimeField;
    RemovingCDSCOMMENT: TStringField;
    RemovingCDSREMOVINGTYPEID: TIntegerField;
    RemovingCDSREMOVINGTYPENAME: TStringField;
    RemovingCDSINVENTORYID: TIntegerField;
    RemovingCDSINVENTORYBASIS: TStringField;
    RemovingcxGridDBTVREMOVINGID: TcxGridDBColumn;
    RemovingcxGridDBTVSTORAGEID: TcxGridDBColumn;
    RemovingcxGridDBTVSTORAGENAME: TcxGridDBColumn;
    RemovingcxGridDBTVDRINKID: TcxGridDBColumn;
    RemovingcxGridDBTVDRINKNAME: TcxGridDBColumn;
    RemovingcxGridDBTVDRINKKINDID: TcxGridDBColumn;
    RemovingcxGridDBTVPRESENT: TcxGridDBColumn;
    RemovingcxGridDBTVREMOVINGTYPEID: TcxGridDBColumn;
    RemovingcxGridDBTVREMOVINGTYPENAME: TcxGridDBColumn;
    RemovingcxGridDBTVINVENTORYID: TcxGridDBColumn;
    RemovingcxGridDBTVINVENTORYBASIS: TcxGridDBColumn;
    RemovingcxGridDBTVCOMMENT: TcxGridDBColumn;
    RemovingTypeFiltercxLCB: TcxLookupComboBox;
    InventoryFiltercxLCB: TcxLookupComboBox;
    RemovingCDSCOUNTUNIT: TFloatField;
    RemovingcxGridDBTVCOUNTUNIT: TcxGridDBColumn;
    DrinkKindIDFiltercxME: TcxMaskEdit;
    RemovingCDSRACKID: TIntegerField;
    RemovingCDSRACKNAME: TStringField;
    RemovingcxGridDBTVRACKID: TcxGridDBColumn;
    RemovingcxGridDBTVRACKNAME: TcxGridDBColumn;
    IsMakeFiltercxCB: TcxCheckBox;
    RemovingcxGridDBTVISMAKENAME: TcxGridDBColumn;
    RemovingCDSISMAKENAME: TStringField;
    RemovingCDSISMAKE: TSmallintField;
    RemovingcxGridDBTVISMAKE: TcxGridDBColumn;
    DrinkNameFiltercxLCB: TcxLookupComboBox;
    RemovingIDFiltercxME: TcxMaskEdit;
    PM: TPopupMenu;
    AddMI: TMenuItem;
    DeleteMI: TMenuItem;
    N1: TMenuItem;
    PrintMI: TMenuItem;
    RemovingfrxDBDataset: TfrxDBDataset;
    RemovingfrxReport: TfrxReport;
    RemovingPrintCDS: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    IntegerField4: TIntegerField;
    DateTimeField1: TDateTimeField;
    IntegerField5: TIntegerField;
    StringField3: TStringField;
    IntegerField6: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    FloatField1: TFloatField;
    IntegerField7: TIntegerField;
    StringField6: TStringField;
    RemovingPrintCDSBARCODEDOC: TStringField;
    RemovingPrintCDSSALEBOXNAME: TStringField;
    RemovingCDSSUMSSPRICE: TFloatField;
    RemovingCDSWHOINSERT: TStringField;
    RemovingcxGridDBTVSUMSSPRICE: TcxGridDBColumn;
    RemovingcxGridDBTVWHOINSERT: TcxGridDBColumn;
    RemovingActCDS: TClientDataSet;
    RemovingActCDSDEPARTMENTNAME: TStringField;
    RemovingActCDSNUMBER: TStringField;
    RemovingActCDSPRESENT: TDateTimeField;
    RemovingActCDSCOMMENT: TStringField;
    RemovingActCDSDRINKID: TIntegerField;
    RemovingActCDSDRINKPRINTMARK: TStringField;
    RemovingActCDSDRINKKINDID: TIntegerField;
    RemovingActCDSUNITNAME: TStringField;
    RemovingActCDSCOUNTUNIT: TFloatField;
    RemovingActCDSPRICE: TFloatField;
    RemovingActCDSSUMPRICE: TFloatField;
    RemovingActCDSDIRPOST: TStringField;
    RemovingActCDSDIRNAME: TStringField;
    RemovingActfrxReport: TfrxReport;
    RemovingActfrxDBDataset: TfrxDBDataset;
    PrintAct: TMenuItem;
    RemovingPrintCDSPRICEWITHOUTNDS: TFloatField;
    RemovingPrintCDSPRICENDS: TFloatField;
    RemovingPrintCDSSUMPRICEWITHOUTNDS: TFloatField;
    RemovingPrintCDSSUMPRICENDS: TFloatField;
    RemovingPrintCDSPRODACTIONDATE: TStringField;
    EditMI: TMenuItem;
    ExportToExcel: TMenuItem;
    SaveDialog: TSaveDialog;
    RemovingCDSREMOVINGPRICE: TFloatField;
    RemovingCDSFLAGEXCISESCAN: TSmallintField;
    RemovingcxGridDBTVFLAGEXCISESCAN: TcxGridDBColumn;
    RemovingExciseMI: TMenuItem;
    RemovingExciseLineMI: TMenuItem;
    RemovingCDSEXCISECOUNT: TIntegerField;
    RemovingcxGridDBTVEXCISECOUNT: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RemovingcxGridDBTVCustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RefreshBBClick(Sender: TObject);
    procedure StorageFiltercxLCBEnter(Sender: TObject);
    procedure RemovingCDSBeforeOpen(DataSet: TDataSet);
    procedure IsMakeFiltercxCBClick(Sender: TObject);
    procedure RemovingIDFiltercxMEPropertiesEditValueChanged(
      Sender: TObject);
    procedure DrinkIDFiltercxMEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DrinkNameFiltercxLCBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DrinkNameFiltercxLCBPropertiesEditValueChanged(
      Sender: TObject);
    procedure AddMIClick(Sender: TObject);
    procedure DeleteMIClick(Sender: TObject);
    procedure PrintMIClick(Sender: TObject);
    procedure PrintActClick(Sender: TObject);
    procedure RemovingActCDSBeforeOpen(DataSet: TDataSet);
    procedure EditMIClick(Sender: TObject);
    procedure PMPopup(Sender: TObject);
    procedure ExportToExcelClick(Sender: TObject);
    procedure RemovingcxGridDBTVCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure RemovingExciseMIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRemoving: TfRemoving;

implementation

uses uMain,DynamicProvider, uRemovingAdd, uExciseScan;

{$R *.dfm}

procedure TfRemoving.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
 fMain.FloatToBcd(self);
 
 RetVal:=1;
 CompName:='Removing';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   RemovingCDS.Close;
   RemovingCDS.CommandText:=
    'select * from buytrans_removingview(:removingid,:storageid,:drinkid,:drinkkindid,:present,:removingtypeid,:inventoryid,:ismake)';
   RemovingCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='RemovingStorage';
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
    'select * from buytrans_removingstorage';
   StorageFiltercxLCB.Properties.ListSource:=DS;
   StorageFiltercxLCB.Properties.KeyFieldNames:='ID';
   StorageFiltercxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='RemovingDrink';
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
    'select * from buytrans_removingdrink(:id,:name)';
   DrinkNameFiltercxLCB.Properties.ListSource:=DS;
   DrinkNameFiltercxLCB.Properties.KeyFieldNames:='DRINKID';
   DrinkNameFiltercxLCB.Properties.ListFieldNames:='DRINKNAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='RemovingType';
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
    'select id,name from removingtype r '+
    'where r.returntypeid=2 and isactual = 1 and ordernumber>=0 '+
    ' and ((r.terminalid is null) or (r.terminalid in (select ett.terminalid from employeetoterminal ett where ett.login=user))) '+
    'order by ordernumber';
   RemovingTypeFiltercxLCB.Properties.ListSource:=DS;
   RemovingTypeFiltercxLCB.Properties.KeyFieldNames:='ID';
   RemovingTypeFiltercxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='RemovingInventory';
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
    'select * from BUYTRANS_REMOVINGINVENTORY';
   InventoryFiltercxLCB.Properties.ListSource:=DS;
   InventoryFiltercxLCB.Properties.KeyFieldNames:='INVENTORYID';
   InventoryFiltercxLCB.Properties.ListFieldNames:='INVENTORYID;STORAGENAME;PRESENT;BASIS';
   InventoryFiltercxLCB.Properties.ListFieldIndex:=3;
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='RemovingPrint';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   RemovingPrintCDS.Close;
   RemovingPrintCDS.CommandText:=
    'select * from buytrans_removingprint(:removingid)';
   RemovingPrintCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='RemovingAct';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   RemovingActCDS.Close;
   RemovingActCDS.CommandText:=
    'select * from buytrans_removingact(:removingid)';
   RemovingActCDS.RemoteServer:=fMain.SocketConnection
  end;

 RefreshBBClick(self);
end;

procedure TfRemoving.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfRemoving.RemovingcxGridDBTVCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 if AViewInfo.Column.Name=RemovingcxGridDBTVREMOVINGID.Name then
  begin
   RemovingIDFiltercxME.Left:=AViewInfo.RealBounds.Left+2;
   RemovingIDFiltercxME.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=RemovingcxGridDBTVSTORAGENAME.Name then
  begin
   StorageFiltercxLCB.Left:=AViewInfo.RealBounds.Left+2;
   StorageFiltercxLCB.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=RemovingcxGridDBTVPRESENT.Name then
  begin
   PresentFiltercxDE.Left:=AViewInfo.RealBounds.Left+2;
   PresentFiltercxDE.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=RemovingcxGridDBTVDRINKID.Name then
  begin
   DrinkIDFiltercxME.Left:=AViewInfo.RealBounds.Left+2;
   DrinkIDFiltercxME.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=RemovingcxGridDBTVDRINKNAME.Name then
  begin
   DrinkNameFiltercxLCB.Left:=AViewInfo.RealBounds.Left+2;
   DrinkNameFiltercxLCB.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=RemovingcxGridDBTVDRINKKINDID.Name then
  begin
   DrinkKindIDFiltercxME.Left:=AViewInfo.RealBounds.Left+2;
   DrinkKindIDFiltercxME.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=RemovingcxGridDBTVREMOVINGTYPENAME.Name then
  begin
   RemovingTypeFiltercxLCB.Left:=AViewInfo.RealBounds.Left+2;
   RemovingTypeFiltercxLCB.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=RemovingcxGridDBTVINVENTORYBASIS.Name then
  begin
   InventoryFiltercxLCB.Left:=AViewInfo.RealBounds.Left+2;
   InventoryFiltercxLCB.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=RemovingcxGridDBTVISMAKENAME.Name then
  begin
   IsMakeFiltercxCB.Left:=AViewInfo.RealBounds.Left+2;
   IsMakeFiltercxCB.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

end;



procedure TfRemoving.RefreshBBClick(Sender: TObject);
begin
 with fMain do
  try
   RefreshCDS(TClientDataSet(StorageFiltercxLCB.Properties.ListSource.DataSet));
   RefreshCDS(TClientDataSet(RemovingTypeFiltercxLCB.Properties.ListSource.DataSet));
   RefreshCDS(TClientDataSet(InventoryFiltercxLCB.Properties.ListSource.DataSet));
   RefreshCDS(RemovingCDS);
  finally
   ;
  end;//try..finally
end;

procedure TfRemoving.StorageFiltercxLCBEnter(Sender: TObject);
begin
 if (Sender as TComponent).Name<>RemovingIDFiltercxME.Name then
  RemovingIDFiltercxME.Clear;
 if (Sender as TComponent).Name<>StorageFiltercxLCB.Name then
  StorageFiltercxLCB.Clear;
 if (Sender as TComponent).Name<>PresentFiltercxDE.Name then
  PresentFiltercxDE.Clear;

 if ((Sender as TComponent).Name<>DrinkIDFiltercxME.Name) and ((Sender as TComponent).Name<>DrinkNameFiltercxLCB.Name) then
  begin
   DrinkIDFiltercxME.Clear;
   DrinkNameFiltercxLCB.EditValue:=-1;
   TClientDataSet(DrinkNameFiltercxLCB.Properties.ListSource.DataSet).Close;
   DrinkNameFiltercxLCB.Clear;
  end;

 if (Sender as TComponent).Name<>DrinkKindIDFiltercxME.Name then
  DrinkKindIDFiltercxME.Clear;
 if (Sender as TComponent).Name<>RemovingTypeFiltercxLCB.Name then
  RemovingTypeFiltercxLCB.Clear;
 if (Sender as TComponent).Name<>InventoryFiltercxLCB.Name then
  InventoryFiltercxLCB.Clear;
end;

procedure TfRemoving.RemovingCDSBeforeOpen(DataSet: TDataSet);
begin
 with RemovingCDS do
  begin
   Params[0].Clear;
   Params[1].Clear;
   Params[2].Clear;
   Params[3].Clear;
   Params[4].Clear;
   Params[5].Clear;
   Params[6].Clear;
   Params[7].Clear;

   if RemovingIDFiltercxME.Text<>'' then
    Params[0].AsInteger:=RemovingIDFiltercxME.EditValue;
   if StorageFiltercxLCB.Text<>'' then
    Params[1].AsInteger:=StorageFiltercxLCB.EditValue;
   if PresentFiltercxDE.Text<>'' then
    Params[2].AsDateTime:=PresentFiltercxDE.Date;
   if DrinkIDFiltercxME.Text<>'' then
    Params[3].AsInteger:=StrToInt(DrinkIDFiltercxME.Text);
   if DrinkKindIDFiltercxME.Text<>'' then
    Params[4].AsInteger:=StrToInt(DrinkKindIDFiltercxME.Text);
   if RemovingTypeFiltercxLCB.Text<>'' then
    Params[5].AsInteger:=RemovingTypeFiltercxLCB.EditValue;
   if InventoryFiltercxLCB.Text<>'' then
    Params[6].AsInteger:=InventoryFiltercxLCB.EditValue;
   Params[7].AsSmallInt:=IsMakeFiltercxCB.EditValue;
  end;
end;

procedure TfRemoving.IsMakeFiltercxCBClick(Sender: TObject);
begin
 if IsMakeFiltercxCB.State=cbsUnchecked then
  IsMakeFiltercxCB.Caption:='Не проведено';
 if IsMakeFiltercxCB.State=cbsChecked then
  IsMakeFiltercxCB.Caption:='Проведено';
 if IsMakeFiltercxCB.State=cbsGrayed then  
  IsMakeFiltercxCB.Caption:='Все';
 fMain.RefreshCDS(RemovingCDS);
end;

procedure TfRemoving.RemovingIDFiltercxMEPropertiesEditValueChanged(
  Sender: TObject);
begin
 fMain.RefreshCDS(RemovingCDS);
end;

procedure TfRemoving.DrinkIDFiltercxMEKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var CDS:TClientDataSet;
begin
 if (Sender as TcxMaskEdit).Text='' then
  exit;

 if Key=VK_RETURN then
  begin
   CDS:=TClientDataSet(DrinkNameFiltercxLCB.Properties.ListSource.DataSet);
   CDS.Params[0].AsInteger:=StrToInt(DrinkIDFiltercxME.Text);
   CDS.Params[1].Clear;
   try
    fMain.RefreshCDS(CDS);
   except
    ;
   end;

   if CDS.Active and (not CDS.IsEmpty) then
    DrinkNameFiltercxLCB.Text:=CDS.FieldByName('DRINKNAME').AsString
   else
    MessageDLG('Товар с указанным кодом не найден.',mtInformation,[mbOK],0);
  end;
end;

procedure TfRemoving.DrinkNameFiltercxLCBKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var CDS:TClientDataSet;
begin
 if Key=VK_RETURN then
  begin
   CDS:=TClientDataSet(DrinkNameFiltercxLCB.Properties.ListSource.DataSet);
   CDS.Params[0].Clear;
   CDS.Params[1].AsString:=AnsiUpperCase(DrinkNameFiltercxLCB.Text);
   try
    fMain.RefreshCDS(CDS);
   except
    ;
   end;
   if CDS.Active and (not CDS.IsEmpty) then
    DrinkNameFiltercxLCB.Text:=CDS.FieldByName('DRINKNAME').AsString;
  end;
end;

procedure TfRemoving.DrinkNameFiltercxLCBPropertiesEditValueChanged(
  Sender: TObject);
var CDS:TClientDataSet;
begin
 CDS:=TClientDataSet(DrinkNameFiltercxLCB.Properties.ListSource.DataSet);
 if CDS.Active and (not CDS.IsEmpty) and (DrinkNameFiltercxLCB.EditValue>0) then
  begin
   DrinkIDFiltercxME.Text:=IntToStr(DrinkNameFiltercxLCB.EditValue);
   fMain.RefreshCDS(RemovingCDS);
  end;
end;

procedure TfRemoving.AddMIClick(Sender: TObject);
begin
 if (not Assigned(fRemovingAdd)) then
  Application.CreateForm(TfRemovingAdd, fRemovingAdd);
 fRemovingAdd.fRemovingLink:=self;
 fRemovingAdd.FormAfterCreate(nil);
 fRemovingAdd.Tag:=0;
 fRemovingAdd.ShowModal;
end;

procedure TfRemoving.EditMIClick(Sender: TObject);
begin
 if (not Assigned(fRemovingAdd)) then
  Application.CreateForm(TfRemovingAdd, fRemovingAdd);
 fRemovingAdd.fRemovingLink:=self;
 fRemovingAdd.FormAfterCreate(nil);
 fRemovingAdd.Tag:=RemovingCDSREMOVINGID.AsInteger;
 fRemovingAdd.ShowModal;
end;

procedure TfRemoving.DeleteMIClick(Sender: TObject);
begin
 if MessageDlg('Вы действительно хотите удалить выбранную запись?',mtConfirmation,[mbYes, mbNo],0)<>mrYes then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'delete from removing where id='+RemovingCDSREMOVINGID.AsString;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDlg('Ошибка при удалении операции. Исходное сообщение>> '+E.Message,mtError,[mbOk],0);
    exit;
   end;//on E:Exception
  end;//try..except

 fMain.RefreshCDS(RemovingCDS);
end;

procedure TfRemoving.PrintMIClick(Sender: TObject);
begin
 if RemovingCDS.IsEmpty then
  exit;

 RemovingPrintCDS.Params[0].AsInteger:=RemovingCDSREMOVINGID.AsInteger;
 fMain.RefreshCDS(RemovingPrintCDS);
 if RemovingPrintCDS.IsEmpty then
  exit;

 RemovingfrxReport.PrepareReport;
 RemovingfrxReport.ShowReport;
end;

procedure TfRemoving.PrintActClick(Sender: TObject);
begin
 if RemovingCDS.IsEmpty then
  exit;

 fMain.RefreshCDS(RemovingActCDS);
 RemovingActfrxReport.PrepareReport;
 RemovingActfrxReport.ShowReport;
end;

procedure TfRemoving.RemovingActCDSBeforeOpen(DataSet: TDataSet);
begin
 RemovingActCDS.Params[0].AsInteger:=RemovingCDSREMOVINGID.AsInteger;
end;

procedure TfRemoving.PMPopup(Sender: TObject);
begin
 EditMI.Enabled:=RemovingCDS.Active and (not RemovingCDS.IsEmpty) and (RemovingCDSISMAKE.AsInteger=0);

 RemovingExciseMI.Visible:=(RemovingCDSFLAGEXCISESCAN.AsInteger=1);
 RemovingExciseLineMI.Visible:=RemovingExciseMI.Visible;
end;

procedure TfRemoving.ExportToExcelClick(Sender: TObject);
begin
 with SaveDialog do
  begin
   DefaultExt := 'xls';
   Filter := 'Microsoft Excel 2000 (*.xls)|*.xls';
   FileName := 'Реестр списаний';
   if Execute then
    ExportGrid4ToExcel(FileName, RemovingcxGrid);
  end;
end;

procedure TfRemoving.RemovingcxGridDBTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.DisplayTexts[RemovingcxGridDBTVFLAGEXCISESCAN.Index] = '1') then
   ACanvas.Brush.Color := $00B5E8B9;
end;

procedure TfRemoving.RemovingExciseMIClick(Sender: TObject);
begin
 if (not Assigned(fExciseScan)) then
  Application.CreateForm(TfExciseScan, fExciseScan);
 fExciseScan.ViewCDS.Params[0].AsInteger:=3;
 fExciseScan.ViewCDS.Params[1].AsInteger:=RemovingCDSREMOVINGID.AsInteger;
 fExciseScan.ExcisecxButton.Enabled:=(RemovingCDSFLAGEXCISESCAN.AsInteger=1);
 fExciseScan.ShowModal;
 fMain.RefreshCDS(RemovingCDS);
end;

end.
