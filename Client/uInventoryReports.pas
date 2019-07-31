unit uInventoryReports;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  DBClient, IBCustomDataSet, cxCurrencyEdit,cxExportGrid4Link, cxButtons,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSContainerLnk,
  dxPScxCommon, dxPScxGridLnk, Menus, ImgList, uInventoryList,
  cxGridCustomPopupMenu, cxGridPopupMenu;

type ReportType = (RT_CASHE, RT_INVENTORY_RESULT);

type
  TfInventoryReports = class(TForm)
    InventoryReportscxGridDBTV: TcxGridDBTableView;
    InventoryReportscxGridLevel: TcxGridLevel;
    InventoryReportscxGrid: TcxGrid;
    InventoryReportsCDS: TClientDataSet;
    InventoryReportsDS: TDataSource;
    InventoryReportsCDSDRINKID: TIntegerField;
    InventoryReportsCDSNAME: TStringField;
    InventoryReportsCDSDRINKKINDID: TIntegerField;
    InventoryReportsCDSFIXBOTTLECOUNT: TIntegerField;
    InventoryReportsCDSFACTBOTTLECOUNT: TIntegerField;
    InventoryReportsCDSDELTABOTTLECOUNT: TIntegerField;
    InventoryReportsCDSSUMPOST: TFloatField;
    InventoryReportsCDSSUMREM: TFloatField;
    InventoryReportscxGridDBTVDRINKID: TcxGridDBColumn;
    InventoryReportscxGridDBTVDRINKKINDID: TcxGridDBColumn;
    InventoryReportscxGridDBTVPRINTMARK: TcxGridDBColumn;
    InventoryReportscxGridDBTVFIXBOTTLECOUNT: TcxGridDBColumn;
    InventoryReportscxGridDBTVFACTBOTTLECOUNT: TcxGridDBColumn;
    InventoryReportscxGridDBTVDELTABOTTLECOUNT: TcxGridDBColumn;
    InventoryReportscxGridDBTVSUMPOST: TcxGridDBColumn;
    InventoryReportscxGridDBTVSUMREM: TcxGridDBColumn;
    InventoryReportscxGridDBTVRACKNAME: TcxGridDBColumn;
    InventoryReportsCDSRACKNAME: TStringField;
    InventoryReportscxGridDBTVREMBOTTLECOUNT: TcxGridDBColumn;
    InventoryReportsCDSREMBOTTLECOUNT: TIntegerField;
    InventoryCasheByStoragecxGridDBTV: TcxGridDBTableView;
    InventoryCasheByStoragecxGridLevel: TcxGridLevel;
    InventoryCasheByStoragecxGrid: TcxGrid;
    InventoryCasheByStorageCDS: TClientDataSet;
    InventoryCasheByStorageDS: TDataSource;
    InventoryCasheByStorageCDSDRINKID: TIntegerField;
    InventoryCasheByStorageCDSDRINKNAME: TStringField;
    InventoryCasheByStorageCDSRACKNAME: TStringField;
    InventoryCasheByStorageCDSBOTTLECOUNT: TIntegerField;
    InventoryCasheByStoragecxGridDBTVDRINKID: TcxGridDBColumn;
    InventoryCasheByStoragecxGridDBTVDRINKNAME: TcxGridDBColumn;
    InventoryCasheByStoragecxGridDBTVRACKNAME: TcxGridDBColumn;
    InventoryCasheByStoragecxGridDBTVBOTTLECOUNT: TcxGridDBColumn;
    InventoryCasheByStoragecxGridDBTVFACTBOTTLECOUNT: TcxGridDBColumn;
    InventoryCasheByStoragecxGridDBTVREMBOTTLECOUNT: TcxGridDBColumn;
    dxComponentPrinterRep: TdxComponentPrinter;
    dxComponentPrinterRepLink: TdxGridReportLink;
    dxComponentPrinterCashe: TdxComponentPrinter;
    dxComponentPrinterCasheLink: TdxGridReportLink;
    InventoryReportsCDSISRESERVE: TIntegerField;
    InventoryReportscxGridDBTVISRESERVE: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    InventoryReportsPM: TPopupMenu;
    InventoryCasheByStoragePM: TPopupMenu;
    InventoryReportsRefreshMI: TMenuItem;
    InventoryCasheByStorageRefreshMI: TMenuItem;
    InventoryReportsExportMI: TMenuItem;
    InventoryReportsPrintMI: TMenuItem;
    InventoryCasheByStoragePrintMI: TMenuItem;
    InventoryCasheByStorageExportMI: TMenuItem;
    InventoryReportscxGridDBTVRETAILPRICE: TcxGridDBColumn;
    InventoryReportsCDSRETAILPRICE: TFloatField;
    InventoryReportsCDSFACTRETAILPRICE: TFloatField;
    InventoryReportsCDSMAXRETAILPRICE: TFloatField;
    InventoryReportscxGridDBTVFACTRETAILPRICE: TcxGridDBColumn;
    InventoryReportscxGridDBTVMAXRETAILPRICE: TcxGridDBColumn;
    cxGridPM: TcxGridPopupMenu;
    InventoryReportsColumnPM: TPopupMenu;
    HideColumnMI: TMenuItem;
    procedure InventoryReportscxGridDBTVKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure SetReportType(RType: ReportType);
    procedure FormShow(Sender: TObject);
    procedure InventoryCasheByStoragecxGridDBTVKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure InventoryReportscxGridDBTVCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure InventoryCasheByStorageRefreshMIClick(Sender: TObject);
    procedure InventoryReportsRefreshMIClick(Sender: TObject);
    procedure InventoryReportsPrintMIClick(Sender: TObject);
    procedure InventoryReportsExportMIClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure InventoryCasheByStoragePrintMIClick(Sender: TObject);
    procedure InventoryCasheByStorageExportMIClick(Sender: TObject);
    procedure cxGridPMMenuItemClick(ASender: TObject;
      AHitTest: TcxCustomGridHitTest; var AHandler: TNotifyEvent;
      AParams: TList; var AHandled: Boolean);
    procedure cxGridPMPopupMenus0Popup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer);
  private
    { Private declarations }
    reportType: ReportType;
  public
   fInventoryListLink: TfInventoryList;
  end;

var
  fInventoryReports: TfInventoryReports;

implementation

uses DynamicProvider, uMain;

{$R *.dfm}

procedure TfInventoryReports.InventoryReportscxGridDBTVKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if Key = VK_F10 then
  with fMain.SaveDialog do
   begin
    DefaultExt := 'xls';
    Filter := 'Microsoft Excel 2000 (*.xls)|*.xls';
    FileName := 'Инвентаризационная ведомость №' + fInventoryListLink.InventoryListCDSID.AsString + '.xls';
    if Execute then
     ExportGrid4ToExcel(FileName, InventoryReportscxGrid);
  end;

  if Key = VK_F9 then
    dxComponentPrinterRep.Preview(True, nil);

  if Key = VK_F5 then
    fMain.RefreshCDS(InventoryReportsCDS);
end;

procedure TfInventoryReports.SetReportType(RType: ReportType);
begin
 reportType := RType;
end;

procedure TfInventoryReports.FormShow(Sender: TObject);
begin
 if reportType = RT_INVENTORY_RESULT then
  begin
   if fInventoryListLink.InventoryListCDSTERMINALID.AsInteger in [1,2,3,4,5,6,7,20,21,22,23,24,25,26,27] then
    begin
     InventoryReportscxGridDBTVRETAILPRICE.Visible     := False;
     InventoryReportscxGridDBTVMAXRETAILPRICE.Visible  := False;
     InventoryReportscxGridDBTVFACTRETAILPRICE.Visible := False;
    end
   else
    begin
     InventoryReportscxGridDBTVRACKNAME.Visible         := False;
     //InventoryReportscxGridDBTVDRINKKINDID.Visible      := False;
    end;

   if fInventoryListLink.InventoryListCDSSTORAGEID.AsInteger in [57, 60, 61] then
    InventoryReportscxGridDBTVMAXRETAILPRICE.Visible  := True;

   fInventoryReports.Caption                := fInventoryReports.Caption +
                                               ' : Результаты ревизии по складу ' +
                                               fInventoryListLink.InventoryListCDSSTNAME.AsString;
   InventoryReportscxGrid.Visible           := True;
   InventoryCasheByStoragecxGrid.Visible    := False;
   InventoryReportscxGridDBTV.Styles.Footer := fMain.cxStyle1;
   InventoryReportscxGridDBTV.Styles.Header := fMain.cxStyle1;
   InventoryReportsCDS.Params[0].AsInteger  := fInventoryListLink.InventoryListCDSID.AsInteger;
   InventoryReportsCDS.Open;
  end
 else if reportType = RT_CASHE then
  begin
   fInventoryReports.Caption                       := fInventoryReports.Caption +
                                                      ' : Зафиксированные остатки по складу ' +
                                                      fInventoryListLink.InventoryListCDSSTNAME.AsString;
   InventoryReportscxGrid.Visible                  := False;
   InventoryCasheByStoragecxGrid.Align             := alClient;
   InventoryCasheByStoragecxGrid.Visible           := True;
   InventoryCasheByStoragecxGridDBTV.Styles.Footer := fMain.cxStyle1;
   InventoryCasheByStoragecxGridDBTV.Styles.Header := fMain.cxStyle1;
   InventoryCasheByStorageCDS.Params[0].AsInteger  := fInventoryListLink.InventoryListCDSID.AsInteger;
   InventoryCasheByStorageCDS.Open;

   if InventoryCasheByStorageCDSRACKNAME.AsVariant = Null then
    InventoryCasheByStoragecxGridDBTVRACKNAME.Visible := False;
  end;
end;

procedure TfInventoryReports.InventoryCasheByStoragecxGridDBTVKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if Key = VK_F5 then
    fMain.RefreshCDS(InventoryCasheByStorageCDS);

 if Key = VK_F9 then
    dxComponentPrinterCashe.Preview(True, nil);

 if Key = VK_F10 then
  with fMain.SaveDialog do
   begin
    DefaultExt := 'xls';
    Filter := 'Microsoft Excel 2000 (*.xls)|*.xls';
    FileName := 'Остатки склада №' + '.xls';
    if Execute then
     ExportGrid4ToExcel(FileName, InventoryCasheByStoragecxGrid);
  end;
end;

procedure TfInventoryReports.InventoryReportscxGridDBTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.Values[InventoryReportscxGridDBTV.GetColumnByFieldName('ISRESERVE').Index] <> 0) then
  ACanvas.Canvas.Brush.Color := $00DFDFFF;
end;

procedure TfInventoryReports.InventoryCasheByStorageRefreshMIClick(
  Sender: TObject);
begin
 fMain.RefreshCDS(InventoryCasheByStorageCDS);
end;

procedure TfInventoryReports.InventoryReportsRefreshMIClick(
  Sender: TObject);
begin
 fMain.RefreshCDS(InventoryReportsCDS);
end;

procedure TfInventoryReports.InventoryReportsPrintMIClick(Sender: TObject);
begin
 dxComponentPrinterRep.Preview(True, nil);
end;

procedure TfInventoryReports.InventoryReportsExportMIClick(
  Sender: TObject);
begin
  with fMain.SaveDialog do
   begin
    DefaultExt := 'xls';
    Filter := 'Microsoft Excel 2000 (*.xls)|*.xls';
    FileName := 'Инвентаризационная ведомость №' + fInventoryListLink.InventoryListCDSID.AsString + '.xls';
    if Execute then
     ExportGrid4ToExcel(FileName, InventoryReportscxGrid);
  end;
end;

procedure TfInventoryReports.FormCreate(Sender: TObject);
var RetVal: OleVariant;
    CompName: string;
begin
 fMain.FloatToBcd(self);
 
 RetVal := 1;
 CompName := 'InventoryReports';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   InventoryReportsCDS.Close;
   InventoryReportsCDS.CommandText :=
    'select d.id drinkid, d.name name, rr.drinkkindid, ' +
    'rr.fixbottlecount,rr.factbottlecount,rr.rembottlecount, ' +
    'rr.deltabottlecount,rr.sumpost,rr.sumrem,r.name rackname, rr.isreserve, rr.retailprice retailprice, ' +
    'rr.factretailprice, rr.maxretailprice ' +
    'from inventory_resultdrinkkind(:inventorylistid) rr ' +
    'join drink d on d.id=rr.drinkid ' +
    'join storage st on st.id=rr.storageid ' +
    'left join rack r on r.id=rr.rackid ' +
    'order by d.name';
   InventoryReportsCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'InventoryCasheByStorage';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   InventoryCasheByStorageCDS.Close;
   InventoryCasheByStorageCDS.CommandText := 'select * from INVENTORY_INVENTORYCASHE(:inventorylistid)';
   InventoryCasheByStorageCDS.RemoteServer := fMain.SocketConnection;
  end;
end;

procedure TfInventoryReports.InventoryCasheByStoragePrintMIClick(
  Sender: TObject);
begin
 dxComponentPrinterCashe.Preview(True, nil);
end;

procedure TfInventoryReports.InventoryCasheByStorageExportMIClick(
  Sender: TObject);
begin
 with fMain.SaveDialog do
   begin
    DefaultExt := 'xls';
    Filter := 'Microsoft Excel 2000 (*.xls)|*.xls';
    FileName := 'Остатки склада №' + '.xls';
    if Execute then
     ExportGrid4ToExcel(FileName, InventoryCasheByStoragecxGrid);
  end;
end;

procedure TfInventoryReports.cxGridPMMenuItemClick(ASender: TObject;
  AHitTest: TcxCustomGridHitTest; var AHandler: TNotifyEvent;
  AParams: TList; var AHandled: Boolean);
begin
 // Заголовок столбца
  if AHitTest is TcxGridColumnHeaderHitTest   then
    with (AHitTest as TcxGridColumnHeaderHitTest ) do
      ShowMessage(Column.Caption);
end;

procedure TfInventoryReports.cxGridPMPopupMenus0Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  if AHitTest is TcxGridColumnHeaderHitTest   then
    with (AHitTest as TcxGridColumnHeaderHitTest ) do
      ShowMessage(Column.Caption);
end;

end.
