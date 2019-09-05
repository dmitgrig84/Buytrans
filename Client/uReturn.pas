unit uReturn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxMaskEdit, cxCheckBox, cxTextEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls, cxCalendar,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxSplitter, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  DBClient, cxCurrencyEdit, Menus, frxClass, frxDBSet, StdCtrls, cxButtons,
  RXCtrls, ImgList, cxImageComboBox, cxExportGrid4Link;

type
  TfReturn = class(TForm)
    TopPanel: TPanel;
    TopRightPanel: TPanel;
    JustReturnFiltercxCB: TcxCheckBox;
    ReturnFiltercxCB: TcxCheckBox;
    ConractorIDFiltercxME: TcxMaskEdit;
    PresentFiltercxDE: TcxDateEdit;
    SQNNOFiltercxME: TcxMaskEdit;
    ReturnSalePanel: TPanel;
    SalecxGridDBTV: TcxGridDBTableView;
    SalecxGridLevel: TcxGridLevel;
    SalecxGrid: TcxGrid;
    SalecxSplitter: TcxSplitter;
    FilterPanel: TPanel;
    ReturnSaleCDS: TClientDataSet;
    ReturnSaleDS: TDataSource;
    ReturnSaleCDSSALEID: TIntegerField;
    ReturnSaleCDSSQNNO: TIntegerField;
    ReturnSaleCDSPRESENT: TDateTimeField;
    ReturnSaleCDSADDRESS: TStringField;
    ReturnSaleCDSCONTRACTORID: TIntegerField;
    ReturnSaleCDSCONTRACTORNAME: TStringField;
    SalecxGridDBTVCONTRACTORID: TcxGridDBColumn;
    SalecxGridDBTVCONTRACTORNAME: TcxGridDBColumn;
    SalecxGridDBTVSALEID: TcxGridDBColumn;
    SalecxGridDBTVSQNNO: TcxGridDBColumn;
    SalecxGridDBTVPRESENT: TcxGridDBColumn;
    SalecxGridDBTVADDRESS: TcxGridDBColumn;
    ReturnSaleCDSNORMRETURN: TIntegerField;
    ReturnSaleCDSTECHRETURN: TIntegerField;
    SalecxGridDBTVTECHRETURN: TcxGridDBColumn;
    SalecxGridDBTVNORMRETURN: TcxGridDBColumn;
    ContractorNameFiltercxLCB: TcxLookupComboBox;
    SaleDetailcxSplitter: TcxSplitter;
    SaleDetailcxGrid: TcxGrid;
    SaleDetailcxGridDBTV: TcxGridDBTableView;
    SaleDetailcxGridLevel: TcxGridLevel;
    ReturncxSplitter: TcxSplitter;
    ReturncxGrid: TcxGrid;
    ReturncxGridDBTV: TcxGridDBTableView;
    ReturncxGridLevel: TcxGridLevel;
    ReturnSaleDetailCDS: TClientDataSet;
    ReturnSaleDetailCDSDRINKKINDID: TIntegerField;
    ReturnSaleDetailCDSPRICE: TBCDField;
    ReturnSaleDetailCDSDRINKID: TIntegerField;
    ReturnSaleDetailCDSSTORAGEID: TIntegerField;
    ReturnSaleDetailCDSSTORAGENAME: TStringField;
    ReturnSaleDetailCDSPRINTMARK: TStringField;
    ReturnSaleDetailCDSNESTEDBONUS: TFloatField;
    ReturnSaleDetailDS: TDataSource;
    ReturnSaleDetailCDSSALEDETAILID: TIntegerField;
    ReturnSaleDetailCDSSALEBOXCOUNT: TFloatField;
    ReturnSaleDetailCDSCOUNTUNIT: TFloatField;
    ReturnSaleDetailCDSSALEBOXID: TIntegerField;
    ReturnSaleDetailCDSSALEBOXNAME: TStringField;
    ReturnSaleDetailCDSSALEBOXCAPACITY: TIntegerField;
    ReturnSaleDetailCDSNORMRETURN: TSmallintField;
    ReturnSaleDetailCDSTECHRETURN: TSmallintField;
    SaleDetailcxGridDBTVSALEDETAILID: TcxGridDBColumn;
    SaleDetailcxGridDBTVDRINKKINDID: TcxGridDBColumn;
    SaleDetailcxGridDBTVDRINKID: TcxGridDBColumn;
    SaleDetailcxGridDBTVPRINTMARK: TcxGridDBColumn;
    SaleDetailcxGridDBTVSALEBOXCOUNT: TcxGridDBColumn;
    SaleDetailcxGridDBTVCOUNTUNIT: TcxGridDBColumn;
    SaleDetailcxGridDBTVNESTEDBONUS: TcxGridDBColumn;
    SaleDetailcxGridDBTVSALEBOXID: TcxGridDBColumn;
    SaleDetailcxGridDBTVSALEBOXNAME: TcxGridDBColumn;
    SaleDetailcxGridDBTVSALEBOXCAPACITY: TcxGridDBColumn;
    SaleDetailcxGridDBTVPRICE: TcxGridDBColumn;
    SaleDetailcxGridDBTVSTORAGEID: TcxGridDBColumn;
    SaleDetailcxGridDBTVSTORAGENAME: TcxGridDBColumn;
    SaleDetailcxGridDBTVRETURNCOUNTUNIT: TcxGridDBColumn;
    SaleDetailcxGridDBTVTECHRETURN: TcxGridDBColumn;
    ReturnCDS: TClientDataSet;
    ReturnCDSDRINKRETURNID: TIntegerField;
    ReturnCDSPRESENT: TDateTimeField;
    ReturnCDSSALEBOTTLECOUNT: TFloatField;
    ReturnCDSSTORAGEBOTTLECOUNT: TFloatField;
    ReturnCDSRETURNBOXCOUNT: TFloatField;
    ReturnCDSRETURNEDONCASHEBOXCOUNT: TFloatField;
    ReturnCDSRETURNTYPENAME: TStringField;
    ReturnCDSBOXID: TIntegerField;
    ReturnCDSTOBOXNAME: TStringField;
    ReturnCDSTOSTORAGEID: TIntegerField;
    ReturnCDSTOSTORAGENAME: TStringField;
    ReturnCDSINVENTORYID: TIntegerField;
    ReturnCDSEMPLOYEENAME: TStringField;
    ReturnDS: TDataSource;
    ReturncxGridDBTVDRINKRETURNID: TcxGridDBColumn;
    ReturncxGridDBTVPRESENT: TcxGridDBColumn;
    ReturncxGridDBTVSALEBOTTLECOUNT: TcxGridDBColumn;
    ReturncxGridDBTVSTORAGEBOTTLECOUNT: TcxGridDBColumn;
    ReturncxGridDBTVRETURNBOXCOUNT: TcxGridDBColumn;
    ReturncxGridDBTVRETURNEDONCASHEBOXCOUNT: TcxGridDBColumn;
    ReturncxGridDBTVRETURNTYPENAME: TcxGridDBColumn;
    ReturncxGridDBTVBOXID: TcxGridDBColumn;
    ReturncxGridDBTVTOBOXNAME: TcxGridDBColumn;
    ReturncxGridDBTVTOSTORAGEID: TcxGridDBColumn;
    ReturncxGridDBTVTOSTORAGENAME: TcxGridDBColumn;
    ReturncxGridDBTVINVENTORYID: TcxGridDBColumn;
    ReturncxGridDBTVEMPLOYEENAME: TcxGridDBColumn;
    ReturnPM: TPopupMenu;
    EditMI: TMenuItem;
    DeleteMI: TMenuItem;
    PrintMI: TMenuItem;
    PrintActMI: TMenuItem;
    AddMI: TMenuItem;
    N1: TMenuItem;
    ReturnSaleDetailCDSRETURNCOUNTUNIT: TFloatField;
    ReturnSaleDetailCDSRETURNSALEBOXCOUNT: TFloatField;
    SaleDetailcxGridDBTVNORMRETURN: TcxGridDBColumn;
    SaleDetailcxGridDBTVRETURNSALEBOXCOUNT: TcxGridDBColumn;
    ReturnSaleDetailCDSMAXRETURNCOUNTUNIT: TFloatField;
    ReturnSaleDetailCDSMAXRETURNSALEBOXCOUNT: TFloatField;
    ReturnSaleDetailCDSRETURNCHECKCODE: TSmallintField;
    ReturnCDSRETURNTYPEID: TIntegerField;
    ReturnCDSREMOVINGTYPEID: TIntegerField;
    ReturnCDSREMOVINGTYPENAME: TStringField;
    ReturnfrxReport: TfrxReport;
    ReturnfrxDBDataset: TfrxDBDataset;
    ReturnPrintCDS: TClientDataSet;
    ReturnPrintCDSBARCODEDOC: TStringField;
    ReturnPrintCDSSTORAGENAME: TStringField;
    ReturnPrintCDSSALENUMBER: TStringField;
    ReturnPrintCDSSALEPRESENT: TDateTimeField;
    ReturnPrintCDSDRINKID: TIntegerField;
    ReturnPrintCDSDRINKKINDID: TIntegerField;
    ReturnPrintCDSPRINTMARK: TStringField;
    ReturnPrintCDSCOUNTUNIT: TFloatField;
    ReturnPrintCDSCOUNTBOX: TFloatField;
    ReturnPrintCDSDATEFACTORY: TStringField;
    ReturnPrintCDSEXCISELINE: TStringField;
    ReturnPrintCDSFIRMID: TIntegerField;
    ReturnPrintCDSFIRMNAME: TStringField;
    GoodNameFilterLabel: TLabel;
    GoodNameFiltercxLCB: TcxLookupComboBox;
    GoodIDFilterLabel: TLabel;
    GoodIDFiltercxME: TcxMaskEdit;
    ReturnSaleDetailCDSDATEFACTORY: TStringField;
    ReturnSaleDetailCDSEXCISELINE: TStringField;
    SaleDetailcxGridDBTVEXCISELINE: TcxGridDBColumn;
    SaleDetailcxGridDBTVDATEFACTORY: TcxGridDBColumn;
    ReturnCDSWHENINSERT: TDateTimeField;
    ReturncxGridDBTVWHENINSERT: TcxGridDBColumn;
    ReturnPrintCDSREMOVINGTYPENAME: TStringField;
    BegincxDE: TcxDateEdit;
    RxLabel4: TRxLabel;
    EndcxDE: TcxDateEdit;
    RefreshcxButton: TcxButton;
    EgaisIL: TImageList;
    ReturnSaleCDSEGAISSTATUS: TIntegerField;
    SalecxGridDBTVEGAISSTATUS: TcxGridDBColumn;
    ReturnSalePM: TPopupMenu;
    AcceptEgaisSaleActMI: TMenuItem;
    EgaisSaleActMI: TMenuItem;
    ReturnSaleCDSSTORAGEID: TIntegerField;
    ClearEgaisSaleActMI: TMenuItem;
    UnConfirmEgaisSaleMI: TMenuItem;
    FirstLineMI: TMenuItem;
    ConfirmEgaisSaleMI: TMenuItem;
    ReturnSaleCDSTERMINALNAME: TStringField;
    ReturnSaleCDSSTORAGENAME: TStringField;
    SalecxGridDBTVTERMINALNAME: TcxGridDBColumn;
    SalecxGridDBTVSTORAGENAME: TcxGridDBColumn;
    ReturnSaleCDSCLIENTREGID: TStringField;
    SalecxGridDBTVCLIENTREGID: TcxGridDBColumn;
    ReturnSaleCDSEGAISRETURN: TIntegerField;
    ReturnSaleDetailCDSEGAISINFORMREGID: TStringField;
    SaleDetailcxGridDBTVEGAISINFORMREGID: TcxGridDBColumn;
    ReturnSaleCDSWBREGID: TStringField;
    ReturnSaleCDSEGAISFIXNUMBER: TStringField;
    SalecxGridDBTVWBREGID: TcxGridDBColumn;
    SalecxGridDBTVEGAISFIXNUMBER: TcxGridDBColumn;
    DeliveredIL: TImageList;
    ReturnSaleCDSISDELIVERED: TSmallintField;
    SalecxGridDBTVISDELIVERED: TcxGridDBColumn;
    ReturnSaleCDSDRIVERNAME: TStringField;
    SalecxGridDBTVDRIVERNAME: TcxGridDBColumn;
    SalecxGridDBTVSUMPRICE: TcxGridDBColumn;
    ReturnSaleCDSSUMPRICE: TBCDField;
    IsDeliveredMI: TMenuItem;
    PMIL: TImageList;
    ReturnSaleCDSWHENWHO: TStringField;
    SalecxGridDBTVWHENWHO: TcxGridDBColumn;
    SecondLineMI: TMenuItem;
    ExportToExcelMI: TMenuItem;
    ReturnSaleCDSREPLYID: TStringField;
    SalecxGridDBTVREPLYID: TcxGridDBColumn;
    ReturnSaleDetailCDSEGAISSTORAGEFLAG: TSmallintField;
    SaleNewTodayMI: TMenuItem;
    ReturnExciseLineMI: TMenuItem;
    ReturnExciseMI: TMenuItem;
    ReturnSaleCDSFLAGEXCISESCAN: TSmallintField;
    ReturnSaleCDSFLAGEXCISESALE: TSmallintField;
    SalecxGridDBTVFLAGEXCISESALE: TcxGridDBColumn;
    ReturnCDSEXCISECOUNT: TIntegerField;
    ReturncxGridDBTVEXCISECOUNT: TcxGridDBColumn;
    SaleExciseMI: TMenuItem;
    ReturnSaleCDSFLAGCANCELCONFIRM: TSmallintField;
    CancelConfirmMI: TMenuItem;
    SalecxGridDBTVFLAGCANCELCONFIRM: TcxGridDBColumn;
    EgaisResultMI: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalecxGridDBTVCustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure ReturnFiltercxCBClick(Sender: TObject);
    procedure SalecxSplitterAfterClose(Sender: TObject);
    procedure SalecxSplitterAfterOpen(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConractorIDFiltercxMEEnter(Sender: TObject);
    procedure SQNNOFiltercxMEKeyPress(Sender: TObject; var Key: Char);
    procedure PresentFiltercxDEPropertiesChange(Sender: TObject);
    procedure ContractorNameFiltercxLCBKeyPress(Sender: TObject;
      var Key: Char);
    procedure ConractorIDFiltercxMEKeyPress(Sender: TObject;
      var Key: Char);
    procedure ContractorNameFiltercxLCBPropertiesEditValueChanged(
      Sender: TObject);
    procedure SalecxGridDBTVCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ReturnSaleDSDataChange(Sender: TObject; Field: TField);
    procedure ReturnSaleDetailCDSBeforeOpen(DataSet: TDataSet);
    procedure SaleDetailcxGridDBTVCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ReturnSaleDetailDSDataChange(Sender: TObject; Field: TField);
    procedure ReturnCDSBeforeOpen(DataSet: TDataSet);
    procedure AddMIClick(Sender: TObject);
    procedure SaleDetailcxGridDBTVCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DeleteMIClick(Sender: TObject);
    procedure ReturnPMPopup(Sender: TObject);
    procedure ReturnSaleDetailCDSAfterOpen(DataSet: TDataSet);
    procedure EditMIClick(Sender: TObject);
    procedure PrintMIClick(Sender: TObject);
    procedure FilterPanelResize(Sender: TObject);
    procedure GoodNameFiltercxLCBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GoodIDFiltercxMEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GoodNameFiltercxLCBPropertiesEditValueChanged(
      Sender: TObject);
    procedure BegincxDEPropertiesEditValueChanged(Sender: TObject);
    procedure EndcxDEPropertiesEditValueChanged(Sender: TObject);
    procedure RefreshcxButtonClick(Sender: TObject);
    procedure ReturnSalePMPopup(Sender: TObject);
    procedure EgaisSaleActMIClick(Sender: TObject);
    procedure ClearEgaisSaleActMIClick(Sender: TObject);
    procedure AcceptEgaisSaleActMIClick(Sender: TObject);
    procedure UnConfirmEgaisSaleMIClick(Sender: TObject);
    procedure ConfirmEgaisSaleMIClick(Sender: TObject);
    procedure SalecxGridDBTVCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure IsDeliveredMIClick(Sender: TObject);
    procedure ExportToExcelMIClick(Sender: TObject);
    procedure SaleNewTodayMIClick(Sender: TObject);
    procedure ReturnExciseMIClick(Sender: TObject);
    procedure SaleExciseMIClick(Sender: TObject);
    procedure CancelConfirmMIClick(Sender: TObject);
    procedure EgaisResultMIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fReturn: TfReturn;

implementation

uses uMain, DynamicProvider, uReturnAdd, uEgaisReturn, uEgaisAct, uDelivered,
  uExciseScan, uEgaisResult;

{$R *.dfm}

procedure TfReturn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfReturn.SalecxGridDBTVCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 if AViewInfo.Column.Name=SalecxGridDBTVCONTRACTORID.Name then
  begin
   ConractorIDFiltercxME.Left:=AViewInfo.RealBounds.Left+2;
   ConractorIDFiltercxME.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=SalecxGridDBTVCONTRACTORNAME.Name then
  begin
   ContractorNameFiltercxLCB.Left:=AViewInfo.RealBounds.Left+2;
   ContractorNameFiltercxLCB.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=SalecxGridDBTVSQNNO.Name then
  begin
   SQNNOFiltercxME.Left:=AViewInfo.RealBounds.Left+2;
   SQNNOFiltercxME.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=SalecxGridDBTVPRESENT.Name then
  begin
   PresentFiltercxDE.Left:=AViewInfo.RealBounds.Left+2;
   PresentFiltercxDE.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;
end;

procedure TfReturn.ReturnFiltercxCBClick(Sender: TObject);
begin
 if ReturnFiltercxCB.Checked then
  begin
   TClientDataSet(GoodNameFiltercxLCB.Properties.ListSource.DataSet).Close;
   GoodNameFiltercxLCB.EditValue:=0;
   GoodIDFiltercxME.Clear;
   SalecxSplitter.OpenSplitter;
  end
 else
   SalecxSplitter.CloseSplitter;
end;

procedure TfReturn.SalecxSplitterAfterClose(Sender: TObject);
begin
 ReturnFiltercxCB.Checked:=false;
end;

procedure TfReturn.SalecxSplitterAfterOpen(Sender: TObject);
begin
 ReturnFiltercxCB.Checked:=true;
end;

procedure TfReturn.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
    Img:TBitmap;
    BS:TStream;
    Items: TcxImageComboBoxItems;
    Item: TcxImageComboBoxItem;
begin
 RetVal:=1;
 CompName:='ReturnContractor';
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
    'select * from buytrans_returncontractor(:contractorid,:contractorname)';
   ContractorNameFiltercxLCB.Properties.ListSource:=DS;
   ContractorNameFiltercxLCB.Properties.KeyFieldNames:='CONTRACTORID';
   ContractorNameFiltercxLCB.Properties.ListFieldNames:='CONTRACTORNAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='ReturnSale';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   ReturnSaleCDS.Close;
   ReturnSaleCDS.CommandText:=
    'select * from buytrans_returnsaleviewcalc(:contractorid,:sqnno,:present,:justreturn,:drinkid,:begindate,:enddate)';
   ReturnSaleCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='ReturnSaleDetail';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   ReturnSaleDetailCDS.Close;
   ReturnSaleDetailCDS.CommandText:=
    'select * from buytrans_returnsaledetailview(:saleid)';
   ReturnSaleDetailCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='Return';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   ReturnCDS.Close;
   ReturnCDS.CommandText:=
    'select * from buytrans_returnview(:saledetailid)';
   ReturnCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='ReturnPrint';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   ReturnPrintCDS.Close;
   ReturnPrintCDS.CommandText:=
    'select * from BUYTRANS_RETURNPRINT(:returnid)';
   ReturnPrintCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='ReturnGoodFilter';
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
    'select * from buytrans_returngoodfilter(:id,:name)';
   GoodNameFiltercxLCB.Properties.ListSource:=DS;
   GoodNameFiltercxLCB.Properties.KeyFieldNames:='GOODID';
   GoodNameFiltercxLCB.Properties.ListFieldNames:='GOODNAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;
 BegincxDE.Date:=Date-30;
 EndcxDE.Date:=Date;
 ReturnFiltercxCBClick(nil);

 fMain.AnyCommandCDS.Close;
 fMain.AnyCommandCDS.CommandText:=
  'select * from egaissalestatus order by id';
 fMain.AnyCommandCDS.Open;
 Img:=TBitmap.Create;
 Items:=(SalecxGridDBTVEGAISSTATUS.Properties as TcxImageComboBoxProperties).Items;
 Items.Clear;

 while not fMain.AnyCommandCDS.Eof do
  begin
   try
    Items.BeginUpdate;
    Item := Items.Add as TcxImageComboBoxItem;
    Item.Value := fMain.AnyCommandCDS.FieldByName('ID').Value;
    Item.Description := fMain.AnyCommandCDS.FieldByName('NAME').AsString;

    if not fMain.AnyCommandCDS.FieldByName('IMG').IsNull then
     begin
      BS:= fMain.AnyCommandCDS.CreateBlobStream(fMain.AnyCommandCDS.FieldByName('IMG') as TBlobField, bmRead);
      BS.Position:=0;
      Img.LoadFromStream(BS);
      EgaisIL.AddMasked(Img,Img.TransparentColor);
      Item.ImageIndex := fMain.AnyCommandCDS.FieldByName('ID').AsInteger;
     end;
   finally
    Items.EndUpdate;
   end;
   fMain.AnyCommandCDS.Next;
  end;

 fMain.AnyCommandCDS.Close;
 fMain.AnyCommandCDS.CommandText:=
  'select * from saledeliveredtype order by id';
 fMain.AnyCommandCDS.Open;
 Img:=TBitmap.Create;
 Items:=(SalecxGridDBTVISDELIVERED.Properties as TcxImageComboBoxProperties).Items;
 Items.Clear;

 while not fMain.AnyCommandCDS.Eof do
  begin
   try
    Items.BeginUpdate;
    Item := Items.Add as TcxImageComboBoxItem;
    Item.Value := fMain.AnyCommandCDS.FieldByName('ID').Value;
    Item.Description := fMain.AnyCommandCDS.FieldByName('NAME').AsString;

    if not fMain.AnyCommandCDS.FieldByName('IMG').IsNull then
     begin
      BS:= fMain.AnyCommandCDS.CreateBlobStream(fMain.AnyCommandCDS.FieldByName('IMG') as TBlobField, bmRead);
      BS.Position:=0;
      Img.LoadFromStream(BS);
      DeliveredIL.AddMasked(Img,Img.TransparentColor);
      Item.ImageIndex := fMain.AnyCommandCDS.FieldByName('ID').AsInteger;
     end;
   finally
    Items.EndUpdate;
   end;
   fMain.AnyCommandCDS.Next;
  end;

end;

procedure TfReturn.ConractorIDFiltercxMEEnter(Sender: TObject);
begin
 if ((Sender as TComponent).Name<>ConractorIDFiltercxME.Name) and ((Sender as TComponent).Name<>ContractorNameFiltercxLCB.Name) then
  begin
   ConractorIDFiltercxME.Clear;
   ContractorNameFiltercxLCB.EditValue:=-1;
   TClientDataSet(ContractorNameFiltercxLCB.Properties.ListSource.DataSet).Close;
   ContractorNameFiltercxLCB.Clear;
  end;

 if (Sender as TComponent).Name<>SQNNOFiltercxME.Name then
  SQNNOFiltercxME.Clear;

 if (Sender as TComponent).Name<>PresentFiltercxDE.Name then
  PresentFiltercxDE.Clear;
end;

procedure TfReturn.SQNNOFiltercxMEKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
  PresentFiltercxDEPropertiesChange(self);
end;

procedure TfReturn.PresentFiltercxDEPropertiesChange(Sender: TObject);
begin
 with ReturnSaleCDS do
  try
   ReturnSaleDS.OnDataChange:=nil;
   Close;
   Params[0].Clear;
   Params[1].Clear;
   Params[2].Clear;
   Params[3].Clear;
   Params[4].Clear;
   if ContractorNameFiltercxLCB.Text<>'' then
    Params[0].AsInteger:=ContractorNameFiltercxLCB.EditValue;
   if SQNNOFiltercxME.Text<>'' then
    Params[1].AsString:=SQNNOFiltercxME.Text;
   if PresentFiltercxDE.Text<>'' then
    Params[2].AsDateTime:=PresentFiltercxDE.Date;
   Params[3].AsInteger:=JustReturnFiltercxCB.EditValue;
   if ReturnFiltercxCB.Checked and
      TClientDataSet(GoodNameFiltercxLCB.Properties.ListSource.DataSet).Active and
      (GoodNameFiltercxLCB.EditValue>0) then
    Params[4].AsInteger:=GoodNameFiltercxLCB.EditValue;
   Params[5].AsDateTime:=BegincxDE.Date;
   Params[6].AsDateTime:=EndcxDE.Date;
   Open;
   Last;
  finally
   ReturnSaleDS.OnDataChange:=ReturnSaleDSDataChange;
   ReturnSaleDSDataChange(nil,nil);
  end;
end;

procedure TfReturn.ConractorIDFiltercxMEKeyPress(Sender: TObject;
  var Key: Char);
var CDS:TClientDataSet;
begin
 if (Sender as TcxMaskEdit).Text='' then
  exit;

 if Key=#13 then
  begin
   try
    CDS:=TClientDataSet(ContractorNameFiltercxLCB.Properties.ListSource.DataSet);
    CDS.DisableControls;
    CDS.Close;
    CDS.Params[0].AsInteger:=StrToInt(ConractorIDFiltercxME.Text);
    CDS.Params[1].Clear;
    CDS.Open;
   finally
    CDS.EnableControls;
   end;

   if CDS.Active and (CDS.RecordCount>0) then
    ContractorNameFiltercxLCB.Text:=CDS.FieldByName('CONTRACTORNAME').AsString
   else
    MessageDLG('Контрагент с указанным кодом не найден.',mtInformation,[mbOK],0);
  end;
end;

procedure TfReturn.ContractorNameFiltercxLCBKeyPress(Sender: TObject;
  var Key: Char);
var CDS:TClientDataSet;
begin
 if ContractorNameFiltercxLCB.Text='' then
  begin
   ContractorNameFiltercxLCB.Properties.ListSource.DataSet.Close;
   exit;
  end;

 if Key=#13 then
  begin
   try
    CDS:=TClientDataSet(ContractorNameFiltercxLCB.Properties.ListSource.DataSet);
    CDS.DisableControls;
    CDS.Close;
    CDS.Params[0].Clear;
    CDS.Params[1].AsString:=AnsiUpperCase(ContractorNameFiltercxLCB.Text);
    CDS.Open;
   finally
    CDS.EnableControls;
   end;

   if CDS.RecordCount>0 then
    ContractorNameFiltercxLCB.Text:=CDS.FieldByName('CONTRACTORNAME').AsString;

  end;
end;

procedure TfReturn.ContractorNameFiltercxLCBPropertiesEditValueChanged(
  Sender: TObject);
begin
 if (ContractorNameFiltercxLCB.Text='') or (ContractorNameFiltercxLCB.EditValue=-1) or (ContractorNameFiltercxLCB.EditValue=Null) then
  exit;
 ConractorIDFiltercxME.EditValue:=ContractorNameFiltercxLCB.EditValue;
 PresentFiltercxDEPropertiesChange(ContractorNameFiltercxLCB);
end;

procedure TfReturn.SalecxGridDBTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.DisplayTexts[SalecxGridDBTVFLAGEXCISESALE.Index] <> '0') then
   ACanvas.Brush.Color := $00B5E8B9;

 if (AViewInfo.GridRecord.DisplayTexts[SalecxGridDBTVNORMRETURN.Index] <> '-1') then
   ACanvas.Brush.Color := $00FFC4C4;

 if (AViewInfo.GridRecord.DisplayTexts[SalecxGridDBTVTECHRETURN.Index] <> '-1') then
   ACanvas.Brush.Color := $009696FF;
end;

procedure TfReturn.ReturnSaleDSDataChange(Sender: TObject; Field: TField);
begin
 ReturnSaleDetailDS.OnDataChange:=nil;
 fMain.RefreshCDS(ReturnSaleDetailCDS);
 ReturnSaleDetailDS.OnDataChange:=ReturnSaleDetailDSDataChange;
 ReturnSaleDetailDSDataChange(nil,nil);
 ReturncxGridDBTVEXCISECOUNT.Visible:=(ReturnSaleCDSFLAGEXCISESCAN.AsInteger=1);
end;

procedure TfReturn.ReturnSaleDetailCDSBeforeOpen(DataSet: TDataSet);
begin
 ReturnSaleDetailCDS.Params[0].AsInteger:=ReturnSaleCDSSALEID.AsInteger;
end;

procedure TfReturn.ReturnSaleDetailDSDataChange(Sender: TObject;
  Field: TField);
begin
 fMain.RefreshCDS(ReturnCDS);
end;

procedure TfReturn.ReturnCDSBeforeOpen(DataSet: TDataSet);
begin
 ReturnCDS.Params[0].AsInteger:=ReturnSaleDetailCDSSALEDETAILID.AsInteger;
end;

procedure TfReturn.SaleDetailcxGridDBTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.DisplayTexts[SaleDetailcxGridDBTVNORMRETURN.Index] <> '0') then
   ACanvas.Brush.Color := $00FFC4C4;

 if (AViewInfo.GridRecord.DisplayTexts[SaleDetailcxGridDBTVTECHRETURN.Index] <> '0') then
   ACanvas.Brush.Color := $009696FF;
end;

procedure TfReturn.AddMIClick(Sender: TObject);
begin
 if (ReturnSaleDetailCDSMAXRETURNCOUNTUNIT.AsFloat<=0) or (not AddMI.Enabled) then
  exit;

 if (not Assigned(fReturnAdd)) then
  Application.CreateForm(TfReturnAdd, fReturnAdd);
 fReturnAdd.fReturnLink:=self;
 fReturnAdd.Tag:=0;
 fReturnAdd.ShowModal;
end;

procedure TfReturn.SaleDetailcxGridDBTVCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 AddMIClick(self);
end;

procedure TfReturn.DeleteMIClick(Sender: TObject);
begin
 
 if MessageDlg('Вы действительно хотите удалить выбранную запись?',mtConfirmation,[mbYes, mbNo],0)<>mrYes then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'delete from drinkreturn where id='+ReturnCDSDRINKRETURNID.AsString;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDlg('Ошибка при удалении операции. Исходное сообщение>> '+E.Message,mtError,[mbOk],0);
    exit;
   end;//on E:Exception
  end;//try..except

 fMain.RefreshCDS(ReturnSaleCDS);
end;

procedure TfReturn.ReturnPMPopup(Sender: TObject);
begin
 EditMI.Enabled:=(not ReturnCDS.IsEmpty) and AddMI.Enabled;
 DeleteMI.Enabled:=EditMI.Enabled;
 PrintMI.Enabled:=EditMI.Enabled;

 ReturnExciseMI.Visible:=(ReturnSaleCDSFLAGEXCISESCAN.AsInteger=1);
 ReturnExciseLineMI.Visible:=ReturnExciseMI.Visible;
end;

procedure TfReturn.ReturnSaleDetailCDSAfterOpen(DataSet: TDataSet);
begin
 AddMI.Enabled:=(not ReturnSaleDetailCDS.IsEmpty) and (Pos('R',fMain.AdvancedGrant)>0);
 SaleDetailcxGridDBTVEGAISINFORMREGID.Visible:=(ReturnSaleDetailCDSEGAISSTORAGEFLAG.AsInteger=1);
end;

procedure TfReturn.EditMIClick(Sender: TObject);
begin
 if (not Assigned(fReturnAdd)) then
  Application.CreateForm(TfReturnAdd, fReturnAdd);
 fReturnAdd.fReturnLink:=self;
 fReturnAdd.Tag:=ReturnCDSDRINKRETURNID.AsInteger;
 fReturnAdd.ShowModal;
end;

procedure TfReturn.PrintMIClick(Sender: TObject);
begin
 if ReturnCDSRETURNTYPEID.AsInteger<>1 then
  exit;

 ReturnPrintCDS.Params[0].AsInteger:=ReturnCDSDRINKRETURNID.AsInteger;
 fMain.RefreshCDS(ReturnPrintCDS);
 ReturnfrxReport.PrepareReport;
 ReturnfrxReport.ShowReport;
end;

procedure TfReturn.FilterPanelResize(Sender: TObject);
begin
 GoodNameFiltercxLCB.Left:=5;
 GoodNameFiltercxLCB.Width:=FilterPanel.Width-10;
 GoodIDFiltercxME.Left:=FilterPanel.Width-Round(FilterPanel.Width/4);
 GoodIDFiltercxME.Width:=Round(FilterPanel.Width/4)-5;
 GoodNameFilterLabel.Left:=7;
 GoodIDFilterLabel.Left:=FilterPanel.Width-Round(FilterPanel.Width/4)-75;
end;

procedure TfReturn.GoodIDFiltercxMEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var CDS:TClientDataSet;
begin
 if (Sender as TcxMaskEdit).Text='' then
  exit;

 if Key=VK_RETURN then
  begin
   CDS:=TClientDataSet(GoodNameFiltercxLCB.Properties.ListSource.DataSet);
   CDS.Params[0].AsInteger:=StrToInt(GoodIDFiltercxME.Text);
   CDS.Params[1].Clear;
   try
    fMain.RefreshCDS(CDS);
   except
    ;
   end;

   if CDS.Active and (not CDS.IsEmpty) then
    GoodNameFiltercxLCB.Text:=CDS.FieldByName('GOODNAME').AsString
   else
    MessageDLG('Товар с указанным кодом не найден.',mtInformation,[mbOK],0);
  end;
end;

procedure TfReturn.GoodNameFiltercxLCBKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var CDS:TClientDataSet;
begin
 if Key=VK_RETURN then
  begin
   CDS:=TClientDataSet(GoodNameFiltercxLCB.Properties.ListSource.DataSet);
   CDS.Params[0].Clear;
   CDS.Params[1].AsString:=AnsiUpperCase(GoodNameFiltercxLCB.Text);
   try
    fMain.RefreshCDS(CDS);
   except
    ;
   end;
   if CDS.Active and (not CDS.IsEmpty) then
    GoodNameFiltercxLCB.Text:=CDS.FieldByName('GOODNAME').AsString;
  end; 
end;

procedure TfReturn.GoodNameFiltercxLCBPropertiesEditValueChanged(
  Sender: TObject);
var CDS:TClientDataSet;
begin
 CDS:=TClientDataSet(GoodNameFiltercxLCB.Properties.ListSource.DataSet);
 if CDS.Active and (not CDS.IsEmpty) and (GoodNameFiltercxLCB.EditValue>0) then
  begin
   GoodIDFiltercxME.Text:=IntToStr(GoodNameFiltercxLCB.EditValue);
   PresentFiltercxDEPropertiesChange(Sender);
  end;
end;

procedure TfReturn.BegincxDEPropertiesEditValueChanged(Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  EndcxDE.Date:=BegincxDE.Date;
end;

procedure TfReturn.EndcxDEPropertiesEditValueChanged(Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  BegincxDE.Date:=EndcxDE.Date;
end;

procedure TfReturn.RefreshcxButtonClick(Sender: TObject);
begin
 PresentFiltercxDEPropertiesChange(Self);     
end;

procedure TfReturn.ReturnSalePMPopup(Sender: TObject);
var flag:boolean;
begin
 flag:=true; if (not ReturnSaleCDS.Active) or ReturnSaleCDS.IsEmpty then flag:=false;
 EgaisSaleActMI.Visible:=flag;
 AcceptEgaisSaleActMI.Visible:=flag;
 ClearEgaisSaleActMI.Visible:=flag;
 UnConfirmEgaisSaleMI.Visible:=flag;
 ConfirmEgaisSaleMI.Visible:=flag;

 SaleExciseMI.Visible:=ReturnSaleCDSFLAGEXCISESALE.AsInteger=1;
 if flag then
  begin
   fMain.AnyCommandCDS.Close;
   fMain.AnyCommandCDS.CommandText:=
    'select * from buytrans_returnegaissalepm('+ReturnSaleCDSSALEID.AsString+')';
   fMain.AnyCommandCDS.Open;

   EgaisSaleActMI.Visible:=(not fMain.AnyCommandCDS.FieldByName('egaissaleactmi').IsNull);
   EgaisSaleActMI.ImageIndex:=fMain.AnyCommandCDS.FieldByName('egaissaleactmi').AsInteger;

   AcceptEgaisSaleActMI.Visible:=(not fMain.AnyCommandCDS.FieldByName('acceptegaissaleactmi').IsNull);
   AcceptEgaisSaleActMI.ImageIndex:=fMain.AnyCommandCDS.FieldByName('acceptegaissaleactmi').AsInteger;

   ClearEgaisSaleActMI.Visible:=(not fMain.AnyCommandCDS.FieldByName('clearegaissaleactmi').IsNull);
   ClearEgaisSaleActMI.ImageIndex:=fMain.AnyCommandCDS.FieldByName('clearegaissaleactmi').AsInteger;

   UnConfirmEgaisSaleMI.Visible:=(not fMain.AnyCommandCDS.FieldByName('unconfirmegaissalemi').IsNull);
   UnConfirmEgaisSaleMI.ImageIndex:=fMain.AnyCommandCDS.FieldByName('unconfirmegaissalemi').AsInteger;

   ConfirmEgaisSaleMI.Visible:=(not fMain.AnyCommandCDS.FieldByName('confirmegaissalemi').IsNull);
   ConfirmEgaisSaleMI.ImageIndex:=fMain.AnyCommandCDS.FieldByName('confirmegaissalemi').AsInteger;

   SaleNewTodayMI.Visible:=(not fMain.AnyCommandCDS.FieldByName('SaleNewTodayMI').IsNull);
   SaleNewTodayMI.ImageIndex:=fMain.AnyCommandCDS.FieldByName('SaleNewTodayMI').AsInteger;
  end;

 CancelConfirmMI.Visible:=(ReturnSaleCDSFLAGCANCELCONFIRM.AsInteger=1);
 FirstLineMI.Visible:=EgaisSaleActMI.Visible or UnConfirmEgaisSaleMI.Visible or ConfirmEgaisSaleMI.Visible;
 SecondLineMI.Visible:=UnConfirmEgaisSaleMI.Visible or ConfirmEgaisSaleMI.Visible or SaleExciseMI.Visible or SaleNewTodayMI.Visible;
 EgaisResultMI.Visible:=(ReturnSaleCDSEGAISSTATUS.AsInteger>4);
end;

procedure TfReturn.EgaisSaleActMIClick(Sender: TObject);
begin
 if (not Assigned(fEgaisReturn)) then
  Application.CreateForm(TfEgaisReturn, fEgaisReturn);
 fEgaisReturn.fReturnLink:=self;
 if fEgaisReturn.ShowModal=mrOk then
  fMain.RefreshCDS(ReturnSaleCDS);
end;

procedure TfReturn.ClearEgaisSaleActMIClick(Sender: TObject);
begin
 if MessageDlg('Вы действительно хотите удалить сделанные вычерки полученные из ЕГАИС?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'execute procedure buytrans_returnegaisdel('+ReturnSaleCDSSALEID.AsString+')';
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDlg('Ошибка: '+E.Message,mtError,[mbOk],0);
    exit;
   end;//on E:Exception
  end;//try..except }

 fMain.RefreshCDS(ReturnSaleCDS);
end;

procedure TfReturn.AcceptEgaisSaleActMIClick(Sender: TObject);
begin
 if ReturnSaleCDS.IsEmpty then
  exit;

 if (not Assigned(fEgaisAct)) then
  Application.CreateForm(TfEgaisAct, fEgaisAct);

 if (ReturnSaleCDSEGAISSTATUS.AsInteger=19) then
  begin
   fEgaisAct.Tag:=1;
   fEgaisAct.AcceptxCB.Checked:=false;
   fEgaisAct.AcceptxCB.Enabled:=true;
   fEgaisAct.AcceptxCBPropertiesEditValueChanged(fEgaisAct.AcceptxCB);
  end
 else
  begin
   fEgaisAct.Tag:=0;
   fEgaisAct.AcceptxCB.Enabled:=false;   
   if ReturnSaleCDSEGAISRETURN.AsInteger=0 then fEgaisAct.AcceptxCB.Checked:=false
                                           else fEgaisAct.AcceptxCB.Checked:=true;
   fEgaisAct.AcceptxCBPropertiesEditValueChanged(fEgaisAct.AcceptxCB);
  end;

 if fEgaisAct.ShowModal=mrOk then
  begin
  if MessageDlg('Вы действительно хотите отправить подтверждение изменений в ЕГАИС?'+#10+#13+
                 'Её далнейшее редактирование будет запрещено.' ,mtConfirmation,[mbYes,mbNo],0)<>mrYes then
    exit;

   with fMain do
    try
     SocketConnection.AppServer.DBStartTransaction;
     InUpDelCDS.Close;
     if fEgaisAct.Tag=0 then
      InUpDelCDS.CommandText:=
       'execute procedure buytrans_egaissaleactanswer('+ReturnSaleCDSSALEID.AsString+','+#39+fEgaisAct.CommentarycxTE.Text+#39+')';
     if fEgaisAct.Tag=1 then
      InUpDelCDS.CommandText:=
       'execute procedure buytrans_egaissalerepealanswer('+ReturnSaleCDSSALEID.AsString+','+IntToStr(fEgaisAct.AcceptxCB.EditValue)+','+#39+fEgaisAct.CommentarycxTE.Text+#39+')';
     InUpDelCDS.Execute;
     SocketConnection.AppServer.DBCommit;
    except on E: Exception do
     begin
      SocketConnection.AppServer.DBRollback;
      MessageDlg('Ошибка добавления накладной!' + #13+ ' ' + E.Message,mtError,[mbOk],0);
      exit;
     end; //on
    end; //try..except
   fMain.RefreshCDS(ReturnSaleCDS);
  end;
end;

procedure TfReturn.UnConfirmEgaisSaleMIClick(Sender: TObject);
begin
 if MessageDlg('Вы действительно хотите отменить отправку накладной в ЕГАИС?'+#10+#13+
               'Покупатель не сможет принять ее.' ,mtConfirmation,[mbYes,mbNo],0)<>mrYes then
  exit;

  with fMain do
   try
    SocketConnection.AppServer.DBStartTransaction;
    InUpDelCDS.Close;
    InUpDelCDS.CommandText:=
     'execute procedure buytrans_returnegaissale('+ReturnSaleCDSSALEID.AsString+',0)';
    InUpDelCDS.Execute;
    SocketConnection.AppServer.DBCommit;
   except on E: Exception do
    begin
     SocketConnection.AppServer.DBRollback;
     MessageDlg('Ошибка добавления накладной!' + #13+ ' ' + E.Message,mtError,[mbOk],0);
     exit;
    end; //on
   end; //try..except
  fMain.RefreshCDS(ReturnSaleCDS);
end;

procedure TfReturn.ConfirmEgaisSaleMIClick(Sender: TObject);
begin
 if MessageDlg('Вы действительно хотите отправить накладную в ЕГАИС?'+#10+#13+
                 'Её далнейшее редактирование будет запрещено.' ,mtConfirmation,[mbYes,mbNo],0)<>mrYes then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'execute procedure buytrans_returnegaissale('+ReturnSaleCDSSALEID.AsString+',1)';
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E: Exception do
   begin
    SocketConnection.AppServer.DBRollback;
    MessageDlg('Ошибка добавления накладной!' + #13+ ' ' + E.Message,mtError,[mbOk],0);
    exit;
   end; //on
  end; //try..except
 fMain.RefreshCDS(ReturnSaleCDS);
end;

procedure TfReturn.SalecxGridDBTVCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 with fMain do
  begin
   AnyCommandCDS.Close;
   AnyCommandCDS.CommandText:=
    'select commentary from egais_salecomment('+ReturnSaleCDSSALEID.AsString+')';
   AnyCommandCDS.Open;
   if (not AnyCommandCDS.IsEmpty) and (AnyCommandCDS.Fields[0].AsString<>'') then
    ShowMessage(AnyCommandCDS.Fields[0].AsString);
  end;
end;

procedure TfReturn.IsDeliveredMIClick(Sender: TObject);
begin
 if (not Assigned(fDelivered)) then
  Application.CreateForm(TfDelivered, fDelivered);

 if (not ReturnSaleCDS.Active) or (ReturnSaleCDS.IsEmpty) then
  begin
   fDelivered.Tag:=0;
   fDelivered.ScannerDocStatusPanel.Caption:='Обработка накладных при помощи сканера';
  end
 else
  begin
   fDelivered.ScannerDocStatusPanel.Caption:='Накладная №'+ReturnSaleCDSSQNNO.AsString+' от '+ReturnSaleCDSPRESENT.AsString;
   fDelivered.Tag:=ReturnSaleCDSSALEID.AsInteger;
  end;

 fDelivered.ShowModal;
 fMain.RefreshCDS(ReturnSaleCDS);
end;

procedure TfReturn.ExportToExcelMIClick(Sender: TObject);
begin
 with fMain.SaveDialog do
  begin
   DefaultExt := 'xls';
   Filter := 'Microsoft Excel 2000 (*.xls)|*.xls';
   FileName := 'Накладные.xls';
   if Execute then
    ExportGrid4ToExcel(FileName,SalecxGrid);
  end;
end;

procedure TfReturn.SaleNewTodayMIClick(Sender: TObject);
begin
 if MessageDlg('Вы действительно хотите обнулить текущую и сделанные копию накладной в текущем дне?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'execute procedure buytrans_returnegaissalenew('+ReturnSaleCDSSALEID.AsString+')';
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDlg('Ошибка: '+E.Message,mtError,[mbOk],0);
    exit;
   end;//on E:Exception
  end;//try..except }

 fMain.RefreshCDS(ReturnSaleCDS);
end;

procedure TfReturn.ReturnExciseMIClick(Sender: TObject);
begin
 if (not Assigned(fExciseScan)) then
  Application.CreateForm(TfExciseScan, fExciseScan);
 fExciseScan.ViewCDS.Params[0].AsInteger:=2;
 fExciseScan.ViewCDS.Params[1].AsInteger:=ReturnSaleCDSSALEID.AsInteger;
 fExciseScan.ExcisecxButton.Enabled:=(ReturnSaleCDSFLAGEXCISESCAN.AsInteger=1);
 fExciseScan.ShowModal;
 fMain.RefreshCDS(ReturnCDS);
end;

procedure TfReturn.SaleExciseMIClick(Sender: TObject);
begin
 if (not Assigned(fExciseScan)) then
  Application.CreateForm(TfExciseScan, fExciseScan);
 fExciseScan.ViewCDS.Params[0].AsInteger:=5;
 fExciseScan.ViewCDS.Params[1].AsInteger:=ReturnSaleCDSSALEID.AsInteger;
 fExciseScan.ExcisecxButton.Enabled:=(ReturnSaleCDSFLAGEXCISESALE.AsInteger=1);
 fExciseScan.ShowModal;
 fMain.RefreshCDS(ReturnSaleCDS);
end;

procedure TfReturn.CancelConfirmMIClick(Sender: TObject);
begin
 if MessageDlg('Вы действительно хотите отозвать подтверждение накладной на ТТ?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'execute procedure buytrans_returncancelconfirm('+ReturnSaleCDSSALEID.AsString+')';
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDlg('Ошибка: '+E.Message,mtError,[mbOk],0);
    exit;
   end;//on E:Exception
  end;//try..except }

 fMain.RefreshCDS(ReturnSaleCDS);
end;

procedure TfReturn.EgaisResultMIClick(Sender: TObject);
begin
 if (not Assigned(fEgaisResult)) then
  Application.CreateForm(TfEgaisResult, fEgaisResult);
 fEgaisResult.Tag:=1;
 fEgaisResult.ResultcxMemo.Tag:=ReturnSaleCDSSALEID.AsInteger;
 fEgaisResult.ShowModal;
end;

end.
