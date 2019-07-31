unit uInventoryListReports;

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
  dxPScxCommon, dxPScxGridLnk, Menus, ImgList,cxGridCustomPopupMenu, cxGridPopupMenu,
  StdCtrls;

type
  TfInventoryListReports = class(TForm)
    ViewcxGridDBTV: TcxGridDBTableView;
    ViewcxGridLevel: TcxGridLevel;
    ViewcxGrid: TcxGrid;
    InventoryResultCDS: TClientDataSet;
    ViewDS: TDataSource;
    InventoryResultCDSDRINKID: TIntegerField;
    InventoryResultCDSPRINTMARK: TStringField;
    InventoryResultCDSDRINKKINDID: TIntegerField;
    InventoryResultCDSFIXCOUNTUNIT: TIntegerField;
    InventoryResultCDSFACTCOUNTUNIT: TIntegerField;
    InventoryResultCDSDELTACOUNTUNIT: TIntegerField;
    InventoryResultCDSSUMPOST: TBCDField;
    InventoryResultCDSSUMREM: TBCDField;
    InventoryFixCasheCDS: TClientDataSet;
    InventoryFixCasheCDSDRINKID: TIntegerField;
    InventoryFixCasheCDSDRINKNAME: TStringField;
    InventoryFixCasheCDSRACKNAME: TStringField;
    InventoryFixCasheCDSBOTTLECOUNT: TIntegerField;
    ViewdxComponentPrinter: TdxComponentPrinter;
    ViewdxComponentPrinterLink: TdxGridReportLink;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    ViewPM: TPopupMenu;
    RefreshMI: TMenuItem;
    ExportMI: TMenuItem;
    PrintMI: TMenuItem;
    InventoryResultCDSRETAILPRICE: TBCDField;
    InventoryResultCDSDIRECTIONNAME: TStringField;
    InventoryResultCDSGROUPNAME: TStringField;
    InventoryResultCDSKEYID: TIntegerField;
    InventoryResultCDSMAXRETAILPRICE: TBCDField;
    Label1: TLabel;
    InventoryResultCDSRACKID: TIntegerField;
    InventoryResultCDSRACKNAME: TStringField;
    InventoryFixCasheCDSKEYID: TIntegerField;
    InventoryFixCasheCDSRACKID: TIntegerField;
    procedure ViewcxGridDBTVKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure RefreshMIClick(Sender: TObject);
    procedure PrintMIClick(Sender: TObject);
    procedure ExportMIClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure InventoryCasheByStoragePrintMIClick(Sender: TObject);
    procedure cxGridPMMenuItemClick(ASender: TObject;
      AHitTest: TcxCustomGridHitTest; var AHandler: TNotifyEvent;
      AParams: TList; var AHandled: Boolean);
    procedure cxGridPMPopupMenus0Popup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure InventoryResultCDSBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
  end;

var
  fInventoryListReports: TfInventoryListReports;

implementation

uses DynamicProvider, uMain;

{$R *.dfm}

procedure TfInventoryListReports.FormCreate(Sender: TObject);
var RetVal: OleVariant;
    CompName: string;
begin
 RetVal := 1;
 CompName := 'InventoryListResult';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   InventoryResultCDS.ProviderName:=CompName+'DSP';
   InventoryResultCDS.RemoteServer := fMain.SocketConnection;
   InventoryResultCDS.CommandText :=
    'select * from buytrans_inventorylistresult(:inventorylistid)';
  end;

 RetVal := 1;
 CompName := 'InventoryListFixCashe';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   InventoryFixCasheCDS.ProviderName:=CompName+'DSP';
   InventoryFixCasheCDS.RemoteServer := fMain.SocketConnection;
   InventoryFixCasheCDS.CommandText := 'select * from buytrans_inventorylistfix_view(:inventorylistid)';
  end;
end;

procedure TfInventoryListReports.FormActivate(Sender: TObject);
var CDS:TClientDataSet;
    KeyFieldName:string;
    i:integer;
begin
 ViewcxGridDBTV.ClearItems;

 CDS:=TClientDataSet(ViewcxGridDBTV.DataController.DataSource.DataSet);
 if CDS.Name=InventoryResultCDS.Name then begin KeyFieldName:='KEYID'; InventoryResultCDSRACKNAME.Visible:=(InventoryResultCDS.Tag=1); end;
 if CDS.Name=InventoryFixCasheCDS.Name then begin KeyFieldName:='KEYID'; InventoryFixCasheCDSRACKNAME.Visible:=(InventoryFixCasheCDS.Tag=1); end;

 fMain.RefreshCDS(CDS);

 ViewDS.DataSet:=CDS;
 ViewcxGridDBTV.DataController.KeyFieldNames:=KeyFieldName;
 ViewcxGridDBTV.DataController.CreateAllItems;

 for i:=0 to ViewcxGridDBTV.ColumnCount-1 do
  begin
   if (ViewcxGridDBTV.DataController.DataSource.DataSet.Fields[i].Tag=1) then
    begin
     ViewcxGridDBTV.Columns[i].Summary.FooterKind:=skSum;
     ViewcxGridDBTV.Columns[i].Summary.GroupFooterKind:=skSum;
    end;
   if (ViewcxGridDBTV.DataController.DataSource.DataSet.Fields[i].Tag=2) then
    begin
     ViewcxGridDBTV.Columns[i].Summary.FooterKind:=skCount;
     ViewcxGridDBTV.Columns[i].Summary.GroupFooterKind:=skCount;
    end;
  end;
end;

procedure TfInventoryListReports.ViewcxGridDBTVKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if Key = VK_F10 then
  ExportMIClick(Sender);

  if Key = VK_F9 then
    PrintMIClick(Sender);

  if Key = VK_F5 then
   RefreshMIClick(Sender);
end;

procedure TfInventoryListReports.RefreshMIClick(
  Sender: TObject);
begin
 fMain.RefreshCDS(TClientDataSet(ViewcxGridDBTV.DataController.DataSource.DataSet));
end;

procedure TfInventoryListReports.PrintMIClick(Sender: TObject);
begin
 ViewdxComponentPrinter.Preview(True, nil);
end;

procedure TfInventoryListReports.ExportMIClick(
  Sender: TObject);
begin
  with fMain.SaveDialog do
   begin
    DefaultExt := 'xls';
    Filter := 'Microsoft Excel 2000 (*.xls)|*.xls';
    FileName := 'Инвентаризационная ведомость №' + IntToStr(Self.Tag)+ '.xls';
    if Execute then
     ExportGrid4ToExcel(FileName, ViewcxGrid);
  end;
end;


procedure TfInventoryListReports.InventoryCasheByStoragePrintMIClick(
  Sender: TObject);
begin
 ViewdxComponentPrinter.Preview(True, nil);
end;

procedure TfInventoryListReports.cxGridPMMenuItemClick(ASender: TObject;
  AHitTest: TcxCustomGridHitTest; var AHandler: TNotifyEvent;
  AParams: TList; var AHandled: Boolean);
begin
 // Заголовок столбца
  if AHitTest is TcxGridColumnHeaderHitTest   then
    with (AHitTest as TcxGridColumnHeaderHitTest ) do
      ShowMessage(Column.Caption);
end;

procedure TfInventoryListReports.cxGridPMPopupMenus0Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  if AHitTest is TcxGridColumnHeaderHitTest   then
    with (AHitTest as TcxGridColumnHeaderHitTest ) do
      ShowMessage(Column.Caption);
end;

procedure TfInventoryListReports.InventoryResultCDSBeforeOpen(
  DataSet: TDataSet);
begin
 TClientDataSet(DataSet).Params[0].AsInteger:=Self.Tag;
end;

end.
