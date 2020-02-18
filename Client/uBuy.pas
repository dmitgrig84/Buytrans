unit uBuy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxImageComboBox, cxCurrencyEdit, cxTextEdit,
  IBCustomDataSet, Menus, DBClient, cxSplitter, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDropDownEdit, cxCalendar, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, Buttons,
  ExtCtrls, ImgList, cxExportGrid4Link, frxClass, frxDBSet, frxBarCode;

type
  TfBuy = class(TForm)
    SearchTopPanel: TPanel;
    Panel2: TPanel;
    RefreshBB: TBitBtn;
    StorageFiltercxLCB: TcxLookupComboBox;
    DirectorViewFiltercxICB: TcxImageComboBox;
    NumberDocFiltercxTE: TcxTextEdit;
    InputDateFiltercxDE: TcxDateEdit;
    ProviderFiltercxLCB: TcxLookupComboBox;
    BuyTypeFiltercxLCB: TcxLookupComboBox;
    BuycxGrid: TcxGrid;
    BuycxGridDBTV: TcxGridDBTableView;
    BuycxGridDBTVNOTCOMPLITESUM: TcxGridDBColumn;
    BuycxGridDBTVDIRECTORVIEW: TcxGridDBColumn;
    BuycxGridDBTVID: TcxGridDBColumn;
    BuycxGridDBTVADDBUY: TcxGridDBColumn;
    BuycxGridDBTVINPUTNUMBER: TcxGridDBColumn;
    BuycxGridDBTVNUMBERCF: TcxGridDBColumn;
    BuycxGridDBTVINPUTDATE: TcxGridDBColumn;
    BuycxGridDBTVWHENINSERT: TcxGridDBColumn;
    BuycxGridDBTVFIRMNAME: TcxGridDBColumn;
    BuycxGridDBTVADDRESS: TcxGridDBColumn;
    BuycxGridDBTVSTORAGENAME: TcxGridDBColumn;
    BuycxGridDBTVBOTTLECOUNT: TcxGridDBColumn;
    BuycxGridDBTVPROVIDERPRICESUM: TcxGridDBColumn;
    BuycxGridDBTVPROVIDERNDSSUM: TcxGridDBColumn;
    BuycxGridDBTVWHOLESUM: TcxGridDBColumn;
    BuycxGridDBTVTICKEDFORM: TcxGridDBColumn;
    BuycxGridDBTVBUYTYPENAME: TcxGridDBColumn;
    BuycxGridDBTVSTORAGESUM: TcxGridDBColumn;
    BuycxGridDBTVNDSSUM: TcxGridDBColumn;
    BuycxGridDBTVSTORAGETYPEID: TcxGridDBColumn;
    BuycxGridDBTVFIRMID: TcxGridDBColumn;
    BuycxGridDBTVWHO: TcxGridDBColumn;
    BuycxGridDBTVTRADENAME: TcxGridDBColumn;
    BuycxGridDBTVBUYTYPEID: TcxGridDBColumn;
    BuycxGridDBTVBUYINPUTNUMBER: TcxGridDBColumn;
    BuycxGridDBTVWHODIRECTORVIEW: TcxGridDBColumn;
    BuycxGridDBTVWHENDIRECTORVIEW: TcxGridDBColumn;
    BuycxGridDBTVSTORAGEID: TcxGridDBColumn;
    BuycxGridDBTVINVENTORYID: TcxGridDBColumn;
    BuycxGridDBTVDISTRIBUTIONID: TcxGridDBColumn;
    BuycxGridDBTVTRADEEMPLOYEEID: TcxGridDBColumn;
    BuycxGridDBTVSHORTNAME: TcxGridDBColumn;
    BuycxGridDBTVLICENSE: TcxGridDBColumn;
    BuycxGridDBTVDEPARTMENTNAME: TcxGridDBColumn;
    BuycxGridDBTVCARRIERNAME: TcxGridDBColumn;
    BuycxGridDBTVINBUY: TcxGridDBColumn;
    BuycxGridLevel: TcxGridLevel;
    BuyDetailcxGrid: TcxGrid;
    BuyDetailcxGridDBTV: TcxGridDBTableView;
    BuyDetailcxGridDBTVBUYID: TcxGridDBColumn;
    BuyDetailcxGridDBTVDRINKKINDID: TcxGridDBColumn;
    BuyDetailcxGridDBTVDRINKID: TcxGridDBColumn;
    BuyDetailcxGridDBTVPRINTMARK: TcxGridDBColumn;
    BuyDetailcxGridDBTVMAXRETAILPRICE: TcxGridDBColumn;
    BuyDetailcxGridDBTVBUYBOX: TcxGridDBColumn;
    BuyDetailcxGridDBTVSALEBOX: TcxGridDBColumn;
    BuyDetailcxGridDBTVPRICECONTRACTORDER: TcxGridDBColumn;
    BuyDetailcxGridDBTVNDSCONTRACTORDER: TcxGridDBColumn;
    BuyDetailcxGridDBTVSUMPRICE: TcxGridDBColumn;
    BuyDetailcxGridDBTVSUMNDS: TcxGridDBColumn;
    BuyDetailcxGridDBTVBOTTLECOUNT: TcxGridDBColumn;
    BuyDetailcxGridDBTVSALEBOXCOUNT: TcxGridDBColumn;
    BuyDetailcxGridDBTVSTORAGENAME: TcxGridDBColumn;
    BuyDetailcxGridDBTVLICENSE: TcxGridDBColumn;
    BuyDetailcxGridDBTVDRINKGROUPTYPENAME: TcxGridDBColumn;
    BuyDetailcxGridDBTVDATEFACTORY: TcxGridDBColumn;
    BuyDetailcxGridDBTVEXCISELINE: TcxGridDBColumn;
    BuyDetailcxGridLevel: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    BuyCDS: TClientDataSet;
    BuyCDSID: TIntegerField;
    BuyCDSADDBUY: TIntegerField;
    BuyCDSINPUTNUMBER: TStringField;
    BuyCDSINPUTDATE: TDateTimeField;
    BuyCDSFIRMNAME: TStringField;
    BuyCDSSTORAGENAME: TStringField;
    BuyCDSTICKEDFORM: TIntegerField;
    BuyCDSSTORAGESUM: TFloatField;
    BuyCDSNDSSUM: TFloatField;
    BuyCDSWHOLESUM: TBCDField;
    BuyCDSPROVIDERPRICESUM: TBCDField;
    BuyCDSSTORAGETYPEID: TIntegerField;
    BuyCDSPROVIDERNDSSUM: TBCDField;
    BuyCDSBUYTYPENAME: TStringField;
    BuyCDSFIRMID: TIntegerField;
    BuyCDSBOTTLECOUNT: TFloatField;
    BuyCDSNUMBERCF: TStringField;
    BuyCDSWHENINSERT: TDateTimeField;
    BuyCDSWHO: TStringField;
    BuyCDSADDRESS: TStringField;
    BuyCDSTRADENAME: TStringField;
    BuyCDSLICENSE: TStringField;
    BuyCDSMARKETNAME: TStringField;
    BuyCDSBUYTYPEID: TIntegerField;
    BuyCDSBUYINPUTNUMBER: TIntegerField;
    BuyCDSDIRECTORVIEW: TIntegerField;
    BuyCDSWHODIRECTORVIEW: TStringField;
    BuyCDSWHENDIRECTORVIEW: TDateTimeField;
    BuyCDSSTORAGEID: TIntegerField;
    BuyCDSINVENTORYID: TIntegerField;
    BuyCDSDISTRIBUTIONID: TIntegerField;
    BuyCDSTRADEEMPLOYEEID: TIntegerField;
    BuyCDSSHORTNAME: TStringField;
    BuyCDSNOTCOMPLITESUM: TSmallintField;
    BuyCDSDEPARTMENTID: TIntegerField;
    BuyCDSDEPARTMENTNAME: TStringField;
    BuyCDSCARRIERID: TIntegerField;
    BuyCDSCARRIERCARMARK: TStringField;
    BuyCDSCARRIERCARLICENSEPLATE: TStringField;
    BuyCDSCARRIERNAME: TStringField;
    BuyCDSMAXRETAILPRICESUM: TFloatField;
    BuyCDSINBUY: TSmallintField;
    BuyCDSCORRECTION: TSmallintField;
    BuyDS: TDataSource;
    BuyPM: TPopupMenu;
    AddBuyMI: TMenuItem;
    EditBuyMI: TMenuItem;
    DeleteBuyMI: TMenuItem;
    N5: TMenuItem;
    PrintBuyMI: TMenuItem;
    ExportToExcelBuyMI: TMenuItem;
    PrintTorgBuyMI: TMenuItem;
    N6: TMenuItem;
    AccessBuyMI: TMenuItem;
    AccessComeBuyMI: TMenuItem;
    BuyDetailPM: TPopupMenu;
    AddBuyDetailMI: TMenuItem;
    EditBuyDetailMI: TMenuItem;
    DeleteBuyDetailMI: TMenuItem;
    BuyDetailDS: TDataSource;
    BuyDetailCDS: TClientDataSet;
    BuyDetailCDSBUYID: TIntegerField;
    BuyDetailCDSDRINKKINDID: TIntegerField;
    BuyDetailCDSDRINKID: TIntegerField;
    BuyDetailCDSBUYBOX: TStringField;
    BuyDetailCDSSALEBOX: TStringField;
    BuyDetailCDSPRICECONTRACTORDER: TFloatField;
    BuyDetailCDSNDSCONTRACTORDER: TFloatField;
    BuyDetailCDSSUMPRICE: TFloatField;
    BuyDetailCDSSUMNDS: TFloatField;
    BuyDetailCDSDRINKGROUPNAME: TStringField;
    BuyDetailCDSDATEFACTORY: TStringField;
    BuyDetailCDSSTORAGENAME: TStringField;
    BuyDetailCDSPRINTMARK: TStringField;
    BuyDetailCDSDISTRIBUTIONID: TIntegerField;
    BuyDetailCDSLICENSE: TStringField;
    BuyDetailCDSCOUNTUNIT: TFloatField;
    BuyDetailCDSSALEBOXCOUNT: TFloatField;
    BuyDetailCDSDRINKGROUPTYPENAME: TIBStringField;
    BuyDetailCDSIMPORTERID: TIntegerField;
    BuyDetailCDSMAXRETAILPRICE: TFloatField;
    BuyDetailCDSEXCISELINE: TStringField;
    BuyDetailCDSID: TIntegerField;
    DirectorViewImageList: TImageList;
    BuyTickedFormIL: TImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    BuyDetailCDSSTORAGEID: TIntegerField;
    BuyDetailCDSBUYBOXID: TIntegerField;
    BuyDetailCDSSALEBOXID: TIntegerField;
    BuyDetailCDSBARCODE: TStringField;
    BuyfrxReport: TfrxReport;
    BuyfrxDBDataset: TfrxDBDataset;
    BuyPrintCDS: TClientDataSet;
    BuyPrintCDSBUYID: TIntegerField;
    BuyPrintCDSDRINKID: TIntegerField;
    BuyPrintCDSDRINKKINDID: TIntegerField;
    BuyPrintCDSBUYBOX: TStringField;
    BuyPrintCDSSALEBOX: TStringField;
    BuyPrintCDSBUYCAPACITY: TIntegerField;
    BuyPrintCDSSALECAPACITY: TIntegerField;
    BuyPrintCDSACAPACITY: TIntegerField;
    BuyPrintCDSBUYBOXCOUNT: TFloatField;
    BuyPrintCDSSALEBOXCOUNT: TFloatField;
    BuyPrintCDSDATEFACTORY: TStringField;
    BuyPrintCDSWEIGHT: TFloatField;
    BuyPrintCDSSTORAGEID: TIntegerField;
    BuyPrintCDSPRINTMARK: TStringField;
    BuyPrintCDSCOUNTUNIT: TFloatField;
    BuyPrintCDSEXCISELINE: TStringField;
    BuyPrintCDSSUMVOLUME: TFloatField;
    BuyPrintCDSPARTYCERTIFICATEID: TIntegerField;
    BuyPrintCDSBUYBARCODE: TStringField;
    BuyPrintCDSBUYNUMBERDOC: TStringField;
    BuyPrintCDSBUYINPUTDATE: TDateTimeField;
    BuyPrintCDSBUYCONTRACTORNAME: TStringField;
    BuyPrintCDSBUYSTORAGESNAME: TStringField;
    BuyPrintCDSBUYDETAILBARCODE: TStringField;
    BuyPrintCDSBARCODE: TStringField;
    BuyPrintSubCDS: TClientDataSet;
    BuyPrintSubCDSDRINKID_COLUMN1: TIntegerField;
    BuyPrintSubCDSCOUNTUNIT_COLUMN1: TIntegerField;
    BuyPrintSubCDSBASIS_COLUMN1: TStringField;
    frxDBDataset: TfrxDBDataset;
    BuyPrintSubCDSDRINKID_COLUMN2: TIntegerField;
    BuyPrintSubCDSCOUNTUNIT_COLUMN2: TIntegerField;
    BuyPrintSubCDSBASIS_COLUMN2: TStringField;
    BuyPrintSubCDSCOUNTER: TIntegerField;
    BuyPrintCDSBUYSTORAGETYPEID: TIntegerField;
    BuyCDSTRADEEMPLOYEENAME: TStringField;
    BuycxGridDBTVTRADEEMPLOYEENAME: TcxGridDBColumn;
    BuyDetailCDSSSPRICECONTRACTORDER: TFloatField;
    N1: TMenuItem;
    SaleDummyMI: TMenuItem;
    TransTermMI: TMenuItem;
    BuyCDSISDUMMYSTORAGE: TIntegerField;
    BuyCDSSALEID: TIntegerField;
    BuyCDSSTORAGEDISTRIBUTIONID: TIntegerField;
    BuyDetailCDSLINKTOSALE: TStringField;
    BuyDetailcxGridDBTVLINKTOSALE: TcxGridDBColumn;
    N2: TMenuItem;
    DeleteLinkToSaleMI: TMenuItem;
    AutoWidthMI: TMenuItem;
    BuyDetailCDSRETAILPRICE: TFloatField;
    BuyDetailCDSSUMRETAILPRICE: TFloatField;
    BuyDetailCDSSUMPROFIT: TFloatField;
    BuyDetailcxGridDBTVRETAILPRICE: TcxGridDBColumn;
    BuyDetailcxGridDBTVSUMRETAILPRICE: TcxGridDBColumn;
    BuyDetailcxGridDBTVSUMPROFIT: TcxGridDBColumn;
    EgaisMI: TMenuItem;
    TransOrgMI: TMenuItem;
    SaleActMI: TMenuItem;
    EgaisLinaMI: TMenuItem;
    BuyDetailCDSCOEFFMEAS: TIntegerField;
    BuyCDSBANKACCOUNT: TStringField;
    BuyCDSSUMRETAILPRICE: TBCDField;
    BuycxGridDBTVSUMRETAILPRICE: TcxGridDBColumn;
    BuycxGridDBTVSTORAGEDISTRIBUTIONID: TcxGridDBColumn;
    BuyCDSACTIVITYKINDID: TIntegerField;
    BuyDetailcxGridDBTVSSPRICECONTRACTORDER: TcxGridDBColumn;
    BuyDetailCDSSUMPROVIDERPRICE: TFloatField;
    BuyDetailcxGridDBTVSUMPROVIDERPRICE: TcxGridDBColumn;
    BuyRDIMI: TMenuItem;
    RDILineMI: TMenuItem;
    BuycxGridDBTVISDUMMYSTORAGE: TcxGridDBColumn;
    BuycxGridDBTVSALEID: TcxGridDBColumn;
    BuyCDSVETISBUYSTATUSID: TIntegerField;
    BuycxGridDBTVVETISBUYSTATUSID: TcxGridDBColumn;
    VetisVSDLinkMI: TMenuItem;
    BuyDetailcxGridDBTVID: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuycxGridDBTVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure BuycxGridDBTVCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RefreshBBClick(Sender: TObject);
    procedure ExportToExcelBuyMIClick(Sender: TObject);
    procedure BuyPMPopup(Sender: TObject);
    procedure AddBuyMIClick(Sender: TObject);
    procedure EditBuyMIClick(Sender: TObject);
    procedure DeleteBuyMIClick(Sender: TObject);
    procedure PrintBuyMIClick(Sender: TObject);
    procedure PrintTorgBuyMIClick(Sender: TObject);
    procedure AccessBuyMIClick(Sender: TObject);
    procedure AccessComeBuyMIClick(Sender: TObject);
    procedure BuyDSDataChange(Sender: TObject; Field: TField);
    procedure BuyDetailPMPopup(Sender: TObject);
    procedure AddBuyDetailMIClick(Sender: TObject);
    procedure EditBuyDetailMIClick(Sender: TObject);
    procedure DeleteBuyDetailMIClick(Sender: TObject);
    procedure DirectorViewFiltercxICBPropertiesCloseUp(Sender: TObject);
    procedure DirectorViewFiltercxICBEnter(Sender: TObject);
    procedure NumberDocFiltercxTEKeyPress(Sender: TObject; var Key: Char);
    procedure TransTermMIClick(Sender: TObject);
    procedure SaleDummyMIClick(Sender: TObject);
    procedure DeleteLinkToSaleMIClick(Sender: TObject);
    procedure AutoWidthMIClick(Sender: TObject);
    procedure EgaisMIClick(Sender: TObject);
    procedure TransOrgMIClick(Sender: TObject);
    procedure SaleActMIClick(Sender: TObject);
    procedure BuyRDIMIClick(Sender: TObject);
    procedure VetisVSDLinkMIClick(Sender: TObject);
  private
    { Private declarations }
  public
   procedure EnablePanel(EnablePanel:TPanel;Flag:boolean);
  end;

var
  fBuy: TfBuy;

implementation

uses uMain, uBuyAdd, uBuyAddDetail,DynamicProvider, uBuyTransTerm,
  uDistributionEdit, uEgaisBuy, uEgaisSaleAct, uRDIBuy, uVetisVsd;

{$R *.dfm}

procedure TfBuy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfBuy.BuycxGridDBTVCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var lTextToDraw:string;
    lColFont:TFont;
begin
 if (AViewInfo.GridRecord.DisplayTexts[BuycxGridDBTVINBUY.Index] = '1') then
   ACanvas.Brush.Color := $C0FFC0;

 if (AViewInfo.GridRecord.DisplayTexts[BuycxGridDBTVVETISBUYSTATUSID.Index] <>'0' ) then
  ACanvas.Brush.Color := $000080FF;

 if (AViewInfo.GridRecord.DisplayTexts[BuycxGridDBTVNOTCOMPLITESUM.Index]='1') then
  begin
   ACanvas.Brush.Color := $00DFDFFF;
   PrintBuyMI.Enabled:=False;
  end
 else
  PrintBuyMI.Enabled:=True;

 if (BuyCDSADDBUY.asInteger=-1) and (BuyCDSSTORAGETYPEID.AsInteger<>6) then
    PrintBuyMI.Enabled:=False;
end;

procedure TfBuy.BuycxGridDBTVCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 if AViewInfo.Column.Name=BuycxGridDBTVDIRECTORVIEW.Name then
  begin
   DirectorViewFiltercxICB.Left:=AViewInfo.RealBounds.Left+2;
   DirectorViewFiltercxICB.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=BuycxGridDBTVINPUTNUMBER.Name then
  begin
   NumberDocFiltercxTE.Left:=AViewInfo.RealBounds.Left+2;
   NumberDocFiltercxTE.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=BuycxGridDBTVINPUTDATE.Name then
  begin
   InputDateFiltercxDE.Left:=AViewInfo.RealBounds.Left+2;
   InputDateFiltercxDE.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=BuycxGridDBTVFIRMNAME.Name then
  begin
   ProviderFiltercxLCB.Left:=AViewInfo.RealBounds.Left+2;
   ProviderFiltercxLCB.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=BuycxGridDBTVSTORAGENAME.Name then
  begin
   StorageFiltercxLCB.Left:=AViewInfo.RealBounds.Left+2;
   StorageFiltercxLCB.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=BuycxGridDBTVBUYTYPENAME.Name then
  begin
   BuyTypeFiltercxLCB.Left:=AViewInfo.RealBounds.Left+1;
   BuyTypeFiltercxLCB.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;
end;

procedure TfBuy.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
 fMain.FloatToBcd(self);

 RetVal:=1;
 CompName:='Buy';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   BuyCDS.Close;
   BuyCDS.CommandText:=
    'select * from buytrans_buyview(:sqnno,:present,:storageid,:firmid,:buytypeid,:directorview)';
   BuyCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='BuyDetail';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   BuyDetailCDS.Close;
   BuyDetailCDS.CommandText:=
    'select * from buytrans_buydetailview(:buyid)';
   BuyDetailCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='BuyPrint';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   BuyPrintCDS.Close;
   BuyPrintCDS.CommandText:=
    'select * from buytrans_buyprint(:buyid)';
   BuyPrintCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='BuyPrintSub';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   BuyPrintSubCDS.Close;
   BuyPrintSubCDS.CommandText:=
    'select * from buytrans_buyprintsub(:buyid)';
   BuyPrintSubCDS.RemoteServer:=fMain.SocketConnection;
  end;


 RetVal:=1;
 CompName:='BuyProvider';
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
    'select f.id, f.name from firm f where isprovider = 1 '+
    'order by f.name';
   ProviderFiltercxLCB.Properties.ListSource:=DS;
   ProviderFiltercxLCB.Properties.KeyFieldNames:='ID';
   ProviderFiltercxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='BuyStorage';
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
    'select  id, name from storage st '+
    'where st.isactive=1 '+
    ' and st.terminalid in (select ett.terminalid from employeetoterminal ett where ett.login=user) '+
    'order by name';
   StorageFiltercxLCB.Properties.ListSource:=DS;
   StorageFiltercxLCB.Properties.KeyFieldNames:='ID';
   StorageFiltercxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='BuyBuyType';
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
    'select id,name from buytype bt where bt.isactive=1 order by bt.id';
   BuyTypeFiltercxLCB.Properties.ListSource:=DS;
   BuyTypeFiltercxLCB.Properties.KeyFieldNames:='ID';
   BuyTypeFiltercxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 InputDateFiltercxDE.Date:=Date;
 RefreshBBClick(self);
end;

procedure TfBuy.RefreshBBClick(Sender: TObject);
begin
 with fMain do
  try
   DirectorViewFiltercxICBPropertiesCloseUp(self);
   RefreshCDS(TClientDataSet(ProviderFiltercxLCB.Properties.ListSource.DataSet));
   RefreshCDS(TClientDataSet(StorageFiltercxLCB.Properties.ListSource.DataSet));
   RefreshCDS(TClientDataSet(BuyTypeFiltercxLCB.Properties.ListSource.DataSet));
  finally
   ;
  end;//try..finally
end;

procedure TfBuy.ExportToExcelBuyMIClick(Sender: TObject);
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

procedure TfBuy.EnablePanel(EnablePanel:TPanel;Flag:boolean);
begin
 SearchTopPanel.Enabled:=Flag;
 BuycxGrid.Enabled:=Flag;
 BuyDetailcxGrid.Enabled:=Flag;
// EditDrinkBuyPanel.Visible:=false;
 if EnablePanel<>nil then
  EnablePanel.Visible:=not Flag;
// RefreshCDS(BuyTypeCDS);
end;

procedure TfBuy.BuyDetailPMPopup(Sender: TObject);
var FlagBuyDetail:boolean;
begin
 FlagBuyDetail:=(BuyCDS.Active) and (BuyCDS.RecordCount>0);

 AddBuyDetailMI.Enabled:=FlagBuyDetail and (Pos('B',fMain.AdvancedGrant)>0) and
  ((BuyCDSDIRECTORVIEW.AsInteger in [0,3]) or
   ((BuyCDSDIRECTORVIEW.AsInteger in [1]) and
    ((not (BuyCDSSTORAGETYPEID.AsInteger in [1])) or (not (BuyCDSBUYTYPEID.AsInteger in [1])) )));

 EditBuyDetailMI.Enabled:=AddBuyDetailMI.Enabled and (BuyDetailCDS.Active) and (BuyDetailCDS.RecordCount>0);

 DeleteBuyDetailMI.Enabled:=AddBuyDetailMI.Enabled and (BuyDetailCDS.Active) and (BuyDetailCDS.RecordCount>0);
 DeleteLinkToSaleMI.Enabled:=AddBuyDetailMI.Enabled and
                               BuyDetailCDS.Active and
                               (BuyDetailCDS.RecordCount>0) and
                               (not BuyDetailCDSLINKTOSALE.IsNull);
end;

procedure TfBuy.BuyPMPopup(Sender: TObject);
var FlagBuy:boolean;
begin
 AddBuyMI.Enabled:=(Pos('B',fMain.AdvancedGrant)>0);

 FlagBuy:=(BuyCDS.Active) and (BuyCDS.RecordCount>0);

 EditBuyMI.Enabled:= FlagBuy and (AddBuyMI.Enabled) and
                    (BuyCDSDIRECTORVIEW.AsInteger in [0,1,3]);

 DeleteBuyMI.Enabled:=EditBuyMI.Enabled;

 PrintBuyMI.Enabled:=FlagBuy and (BuyCDSDIRECTORVIEW.AsInteger in [1,2]);

 ExportToExcelBuyMI.Enabled:=FlagBuy;

 PrintTorgBuyMI.Visible:=
  PrintBuyMI.Enabled and ((BuyCDSTICKEDFORM.AsInteger=1) or (BuyCDSBUYTYPEID.AsInteger in [7,8]));

 AccessBuyMI.Enabled:=FlagBuy and AddBuyMI.Enabled and
                      (BuyCDSDIRECTORVIEW.AsInteger in [1,2]);
 case BuyCDSDIRECTORVIEW.AsInteger of
   1: AccessBuyMI.Caption:='Разрешить накладную';
   2: AccessBuyMI.Caption:='Оменить разрешение';
 end;

 AccessComeBuyMI.Enabled:=FlagBuy and AddBuyMI.Enabled and
                          (BuyCDSDIRECTORVIEW.AsInteger in [1,3]) and
                          (BuyCDSSTORAGETYPEID.AsInteger<>1);
 case BuyCDSDIRECTORVIEW.AsInteger of
   3: AccessComeBuyMI.Caption:='Разрешить оприходование';
   1: AccessComeBuyMI.Caption:='Отменить оприходование';
 end;

 SaleDummyMI.Visible:=(BuyCDSISDUMMYSTORAGE.AsInteger=1) and
                      (BuyCDSSALEID.IsNull) and
                      (BuyCDSDIRECTORVIEW.AsInteger=2);

 TransTermMI.Enabled:=true;

 TransOrgMI.Visible := (BuyCDSDEPARTMENTID.AsInteger in [34, 38]); // Подразделение ООО Растяпино

 BuyRDIMI.Visible:=(Pos('S',fMain.AdvancedGrant)>0);;
 RDILineMI.Visible:=BuyRDIMI.Visible;
 VetisVSDLinkMI.Visible:=(BuyCDSVETISBUYSTATUSID.AsInteger<>0) and (BuyCDSDIRECTORVIEW.AsInteger<>2);
end;

procedure TfBuy.AddBuyMIClick(Sender: TObject);
begin
 if (not Assigned(fBuyAdd)) then
  Application.CreateForm(TfBuyAdd, fBuyAdd);
 fBuyAdd.fBuyLink:=self;
 fBuyAdd.Tag:=0;
 fBuyAdd.ShowModal;
end;

procedure TfBuy.EditBuyMIClick(Sender: TObject);
begin
 if (not Assigned(fBuyAdd)) then
  Application.CreateForm(TfBuyAdd, fBuyAdd);
 fBuyAdd.fBuyLink:=self;
 fBuyAdd.Tag:=BuyCDSID.AsInteger;
 fBuyAdd.ShowModal;
end;

procedure TfBuy.DeleteBuyMIClick(Sender: TObject);
begin
 if not DeleteBuyMI.Enabled then
  exit;

 if BuyCDS.RecordCount = 0 then
  exit;

 if MessageDlg('Удалить приходную накладную ? ', mtConfirmation, [mbYes, mbNo] , 0)<>mrYes then
  exit;

 with fMain do
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'delete from buy where id = '+BuyCDS.FieldByName('Id').AsString;
   SocketConnection.AppServer.DBStartTransaction;

   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
   RefreshCDS(BuyCDS);
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    ShowMessage('Ошибка при удалении накладной. Исх. сообщение> '+E.Message);
   end;//on
  end;//try..except}
end;

procedure TfBuy.PrintBuyMIClick(Sender: TObject);
begin
 BuyPrintCDS.Params[0].AsInteger:=BuyCDSID.AsInteger;
 BuyPrintSubCDS.Params[0].AsInteger:=BuyCDSID.AsInteger;
 fMain.RefreshCDS(BuyPrintCDS);
 fMain.RefreshCDS(BuyPrintSubCDS); 
 BuyfrxReport.PrepareReport;
 BuyfrxReport.ShowReport;
end;

procedure TfBuy.PrintTorgBuyMIClick(Sender: TObject);
var pi:TProcessInformation;
    si:TStartupInfo;
    ResCP:Boolean;
    Params:string;
    ErrorText:string;
    SpoolDocsCount:integer;
begin
 Params:=BuyCDSID.AsString+//operationid
         ' 6 '+//operationtypeid
         ' -1 '+//printer
         ' 0 '+//факсимиле
         ' 1 '+//просмотр или печать
         ' 0 1 1 0 0 0 1 0 0 0 0 0 ';

 try
  GetStartupInfo(si);
  ResCP:=False;
  ResCP:=CreateProcess(nil,PChar('docprinter.exe '+Params),nil,nil,false,0,nil,nil,si,pi);
  if ResCP then
   begin
    CloseHandle(PI.hThread);
    CloseHandle(PI.hProcess)
   end;//if Res
 except
  ;
 end;
end;

procedure TfBuy.AccessBuyMIClick(Sender: TObject);
var str,val: String;
begin
 case BuyCDSDIRECTORVIEW.AsInteger of
  1: begin
      Str:='Разрешить данную накладную, для дальнейших операций с товаром на складе?';
      val:='2';
     end;
  2: begin
      Str:='Оменить разрешение по накладной?';
      val:='1';
     end;
 end;

 if MessageDlg(Str,mtConfirmation,[mbYes,mbNo],0)<>mrYes then
  exit;

 with fMain do
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'update buy set directorview='+val+' where id='+BuyCDSID.AsString;
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    ShowMessage('Ошибка: '+E.Message);
    exit;
   end;//on
  end;//try..except
 fMain.RefreshCDS(BuyCDS);
end;

procedure TfBuy.AccessComeBuyMIClick(Sender: TObject);
var str,val: String;
begin
 case BuyCDSDIRECTORVIEW.AsInteger of
  3: begin
      Str:='Разрешить оприходование товара, для дальнейших операций на складе?';
      val:='1';
     end;
  1: begin
      Str:='Отменить оприходование товара?';
      val:='3';
     end;
 end;

 if MessageDlg(Str,mtConfirmation,[mbYes,mbNo],0)<>mrYes then exit;

 with fMain do
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'update buy set directorview='+val+' where id='+BuyCDSID.AsString;
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    ShowMessage('Ошибка: '+E.Message);
    exit;
   end;//on
  end;//try..except
 fMain.RefreshCDS(BuyCDS);
end;

procedure TfBuy.BuyDSDataChange(Sender: TObject; Field: TField);
begin
 BuyDetailcxGridDBTVMAXRETAILPRICE.Visible:=false;
 BuyDetailCDS.Close;
 if (not BuyCDS.Active) or (BuyCDS.IsEmpty) then
  exit;
 with BuyDetailCDS do
  begin
   BuyDetailcxGridDBTVMAXRETAILPRICE.Visible:=not BuyCDSMAXRETAILPRICESUM.IsNull;
   BuyDetailcxGridDBTVBUYBOX.Visible:=BuyCDSSTORAGEDISTRIBUTIONID.IsNull;
   BuyDetailcxGridDBTVSALEBOX.Visible:=BuyCDSSTORAGEDISTRIBUTIONID.IsNull;
   BuyDetailcxGridDBTVSALEBOXCOUNT.Visible:=BuyCDSSTORAGEDISTRIBUTIONID.IsNull;
   BuyDetailcxGridDBTVSTORAGENAME.Visible:=BuyCDSSTORAGEDISTRIBUTIONID.IsNull;
   BuyDetailcxGridDBTVLICENSE.Visible:=BuyCDSSTORAGEDISTRIBUTIONID.IsNull;
   BuyDetailcxGridDBTVDATEFACTORY.Visible:=BuyCDSSTORAGEDISTRIBUTIONID.IsNull;
   BuyDetailcxGridDBTVEXCISELINE.Visible:=BuyCDSSTORAGEDISTRIBUTIONID.IsNull;
   BuyDetailcxGridDBTVLINKTOSALE.Visible:=BuyCDSSTORAGEDISTRIBUTIONID.IsNull;
   BuyDetailcxGridDBTVRETAILPRICE.Visible:=not BuyCDSSTORAGEDISTRIBUTIONID.IsNull;
   BuyDetailcxGridDBTVSUMRETAILPRICE.Visible:=not BuyCDSSTORAGEDISTRIBUTIONID.IsNull or not BuyCDSSUMRETAILPRICE.IsNull;
   BuyDetailcxGridDBTVSUMPROFIT.Visible:=not BuyCDSSTORAGEDISTRIBUTIONID.IsNull;

   DisableControls;
   Params[0].AsInteger:= BuyCDS.FieldByName('Id').AsInteger;
   try
    Open;
   finally
    EnableControls;
   end;//try..finally
  end;//with
end;

procedure TfBuy.AddBuyDetailMIClick(Sender: TObject);
begin
 if (not Assigned(fBuyAddDetail)) then
  Application.CreateForm(TfBuyAddDetail, fBuyAddDetail);
 fBuyAddDetail.fBuyLink:=self;
 fBuyAddDetail.Tag:=0;
 fBuyAddDetail.ShowModal;
end;

procedure TfBuy.EditBuyDetailMIClick(Sender: TObject);
var Key:Char;
begin
 if (not Assigned(fBuyAddDetail)) then
  Application.CreateForm(TfBuyAddDetail, fBuyAddDetail);
 fBuyAddDetail.fBuyLink:=self;
 fBuyAddDetail.Tag:=BuyDetailCDSID.AsInteger;
 fBuyAddDetail.ShowModal;
end;

procedure TfBuy.DeleteBuyDetailMIClick(Sender: TObject);
begin
 if (BuyCDS.RecordCount = 0) or
    (BuyDetailCDS.RecordCount = 0) then
  exit;
 if MessageDlg('Удалить позицию из приходной накладной ? ', mtConfirmation, [mbYes, mbNo] , 0)<> mrYes then
  exit;
 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'delete from drinkbuy where id = '+BuyDetailCDSID.AsString;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
   RefreshCDS(BuyCDS);
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    ShowMessage('Ошибка при удалении позиции по накладной. Исх. сообщение> '+E.Message);
   end;//on
  end;//try..except}
end;

procedure TfBuy.DirectorViewFiltercxICBPropertiesCloseUp(Sender: TObject);
begin
 with BuyCDS do
  try
   DisableControls;
   Close;
   Params[0].Clear;
   Params[1].Clear;
   Params[2].Clear;
   Params[3].Clear;
   Params[4].Clear;
   Params[5].Clear;
   if NumberDocFiltercxTE.Text<>'' then
    Params[0].AsString:='%'+Trim(NumberDocFiltercxTE.Text)+'%';
   if InputDateFiltercxDE.Text<>'' then
    Params[1].AsDateTime:=InputDateFiltercxDE.Date;
   if StorageFiltercxLCB.Text<>'' then
    Params[2].ASInteger:=StorageFiltercxLCB.EditValue;
   if ProviderFiltercxLCB.Text<>'' then
    Params[3].ASInteger:=ProviderFiltercxLCB.EditValue;
   if BuyTypeFiltercxLCB.Text<>'' then
    Params[4].ASInteger:=BuyTypeFiltercxLCB.EditValue;
   if DirectorViewFiltercxICB.Text<>'' then
    Params[5].ASInteger:=DirectorViewFiltercxICB.EditValue;
   Open;
   Last;
  finally
   EnableControls;
  end;
end;

procedure TfBuy.NumberDocFiltercxTEKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then
  DirectorViewFiltercxICBPropertiesCloseUp(Sender);
end;

procedure TfBuy.DirectorViewFiltercxICBEnter(Sender: TObject);
begin
 if (Sender as TComponent).Name<>DirectorViewFiltercxICB.Name then
  DirectorViewFiltercxICB.EditValue:=-1;

 if (Sender as TComponent).Name<>NumberDocFiltercxTE.Name then
  NumberDocFiltercxTE.Clear;

 if (Sender as TComponent).Name<>InputDateFiltercxDE.Name then
  InputDateFiltercxDE.Clear;

 if (Sender as TComponent).Name<>ProviderFiltercxLCB.Name then
  ProviderFiltercxLCB.EditValue:=-1;

 if (Sender as TComponent).Name<>StorageFiltercxLCB.Name then
 StorageFiltercxLCB.EditValue:=-1;

 if (Sender as TComponent).Name<>BuyTypeFiltercxLCB.Name then
  BuyTypeFiltercxLCB.EditValue:=-1;
end;

procedure TfBuy.SaleDummyMIClick(Sender: TObject);
var sqnno,present:string;
begin
 if (not Assigned(fDistributionEdit)) then
  Application.CreateForm(TfDistributionEdit, fDistributionEdit);
 fDistributionEdit.Caption:='Фиктивная накладная';
 if fDistributionEdit.ShowModal=mrOk then
  begin
   with fMain do
    try
     SocketConnection.AppServer.DBStartTransaction;
     InUpDelCDS.Close;
     InUpDelCDS.CommandText:=
     'select sqnno,present from buytrans_buysaledummy('+
       BuyCDSID.AsString+','+
       fDistributionEdit.DistributionIDcxME.Text+')';
     InUpDelCDS.Open;
     sqnno:=InUpDelCDS.FieldByName('sqnno').AsString;
     present:=InUpDelCDS.FieldByName('present').AsString;
     SocketConnection.AppServer.DBCommit;
     MessageDlg('Накладная №'+sqnno+' от '+present+' успешно создана.',mtInformation,[mbOk],0);
    except on E: Exception do
     begin
      SocketConnection.AppServer.DBRollback;
      MessageDlg('Ошибка добавления накладной!' + #13+ ' ' + E.Message,mtError,[mbOk],0);
     end; //on
    end; //try..except
    RefreshBBClick(self);
  end;
end;

procedure TfBuy.DeleteLinkToSaleMIClick(Sender: TObject);
begin
 if (BuyCDS.RecordCount = 0) or
    (BuyDetailCDS.RecordCount = 0) then
  exit;

 if MessageDlg('Удалить привязку к реализации? ', mtConfirmation, [mbYes, mbNo] , 0)<> mrYes then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'update drinkbuy db set db.drinksaleid=null where db.id = '+BuyDetailCDSID.AsString;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
   RefreshCDS(BuyDetailCDS);
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    ShowMessage('Ошибка при удалении привязки к реализации. Исх. сообщение> '+E.Message);
   end;//on
  end;//try..except}
end;

procedure TfBuy.AutoWidthMIClick(Sender: TObject);
begin
 BuyDetailcxGridDBTV.OptionsView.ColumnAutoWidth:= not AutoWidthMI.Checked;
 AutoWidthMI.Checked := not AutoWidthMI.Checked;
end;

procedure TfBuy.EgaisMIClick(Sender: TObject);
begin
 if (not Assigned(fEgaisBuy)) then
  Application.CreateForm(TfEgaisBuy, fEgaisBuy);
 fEgaisBuy.fBuyLink:=self;
 fEgaisBuy.ShowModal;
end;

procedure TfBuy.TransTermMIClick(Sender: TObject);
begin
 if (not Assigned(fBuyTransTerm)) then
  Application.CreateForm(TfBuyTransTerm, fBuyTransTerm);
 fBuyTransTerm.Tag:=0;
 fBuyTransTerm.ApplayBB.Tag:=0;
 if fBuyTransTerm.ShowModal=mrOk then
  begin
   fMain.RefreshCDS(BuyCDS);
   BuyCDS.Locate('ID',fBuyTransTerm.ApplayBB.Tag,[]);
  end;
end;

procedure TfBuy.TransOrgMIClick(Sender: TObject);
begin
 if (not Assigned(fBuyTransTerm)) then
  Application.CreateForm(TfBuyTransTerm, fBuyTransTerm);
 fBuyTransTerm.Tag:=1;
 fBuyTransTerm.ApplayBB.Tag:=BuyCDSID.AsInteger;
 if fBuyTransTerm.ShowModal=mrOk then
  begin
   fMain.RefreshCDS(BuyCDS);
   BuyCDS.Locate('ID',fBuyTransTerm.ApplayBB.Tag,[]);
  end;
end;

procedure TfBuy.SaleActMIClick(Sender: TObject);
begin
 if (not Assigned(fEgaisSaleAct)) then
  Application.CreateForm(TfEgaisSaleAct, fEgaisSaleAct);
 fEgaisSaleAct.fBuyLink:=self;
 fEgaisSaleAct.ShowModal;
end;

procedure TfBuy.BuyRDIMIClick(Sender: TObject);
begin
 if (not Assigned(fRDIBuy)) then
  Application.CreateForm(TfRDIBuy, fRDIBuy);
 fRDIBuy.fBuyLink:=self;
 fRDIBuy.ShowModal;
end;

procedure TfBuy.VetisVSDLinkMIClick(Sender: TObject);
var fVetisVsdLink:TfVetisVsd;
begin
 fVetisVsdLink:=(fMain.FindChildForm(fMain.VetisVSDMI) as TfVetisVsd);
 fVetisVsdLink.VetisConnectcxLCB.EditValue:=1;
 fVetisVsdLink.BegincxDE.Date:=BuyCDSINPUTDATE.AsDateTime-7;
 fVetisVsdLink.EndcxDE.Date:=BuyCDSINPUTDATE.AsDateTime;
 fVetisVsdLink.Tag:=BuyCDSID.AsInteger;
 fMain.RefreshCDS(fVetisVsdLink.VsdCDS);
 fVetisVsdLink.Show;
end;

end.
