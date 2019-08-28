unit uInventoryList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, Menus, cxContainer, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxCurrencyEdit, cxCheckBox, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Buttons, ExtCtrls, StdCtrls, cxButtons, cxSplitter,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxExportGrid4Link, cxGrid, DBClient, ImgList,
  frxDBSet, frxClass, ComCtrls, cxImageComboBox, cxProgressBar, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGridLnk,
  frxExportXLS, frxExportImage, cxGroupBox, cxRadioGroup, cxImage;

type
  TfInventoryList = class(TForm)
    ViewcxGrid: TcxGrid;
    ViewcxGridDBTV: TcxGridDBTableView;
    ViewcxGridDBTVID: TcxGridDBColumn;
    ViewcxGridDBTVNAME: TcxGridDBColumn;
    ViewcxGridDBTVSINCEDATE: TcxGridDBColumn;
    ViewcxGridDBTVTILLDATE: TcxGridDBColumn;
    ViewcxGridDBTVSTATUS: TcxGridDBColumn;
    ViewcxGridDBTVWHOINSERT: TcxGridDBColumn;
    ViewcxGridDBTVWHENINSERT: TcxGridDBColumn;
    ViewcxGridDBTVENAME: TcxGridDBColumn;
    ViewcxGridDBTVSTATUSNAME: TcxGridDBColumn;
    ViewcxGridDBTVTERMINALID: TcxGridDBColumn;
    ViewcxGridDBTVSTORAGEID: TcxGridDBColumn;
    ViewcxGridDBTVSTNAME: TcxGridDBColumn;
    ViewcxGridLevel: TcxGridLevel;
    cxSplit: TcxSplitter;
    InventorySearchPanel: TPanel;
    ReportsBB: TcxButton;
    InventoryBB: TcxButton;
    RefreshInventoryBB: TcxButton;
    InventoryCasheCDS: TClientDataSet;
    InventoryCasheCDSID: TIntegerField;
    InventoryCasheCDSDRINKID: TIntegerField;
    InventoryCasheCDSDRINKNAME: TStringField;
    InventoryCasheCDSDRINKKINDID: TIntegerField;
    InventoryCasheCDSRACKID: TIntegerField;
    InventoryCasheCDSRACKNAME: TStringField;
    InventoryCasheCDSEMPLOYEEID: TIntegerField;
    InventoryCasheCDSEMPLOYEENAME: TStringField;
    InventoryCasheCDSFORMULA: TStringField;
    InventoryCasheCDSRETAILPRICE: TFloatField;
    InventoryCasheCDSMAXRETAILPRICE: TFloatField;
    InventoryCasheDS: TDataSource;
    InventoryListCDS: TClientDataSet;
    InventoryListCDSID: TIntegerField;
    InventoryListCDSNAME: TStringField;
    InventoryListCDSSINCEDATE: TDateTimeField;
    InventoryListCDSTILLDATE: TDateTimeField;
    InventoryListCDSSTATUS: TSmallintField;
    InventoryListCDSWHOINSERT: TStringField;
    InventoryListCDSWHENINSERT: TDateTimeField;
    InventoryListCDSENAME: TStringField;
    InventoryListCDSSTATUSNAME: TStringField;
    InventoryListCDSTERMINALID: TIntegerField;
    InventoryListCDSSTORAGEID: TIntegerField;
    InventoryListCDSSTNAME: TStringField;
    InventoryListDS: TDataSource;
    ViewPM: TPopupMenu;
    AddInventoryMI: TMenuItem;
    FixCasheMI: TMenuItem;
    CopyFixToFactMI: TMenuItem;
    CloseInventoryMI: TMenuItem;
    OpenInventoryMI: TMenuItem;
    EditInventoryMI: TMenuItem;
    DeleteInventoryMI: TMenuItem;
    DetailPM: TPopupMenu;
    AddToCasheMI: TMenuItem;
    DeleteFromCasheMI: TMenuItem;
    ExportToExcelMI: TMenuItem;
    MenuIL: TImageList;
    InventoryReportsPM: TPopupMenu;
    InventoryCasheMI: TMenuItem;
    InventoryResultMI: TMenuItem;
    InventoryBegincxDE: TcxDateEdit;
    InventoryEndcxDE: TcxDateEdit;
    DelimiterLbl: TLabel;
    InventoryCasheCDSBARCODE: TStringField;
    InventoryCasheCDSDRINKGROUPNAME: TStringField;
    InventoryActPrintfrxReport: TfrxReport;
    InventoryPrintfrxDBD: TfrxDBDataset;
    InventoryActPrintCDS: TClientDataSet;
    InventoryActPrintCDSPRESENT: TDateTimeField;
    InventoryActPrintCDSSQNNO: TStringField;
    InventoryActPrintCDSSTORAGENAME: TStringField;
    InventoryActPrintCDSCHAIRMAN: TStringField;
    InventoryActPrintCDSMEMBERNAME: TStringField;
    InventoryActPrintCDSBASIS: TStringField;
    InventoryActPrintCDSBEGINCASHE: TDateTimeField;
    InventoryActPrintCDSENDCASHE: TDateTimeField;
    InventoryActPrintCDSSUMCASHETEXT: TStringField;
    InventoryActPrintCDSSUMGOODSTEXT: TStringField;
    InventoryActPrintCDSSUMGOODSFULLTEXT: TStringField;
    InventoryActPrintCDSLASTGOODSREPORT: TDateTimeField;
    InventoryActPrintCDSLASTINVENTORY: TDateTimeField;
    InventoryActPrintCDSNUMBERS: TIntegerField;
    InventoryActPrintCDSINVENTORYSUMTEXT: TStringField;
    InventoryActPrintCDSINVENTORYACTID: TIntegerField;
    InventoryActPrintCDSORGANIZATIONNAME: TStringField;
    InventoryActPrintCDSINVOPISSUMTEXT: TStringField;
    InventoryListCDSINVENTORYID: TIntegerField;
    ViewcxGridDBTVINVENTORYID: TcxGridDBColumn;
    TradeReportMI: TMenuItem;
    InventoryActPrintCDSSUMBUHFULLTEXT: TStringField;
    InventoryActDetailfrxDBD: TfrxDBDataset;
    InventoryDetailActCDS: TClientDataSet;
    InventoryDetailActCDSDRINKID: TIntegerField;
    InventoryDetailActCDSDRINKNAME: TStringField;
    InventoryDetailActCDSDRINKGROUPNAME: TStringField;
    InventoryDetailActCDSRETAILPRICE: TFloatField;
    InventoryDetailActCDSRETAILSUM: TFloatField;
    PageControl: TPageControl;
    InventoryListTS: TTabSheet;
    TradeReportTS: TTabSheet;
    cxSplitter: TcxSplitter;
    TradeReportcxGrid: TcxGrid;
    TradeReportcxGridDBTV: TcxGridDBTableView;
    TradeReportcxGridLevel: TcxGridLevel;
    TradeReportCDS: TClientDataSet;
    TradeReportDS: TDataSource;
    TradeReportCDSID: TIntegerField;
    TradeReportCDSTERMINALID: TIntegerField;
    TradeReportCDSTERMINALNAME: TStringField;
    TradeReportCDSSTORAGEID: TIntegerField;
    TradeReportCDSSTORAGENAME: TStringField;
    TradeReportCDSNUMBER: TStringField;
    TradeReportCDSPRESENT: TDateTimeField;
    TradeReportCDSWHENINSERT: TDateTimeField;
    TradeReportCDSWHOINSERT: TStringField;
    TradeReportCDSINVENTORYLISTID: TIntegerField;
    TradeReportcxGridDBTVID: TcxGridDBColumn;
    TradeReportcxGridDBTVTERMINALID: TcxGridDBColumn;
    TradeReportcxGridDBTVTERMINALNAME: TcxGridDBColumn;
    TradeReportcxGridDBTVSTORAGEID: TcxGridDBColumn;
    TradeReportcxGridDBTVSTORAGENAME: TcxGridDBColumn;
    TradeReportcxGridDBTVNUMBER: TcxGridDBColumn;
    TradeReportcxGridDBTVPRESENT: TcxGridDBColumn;
    TradeReportcxGridDBTVWHENINSERT: TcxGridDBColumn;
    TradeReportcxGridDBTVWHOINSERT: TcxGridDBColumn;
    TradeReportcxGridDBTVINVENTORYLISTID: TcxGridDBColumn;
    TradeReportDetailCDS: TClientDataSet;
    TradeReportDetailDS: TDataSource;
    TradeReportDetailCDSID: TIntegerField;
    TradeReportDetailCDSOPERATIONDATE: TDateTimeField;
    TradeReportDetailCDSOPERATIONNUMBER: TStringField;
    TradeReportDetailCDSTRADEREPORTDETAILTYPEID: TIntegerField;
    TradeReportDetailCDSTRADEREPORTDETAILTYPENAME: TStringField;
    TradeReportDetailCDSOPERATIONSUM: TFloatField;
    TradeReportDetailCDSISMANUAL: TSmallintField;
    TradeReportDetailPM: TPopupMenu;
    ImportFrom1cMI: TMenuItem;
    AddTRDetailMI: TMenuItem;
    DeleteTRDetailMI: TMenuItem;
    TradeReportCDSSINCEDATE: TDateTimeField;
    TradeReportCDSTILLDATE: TDateTimeField;
    TradeReportcxGridDBTVSINCEDATE: TcxGridDBColumn;
    TradeReportcxGridDBTVTILLDATE: TcxGridDBColumn;
    TradeReportCDSDISTRIBUTIONID: TIntegerField;
    TradeReportPrintCDS: TClientDataSet;
    TradeReportPrintDS: TDataSource;
    TradeReportfrxReport: TfrxReport;
    TradeReportfrxDBD: TfrxDBDataset;
    TradeReportPrintCDSSTORAGENAME: TStringField;
    TradeReportPrintCDSTRADEREPORTNUMBER: TStringField;
    TradeReportPrintCDSTRADEREPORTPRESENT: TDateTimeField;
    TradeReportPrintCDSSUMCASHE: TFloatField;
    TradeReportPrintCDSTRADEREPORTSINCEDATE: TDateTimeField;
    TradeReportPrintCDSOPERATIONDATE: TDateTimeField;
    TradeReportPrintCDSOPERATIONNUMBER: TStringField;
    TradeReportPrintCDSOPERATIONNAME: TStringField;
    TradeReportPrintCDSINOPERATIONSUM: TFloatField;
    TradeReportPrintCDSOUTOPERATIONSUM: TFloatField;
    TradeReportPrintCDSSUMBUH: TFloatField;
    TradeReportDetailCDSOPERATIONNAME: TStringField;
    FillActMI: TMenuItem;
    InventoryListCDSDISTRIBUTIONID: TIntegerField;
    InventoryActPrintCDSSUMCASHEFULLTEXT: TStringField;
    InventoryActPrintCDSSUMCASHE: TFloatField;
    InventoryActPrintCDSORDERNUMBER: TIntegerField;
    InventoryActPrintCDSSUMBOTTLECOUNT: TIntegerField;
    InventoryActPrintCDSSUMBUH: TFloatField;
    InventoryCasheCDSREMREASON: TStringField;
    DefectActfrxReport: TfrxReport;
    InventoryDetailActCDSREMREASON: TStringField;
    TradeReportCDSCASHEON: TFloatField;
    TradeReportcxGridDBTVCASHEON: TcxGridDBColumn;
    TradeReportPrintCDSCASHEON: TFloatField;
    InventoryActPrintCDSMATERIALNAMEFIRST: TStringField;
    InventoryActPrintCDSMATERIALNAMETHIRD: TStringField;
    TradeReportPrintCDSMATERIALNAMEFIRST: TStringField;
    TradeReportPrintCDSMATERIALNAMETHIRD: TStringField;
    InventoryListCDSINVENTORYTEMPID: TIntegerField;
    InventoryActPrintCDSLASTGOODSREPORTEND: TDateTimeField;
    TradeReportPrintCDSORGANIZATIONNAME: TStringField;
    InventoryCasheCDSDEFECTTYPE: TSmallintField;
    InventoryActPrintCDSDOCNAME: TStringField;
    IndefiniteActfrxReport: TfrxReport;
    RemovingfrxReport: TfrxReport;
    TradeReportPrintCDSDEFECTSUM: TFloatField;
    TradeReportPrintCDSDEFECTORBITSUM: TFloatField;
    TradeReportPrintCDSDEFECTMOUSESUM: TFloatField;
    TradeReportSellerMI: TMenuItem;
    TradeReportPrintCDSTRADEREPORTTILLDATE: TDateTimeField;
    TradeReportSellerfrxReport: TfrxReport;
    TradeReportSellerPfrxDBD: TfrxDBDataset;
    TradeReportSellerPPrintCDS: TClientDataSet;
    TradeReportSellerPPrintDS: TDataSource;
    TradeReportSellerPPrintCDSSTORAGENAME: TStringField;
    TradeReportSellerPPrintCDSTRADEREPORTNUMBER: TStringField;
    TradeReportSellerPPrintCDSTRADEREPORTPRESENT: TDateTimeField;
    TradeReportSellerPPrintCDSTRADEREPORTSINCEDATE: TDateTimeField;
    TradeReportSellerPPrintCDSTRADEREPORTTILLDATE: TDateTimeField;
    TradeReportSellerPPrintCDSORGANIZATIONNAME: TStringField;
    TradeReportSellerPPrintCDSOPERATIONDATE: TDateTimeField;
    TradeReportSellerPPrintCDSOPERATIONNUMBER: TStringField;
    TradeReportSellerPPrintCDSOPERATIONNAME: TStringField;
    TradeReportSellerPPrintCDSINOPERATIONSUM: TFloatField;
    TradeReportSellerPPrintCDSOUTOPERATIONSUM: TFloatField;
    TradeReportSellerPPrintCDSSUMBUH: TFloatField;
    TradeReportSellerPPrintCDSSUMCASHE: TFloatField;
    TradeReportSellerPPrintCDSCASHEON: TFloatField;
    TradeReportSellerMfrxDBD: TfrxDBDataset;
    TradeReportSellerMPrintCDS: TClientDataSet;
    TradeReportSellerMPrintDS: TDataSource;
    TradeReportSellerMPrintCDSOPERATIONDATE: TDateTimeField;
    TradeReportSellerMPrintCDSOPERATIONNUMBER: TStringField;
    TradeReportSellerMPrintCDSOPERATIONNAME: TStringField;
    TradeReportSellerMPrintCDSINOPERATIONSUM: TFloatField;
    TradeReportSellerMPrintCDSOUTOPERATIONSUM: TFloatField;
    TradeReportSellerMPrintCDSTRADEREPORTTILLDATE: TDateTimeField;
    dxComponentPrinterCashe: TdxComponentPrinter;
    dxComponentPrinterCasheLink1: TdxGridReportLink;
    FixCasheListMI: TMenuItem;
    InventoryCashePMfrxReport: TfrxReport;
    InventoryCashePMfrxDBD: TfrxDBDataset;
    RemovingOldfrxReport: TfrxReport;
    InventoryActPrintCDSTOPMANAGER: TStringField;
    InventoryActPrintCDSFINMANAGER: TStringField;
    InventoryActPrintCDSADMMANAGER: TStringField;
    PrintFormsBB: TcxButton;
    InventoryPrintFormsPM: TPopupMenu;
    InventoryActPrintMI: TMenuItem;
    RemovingMI: TMenuItem;
    DefectActMI: TMenuItem;
    DefectActOrbitMI: TMenuItem;
    DefectActMouseMI: TMenuItem;
    IndefiniteMI: TMenuItem;
    ReceiptMI: TMenuItem;
    ReceiptfrxReport: TfrxReport;
    BeforeAfterMI: TMenuItem;
    BeforeAfterfrxReport: TfrxReport;
    TradeReportListPM: TPopupMenu;
    TradeReportAddMI: TMenuItem;
    TradeReportDeleteMI: TMenuItem;
    TradeReportPrintRevMI: TMenuItem;
    TradeReportPrintSelMI: TMenuItem;
    Break: TMenuItem;
    TradeReportSearchPanel: TPanel;
    Label1: TLabel;
    TradeReportRefreshcxBB: TcxButton;
    BegincxDE: TcxDateEdit;
    EndcxDE: TcxDateEdit;
    TradeReportBackBB: TcxButton;
    TradeReportPrintRevBB: TcxButton;
    TradeReportPrintSelBB: TcxButton;
    DismissalMI: TMenuItem;
    DismissalfrxReport: TfrxReport;
    DocsActMI: TMenuItem;
    DocsActfrxReport: TfrxReport;
    CashActMI: TMenuItem;
    CashActfrxReport: TfrxReport;
    frxXLSExport: TfrxXLSExport;
    frxJPEGExport1: TfrxJPEGExport;
    InventoryEmployeeCDS: TClientDataSet;
    InventoryEmployeeDS: TDataSource;
    InventoryEmployeefrxDBD: TfrxDBDataset;
    InventoryEmployeeCDSCHAIRMANPOST: TStringField;
    InventoryEmployeeCDSCHAIRMANNAME: TStringField;
    InventoryEmployeeCDSMEMBERPOST1: TStringField;
    InventoryEmployeeCDSMEMBERNAME1: TStringField;
    InventoryEmployeeCDSMEMBERPOST2: TStringField;
    InventoryEmployeeCDSMEMBERNAME2: TStringField;
    InventoryEmployeeCDSMATERIALPOST1: TStringField;
    InventoryEmployeeCDSMATERIALNAME1: TStringField;
    InventoryEmployeeCDSMATERIALPOST2: TStringField;
    InventoryEmployeeCDSMATERIALNAME2: TStringField;
    InventoryEmployeeCDSMATERIALPOST3: TStringField;
    InventoryEmployeeCDSMATERIALNAME3: TStringField;
    InventoryEmployeeCDSMATERIALPOST4: TStringField;
    InventoryEmployeeCDSMATERIALNAME4: TStringField;
    WealthActMI: TMenuItem;
    WealthActfrxReport: TfrxReport;
    InventoryListCDSINVENTORYTYPEID: TSmallintField;
    ViewcxGridDBTVINVENTORYTYPE: TcxGridDBColumn;
    TradeReportCDSDEPARTMENTID: TIntegerField;
    InventoryListCDSISEXCISE: TSmallintField;
    InventoryCasheCDSEXCISECODE: TStringField;
    PrintSaleMI: TMenuItem;
    InventoryListCDSISCLOSEDB: TSmallintField;
    CheckEgaisDocMI: TMenuItem;
    InventoryListCDSNOTMODIFY: TSmallintField;
    InventoryListCDSNOTMODIFYNAME: TStringField;
    ViewcxGridDBTVNOTMODIFYNAME: TcxGridDBColumn;
    TradeReportCDSILSTATUS: TSmallintField;
    InventoryDetailActCDSBARCODE: TStringField;
    InventoryListCDSISPARTIAL: TSmallintField;
    InventoryListCDSISPARTIALNAME: TStringField;
    ViewcxGridDBTVISPARTIALNAME: TcxGridDBColumn;
    InventoryListCDSISOUTPLAN: TSmallintField;
    InventoryListCDSISAUDIT: TSmallintField;
    InventoryListCDSEMPLOYEEID: TIntegerField;
    InventorySearchRightPanel: TPanel;
    ShowAuditCB: TCheckBox;
    InventoryListCDSISOUTPLANNAME: TStringField;
    InventoryListCDSISAUDITNAME: TStringField;
    InventoryListCDSEMPLOYEENAME: TStringField;
    ViewcxGridDBTVISOUTPLANNAME: TcxGridDBColumn;
    ViewcxGridDBTVISAUDITNAME: TcxGridDBColumn;
    CancelInventoryMI: TMenuItem;
    DetailcxGrid: TcxGrid;
    DetailcxGridDBTV: TcxGridDBTableView;
    DetailcxGridDBTVDRINKID: TcxGridDBColumn;
    DetailcxGridDBTVDRINKGROUPNAME: TcxGridDBColumn;
    DetailcxGridDBTVBARCODE: TcxGridDBColumn;
    DetailcxGridDBTVDRINKNAME: TcxGridDBColumn;
    DetailcxGridDBTVDRINKKINDID: TcxGridDBColumn;
    DetailcxGridDBTVCOUNTUNIT: TcxGridDBColumn;
    DetailcxGridDBTVREMCOUNTUNIT: TcxGridDBColumn;
    DetailcxGridDBTVDEFCOUNTUNIT: TcxGridDBColumn;
    DetailcxGridDBTVRACKID: TcxGridDBColumn;
    DetailcxGridDBTVRACKNAME: TcxGridDBColumn;
    DetailcxGridDBTVEMPLOYEEID: TcxGridDBColumn;
    DetailcxGridDBTVMAXRETAILPRICE: TcxGridDBColumn;
    DetailcxGridDBTVRETAILPRICE: TcxGridDBColumn;
    DetailcxGridDBTVEXCISECODE: TcxGridDBColumn;
    DetailcxGridDBTVEMPLOYEENAME: TcxGridDBColumn;
    DetailcxGridLevel: TcxGridLevel;
    TradeReportDetailcxGrid: TcxGrid;
    TradeReportDetailcxGridDBTV: TcxGridDBTableView;
    TradeReportDetailcxGridDBTVID: TcxGridDBColumn;
    TradeReportDetailcxGridDBTVOPERATIONDATE: TcxGridDBColumn;
    TradeReportDetailcxGridDBTVOPERATIONNUMBER: TcxGridDBColumn;
    TradeReportDetailcxGridDBTVOPERATIONNAME: TcxGridDBColumn;
    TradeReportDetailcxGridDBTVTRADEREPORTDETAILTYPEID: TcxGridDBColumn;
    TradeReportDetailcxGridDBTVTRADEREPORTDETAILTYPENAME: TcxGridDBColumn;
    TradeReportDetailcxGridDBTVOPERATIONSUM: TcxGridDBColumn;
    TradeReportDetailcxGridDBTVISMANUAL: TcxGridDBColumn;
    TradeReportDetailcxGridLevel: TcxGridLevel;
    TradeReportDetailcxPB: TcxProgressBar;
    InventoryCasheCDSLINKCOUNTUNIT: TIntegerField;
    InventoryCasheCDSFLAGLINKED: TSmallintField;
    DetailcxGridDBTVFLAGLINKED: TcxGridDBColumn;
    DetailcxGridDBTVLINKCOUNTUNIT: TcxGridDBColumn;
    DetailcxGridDBTVFORMULA: TcxGridDBColumn;
    ExciseInventoryMI: TMenuItem;
    ExciseLineMI: TMenuItem;
    N2: TMenuItem;
    ExciseEqualMI: TMenuItem;
    DetailcxGridDBTVID: TcxGridDBColumn;
    InventoryListCDSSTORAGETYPEID: TIntegerField;
    InventoryCasheCDSCOUNTUNIT: TFloatField;
    InventoryCasheCDSREMCOUNTUNIT: TFloatField;
    InventoryCasheCDSDEFCOUNTUNIT: TFloatField;
    InventoryDetailActCDSCOUNTUNIT: TFloatField;
    ViewcxGridDBTVISCLOSEDB: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RefreshInventoryBBClick(Sender: TObject);
    procedure InventoryListDSDataChange(Sender: TObject; Field: TField);
    procedure ViewPMPopup(Sender: TObject);
    procedure DetailPMPopup(Sender: TObject);
    procedure InventoryCasheMIClick(Sender: TObject);
    procedure InventoryResultMIClick(Sender: TObject);
    procedure CloseInventoryMIClick(Sender: TObject);
    procedure AddInventoryMIClick(Sender: TObject);
    procedure DeleteInventoryMIClick(Sender: TObject);
    procedure FixCasheMIClick(Sender: TObject);
    procedure CopyFixToFactMIClick(Sender: TObject);
    procedure OpenInventoryMIClick(Sender: TObject);
    procedure ExportToExcelMIClick(Sender: TObject);
    procedure DeleteFromCasheMIClick(Sender: TObject);
    procedure InventoryReportsPMPopup(Sender: TObject);
    procedure InventoryActPrintMIClick(Sender: TObject);
    procedure TradeReportMIClick(Sender: TObject);
    function InventoryActPrintfrxReportUserFunction(
      const MethodName: String; var Params: Variant): Variant;
    procedure TradeReportDeleteBBClick(Sender: TObject);
    procedure TradeReportDSDataChange(Sender: TObject; Field: TField);
    procedure AddTRDetailMIClick(Sender: TObject);
    procedure TradeReportDetailPMPopup(Sender: TObject);
    procedure ImportFrom1cMIClick(Sender: TObject);
    procedure DeleteTRDetailMIClick(Sender: TObject);
    procedure FillActMIClick(Sender: TObject);
    procedure DefectActMIClick(Sender: TObject);
    function DefectActfrxReportUserFunction(const MethodName: String;
      var Params: Variant): Variant;
    procedure DefectActOrbitMIClick(Sender: TObject);
    procedure DefectActMouseMIClick(Sender: TObject);
    procedure IndefiniteMIClick(Sender: TObject);
    procedure RemovingMIClick(Sender: TObject);
    procedure TradeReportSellerMIClick(Sender: TObject);
    procedure DepartmentcxLCBPropertiesEditValueChanged(Sender: TObject);
    procedure FixCasheListMIClick(Sender: TObject);
    procedure ReceiptMIClick(Sender: TObject);
    procedure BeforeAfterMIClick(Sender: TObject);
    procedure TradeReportAddMIClick(Sender: TObject);
    procedure TradeReportBackBBClick(Sender: TObject);
    procedure TradeReportPrintRevBBClick(Sender: TObject);
    procedure TradeReportPrintSelBBClick(Sender: TObject);
    procedure TradeReportDeleteMIClick(Sender: TObject);
    procedure TradeReportPrintRevMIClick(Sender: TObject);
    procedure TradeReportPrintSelMIClick(Sender: TObject);
    procedure TradeReportRefreshcxBBClick(Sender: TObject);
    procedure DismissalMIClick(Sender: TObject);
    procedure DocsActMIClick(Sender: TObject);
    procedure CashActMIClick(Sender: TObject);
    procedure WealthActMIClick(Sender: TObject);
    procedure InventoryBegincxDEPropertiesChange(Sender: TObject);
    procedure InventoryEndcxDEPropertiesChange(Sender: TObject);
    procedure PrintSaleMIClick(Sender: TObject);
    procedure CheckEgaisDocMIClick(Sender: TObject);
    procedure InventoryListCDSBeforeOpen(DataSet: TDataSet);
    procedure ShowAuditCBClick(Sender: TObject);
    procedure CancelInventoryMIClick(Sender: TObject);
    procedure EditInventoryMIClick(Sender: TObject);
    procedure AddToCasheMIClick(Sender: TObject);
    procedure DetailcxGridDBTVCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure TradeReportCDSBeforeOpen(DataSet: TDataSet);
    procedure ExciseInventoryMIClick(Sender: TObject);
    procedure ExciseEqualMIClick(Sender: TObject);
  private
    { Private declarations }
  public
   isInventoryEdit: boolean;
   isInventoryCacheEdit: boolean;
   barCode, iInventoryCasheId, iFactBottlecount: string;
   iTerminal, iStorage: Integer;
   fPrice: real;
    { Public declarations }
  end;

var
  fInventoryList: TfInventoryList;

implementation

uses uMain, ComObj, DynamicProvider, uInventoryListClose,
  uTradeReportAddDetail, uInventoryAdd, uInventoryExcise, NumWord,
  uInventoryListAdd, uInventoryListCashe, uInventoryListTRAdd,
  uInventoryListReports, uExciseScan;

{$R *.dfm}

procedure TfInventoryList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TfInventoryList.FormCreate(Sender: TObject);
var RetVal: OleVariant;
    CompName: string;
    CDS: TClientDataSet;
    DS: TDataSource;
begin
 fMain.FloatToBcd(self);

 RetVal := 1;
 CompName := 'InventoryNotMake';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (FindDynamicClientDataSet(Self ,CDS, CompName + 'CDS', True, fMain.SocketConnection, CompName + 'DSP')
  and FindDynamicDataSource(Self, DS, CompName + 'DS', True, CDS) and RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName ,mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   CDS.CommandText:=
    'select i.id, s.name, i.present, i.make, s.id storageid, i.basis, i.sqnno ' +
    'from inventory i ' +
    'join storage s on s.id = i.storageid ' +
    'where i.make <> 1 ' +
    ' and s.parentstorageid = (select parentstorageid from storage where id = :astorageid) ' +
    'order by i.storageid, i.present';
   CDS.RemoteServer := fMain.SocketConnection;
  end;


 RetVal := 1;
 CompName := 'TradeReport';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   TradeReportCDS.Close;
   TradeReportCDS.CommandText := 'select * from BUYTRANS_TRADEREPORTVIEW_1(:begindate, :enddate)';
   TradeReportCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'TradeReportDetail';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   TradeReportDetailCDS.Close;
   TradeReportDetailCDS.CommandText := 'select * from BUYTRANS_TRADEREPORTDETAILVIEW(:tradereportid)';
   TradeReportDetailCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'TradeReportPrint';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   TradeReportPrintCDS.Close;
   TradeReportPrintCDS.CommandText := 'select * from BUYTRANS_TRADEREPORTPRINT(:tradereportid)';
   TradeReportPrintCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'TradeReportSellerPPrint';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   TradeReportSellerPPrintCDS.Close;
   TradeReportSellerPPrintCDS.CommandText := 'select * from BUYTRANS_TRADEREPORTSELLPPRINT(:tradereportid)';
   TradeReportSellerPPrintCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'TradeReportSellerMPrint';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   TradeReportSellerMPrintCDS.Close;
   TradeReportSellerMPrintCDS.CommandText := 'select * from BUYTRANS_TRADEREPORTSELLMPRINT(:tradereportid)';
   TradeReportSellerMPrintCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'InventoryList';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   InventoryListCDS.ProviderName:=CompName+'DSP';
   InventoryListCDS.RemoteServer := fMain.SocketConnection;
   InventoryListCDS.CommandText := 'select * from buytrans_inventorylistview(:begindate, :enddate, :isaudit)';
  end;

 RetVal := 1;
 CompName := 'InventoryCashe';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   InventoryCasheCDS.ProviderName:=CompName+'DSP';
   InventoryCasheCDS.RemoteServer:=fMain.SocketConnection;
   InventoryCasheCDS.CommandText:='select * from BUYTRANS_INVENTORYLISTCASHE_VW(:ininventorylistid) order by id';
  end;

 RetVal := 1;
 CompName := 'InventoryActPrint';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (RetVal <> 0) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   InventoryActPrintCDS.CommandText :=
    'select * from buytrans_inventory_act_print(:inventoryid, :reporttype)';
   InventoryActPrintCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'InventoryDetailAct';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (RetVal <> 0) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   InventoryDetailActCDS.CommandText :=
    'select * from buytrans_inventoryactdetail_vw(:inventoryid, :reporttype)';
   InventoryDetailActCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'InventoryEmployee';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (RetVal <> 0) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   InventoryEmployeeCDS.CommandText :=
    'select * from buytrans_inventoryemployee(:inventoryid)';
   InventoryEmployeeCDS.RemoteServer := fMain.SocketConnection;
  end;


 PageControl.ActivePage := InventoryListTS;
 InventoryBegincxDE.Date := Date;
 InventoryEndcxDE.Date := Date;



 BegincxDE.Date := Date;
 EndcxDE.Date := Date;

 InventoryActPrintfrxReport.AddFunction('function SummaPropis(summa: Double):String');
 InventoryActPrintfrxReport.AddFunction('function Ruble(summa: Double, rub: String):String');
 InventoryActPrintfrxReport.AddFunction('function Kopeika(summa: Double, kop: String):String');

 DefectActfrxReport.AddFunction('function SummaPropis(summa: Double):String');
 DefectActfrxReport.AddFunction('function Ruble(summa: Double, rub: String):String');
 DefectActfrxReport.AddFunction('function Kopeika(summa: Double, kop: String):String');

 ShowAuditCB.Checked := (Pos('K', fMain.AdvancedGrant) > 0);
 ShowAuditCB.Enabled := (Pos('K', fMain.AdvancedGrant) > 0);

 RefreshInventoryBBClick(Self);
end;

procedure TfInventoryList.RefreshInventoryBBClick(Sender: TObject);
begin
  fMain.RefreshCDS(InventoryListCDS);
end;

procedure TfInventoryList.InventoryListDSDataChange(Sender: TObject;
  Field: TField);
begin
 InventoryCasheCDS.Close;

 if (not InventoryListCDS.Active) or (InventoryListCDS.IsEmpty) then
  exit;
 with InventoryCasheCDS do
 begin
  DisableControls;
  Params[0].AsInteger := InventoryListCDSID.AsInteger;
  try
   Open;
   if (InventoryListCDSTERMINALID.AsInteger in [1,2,3,7]) then
    DetailcxGridDBTV.OptionsBehavior.IncSearchItem := DetailcxGridDBTVDRINKID
   else
    DetailcxGridDBTV.OptionsBehavior.IncSearchItem := DetailcxGridDBTVBARCODE;
  finally
   EnableControls;
  end;  //try..finally
 end;   //with
end;

procedure TfInventoryList.ViewPMPopup(Sender: TObject);
begin
 FixCasheMI.Enabled        := (Pos('J', fMain.AdvancedGrant) > 0) and (InventoryListCDSSTATUS.AsInteger = 0) and (InventoryListCDSISPARTIAL.AsInteger = 0);
 AddInventoryMI.Enabled    := (Pos('J', fMain.AdvancedGrant) > 0);
 OpenInventoryMI.Visible   := (Pos('Z', fMain.AdvancedGrant) > 0) and (InventoryListCDSSTATUS.AsInteger = 2);
 EditInventoryMI.Enabled   := (Pos('J', fMain.AdvancedGrant) > 0) and not (InventoryListCDSSTATUS.AsInteger in [2,3]);
// CloseInventoryMI.Enabled  := (Pos('J', fMain.AdvancedGrant) > 0) and (InventoryListCDSSTATUS.AsInteger = 1);
 DeleteInventoryMI.Enabled := (Pos('J', fMain.AdvancedGrant) > 0) and not (InventoryListCDSSTATUS.AsInteger in [2,3]);
 CopyFixToFactMI.Enabled   := (Pos('J', fMain.AdvancedGrant) > 0) and (InventoryListCDSSTATUS.AsInteger = 1) and (InventoryListCDSISPARTIAL.AsInteger = 0);
 CheckEgaisDocMI.Visible   := (InventoryListCDSSTATUS.AsInteger in [0,99]);
 CancelInventoryMI.Visible := (Pos('J', fMain.AdvancedGrant) > 0) and (Pos('K', fMain.AdvancedGrant) > 0) and (InventoryListCDSSTATUS.AsInteger = 0);
end;

procedure TfInventoryList.DetailPMPopup(Sender: TObject);
begin
 if InventoryListCDSSTATUS.AsInteger = 2 then
  begin
   AddToCasheMI.Enabled := False;
   //EditCacheMI.Enabled := False;
   DeleteFromCasheMI.Enabled := False;
  end
 else
  begin
   AddToCasheMI.Enabled := True;
   //EditCacheMI.Enabled := True;
   DeleteFromCasheMI.Enabled := True;
  end;
 ExciseInventoryMI.Visible:=InventoryCasheCDS.RecordCount>0;
 ExciseEqualMI.Visible:=ExciseInventoryMI.Visible and (InventoryListCDSSTATUS.AsInteger=1) and (not InventoryCasheCDSEXCISECODE.IsNull) and (InventoryCasheCDSCOUNTUNIT.AsInteger>1);
 ExciseLineMI.Visible:=ExciseInventoryMI.Visible;
end;

procedure TfInventoryList.InventoryCasheMIClick(Sender: TObject);
begin
 if (not Assigned(fInventoryListReports)) then
  Application.CreateForm(TfInventoryListReports, fInventoryListReports);
 fInventoryListReports.Tag:=InventoryListCDSID.AsInteger;
 fInventoryListReports.ViewDS.DataSet:=fInventoryListReports.InventoryFixCasheCDS;
 fInventoryListReports.InventoryFixCasheCDS.Tag:=InventoryListCDSSTORAGETYPEID.AsInteger;
 fInventoryListReports.Caption:= 'Инвентаризационные отчеты: Зафиксированные остатки по складу '+InventoryListCDSSTNAME.AsString;
 fInventoryListReports.ShowModal;
end;

procedure TfInventoryList.InventoryResultMIClick(Sender: TObject);
begin
 if (not Assigned(fInventoryListReports)) then
  Application.CreateForm(TfInventoryListReports, fInventoryListReports);
 fInventoryListReports.Tag:=InventoryListCDSID.AsInteger;
 fInventoryListReports.ViewDS.DataSet:=fInventoryListReports.InventoryResultCDS;
 fInventoryListReports.InventoryResultCDS.Tag:=InventoryListCDSSTORAGETYPEID.AsInteger;
 fInventoryListReports.Caption:= 'Инвентаризационные отчеты: Результаты ревизии по складу '+InventoryListCDSSTNAME.AsString;
 fInventoryListReports.ShowModal;
end;

procedure TfInventoryList.CloseInventoryMIClick(Sender: TObject);
var CDS:TclientDataSet;
begin
 if InventoryListCDSSTATUS.AsInteger <> 1 then
  begin
   MessageDLG('Нельзя закрыть неактивную или закрытую инвентаризацию', mtError, [mbOK], 0);
   exit;
  end;

 if (not Assigned(fExciseScan)) then
  Application.CreateForm(TfExciseScan, fExciseScan);
 fExciseScan.ViewCDS.Params[0].AsInteger:=4;
 fExciseScan.ViewCDS.Params[1].AsInteger:=InventoryListCDSID.AsInteger;
 fMain.RefreshCDS(fExciseScan.ViewCDS);
 if not fExciseScan.ViewCDS.IsEmpty then
  fExciseScan.ShowModal
 else
  begin
   if MessageDlg('Закрытие запрещает изменения в инвентаризации.'+#10#13+
                 'Создаются складские операции по результату ревизии в выбранном акте.'+#10#13+
                 'Продолжить?', mtConfirmation,[mbYes, mbNo], 0)<>mrYes then
    exit;

   if (not Assigned(fInventoryListClose)) then
    Application.CreateForm(TfInventoryListClose, fInventoryListClose);
   CDS:=TClientDataSet(fInventoryListClose.InventoryActcxLCB.Properties.ListSource.DataSet);
   CDS.Params[0].AsInteger := InventoryListCDSID.AsInteger;
   fMain.RefreshCDS(CDS);
   fInventoryListClose.InventoryActcxLCB.EditValue := -1;

   if fInventoryListClose.ShowModal=mrOk then
    with fMain do
     try
      try
       SocketConnection.AppServer.DBStartTransaction;
       InUpDelCDS.Close;
       InUpDelCDS.CommandText :=
        'execute procedure buytrans_inventorylistclose('+InventoryListCDSID.AsString+','+IntToStr(fInventoryListClose.InventoryActcxLCB.EditValue)+')';
       InUpDelCDS.Execute;
       SocketConnection.AppServer.DBCommit;
      except on E:Exception do
       begin
        SocketConnection.AppServer.DBRollBack;
        MessageDLG('Ошибка: '+E.Message, mtError, [mbOK], 0);
       end; //on E:Exception
      end; //try
     finally
      RefreshCDS(InventoryListCDS);
     end;
  end;
end;

procedure TfInventoryList.AddInventoryMIClick(Sender: TObject);
begin
 if (not Assigned(fInventoryListAdd)) then
  Application.CreateForm(TfInventoryListAdd, fInventoryListAdd);
 fInventoryListAdd.fInventoryListLink:=Self;
 fInventoryListAdd.Tag:=0;
 fInventoryListAdd.ShowModal;
 fMain.RefreshCDS(InventoryListCDS);
 InventoryListCDS.Locate('ID',fInventoryListAdd.Tag,[]);
end;

procedure TfInventoryList.EditInventoryMIClick(Sender: TObject);
begin
 if InventoryListCDSSTATUS.AsInteger = 2 then
  begin
   MessageDLG('Нельзя редактировать закрытую инвентаризацию', mtError, [mbOK], 0);
   exit;
  end;
 if (not Assigned(fInventoryListAdd)) then
  Application.CreateForm(TfInventoryListAdd, fInventoryListAdd);
 fInventoryListAdd.fInventoryListLink:=Self;
 fInventoryListAdd.Tag:=InventoryListCDSID.AsInteger;
 fInventoryListAdd.ShowModal;
 fMain.RefreshCDS(InventoryListCDS);
 InventoryListCDS.Locate('ID',fInventoryListAdd.Tag,[]); 
end;


procedure TfInventoryList.DeleteInventoryMIClick(Sender: TObject);
begin
 if MessageDlg('Вы уверены в удалении данных?', mtConfirmation,[mbYes, mbNo], 0)<>mrYes then
   exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText :=
    'delete from inventorylist where id = ' + InventoryListCDSID.AsString;
   InUpDelCDS.Execute;

   SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDlg('Ошибка: ' + E.Message+'"',mtError,[mbOk],0);
   end;//except
  end;//try..except
 RefreshInventoryBBClick(Self);
end;

procedure TfInventoryList.FixCasheMIClick(Sender: TObject);
begin
 if MessageDlg('Фиксация запрещает изменение складских остатков на время проведения ревизии. Продолжить?',
               mtConfirmation,[mbYes,mbNo],0)<>mrYes then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:='execute procedure buytrans_inventorylistfix_cashe('+InventoryListCDSID.AsString+',0)';
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDlg('Ошибка: ' + E.Message,mtError,[mbOk],0);
   end; //on E:Exception
  end; //try
 InventoryCasheMIClick(Sender);
 RefreshInventoryBBClick(Self);
end;

procedure TfInventoryList.CopyFixToFactMIClick(Sender: TObject);
begin
 if MessageDlg('Копирование выполняет перенос зафиксированных остатков в фактические. Продолжить?',mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   // Копируем зафиксированные остатки в фактические
   InUpDelCDS.Close;
   InUpDelCDS.CommandText := 'execute procedure buytrans_inventorylistfix_fact(' + InventoryListCDSID.AsString + ')';
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDlg('Ошибка: ' + E.Message,mtError,[mbOk],0);
   end; //on E:Exception
  end; //try
 RefreshInventoryBBClick(Self);
end;

procedure TfInventoryList.OpenInventoryMIClick(Sender: TObject);
begin
 if MessageDlg('Открытие разрешает изменения в инвентаризации. Продолжить?', mtConfirmation,[mbYes, mbNo], 0)<>mrYes then
   exit;

  if InventoryListCDSSTATUS.AsInteger <> 2 then
   begin
    MessageDLG('Нельзя открыть незакрытую инвентаризацию', mtError, [mbOK], 0);
    exit;
   end;

  with fMain do
   try
    SocketConnection.AppServer.DBStartTransaction;
    // Изменяем состояние инвентаризации на состояние "активна"
    InUpDelCDS.Close;
    InUpDelCDS.CommandText :=
      'update inventorylist il set il.status = 1 where il.id = ' + InventoryListCDSID.AsString;
    InUpDelCDS.Execute;
    SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDlg('Ошибка: ' + E.Message,mtError,[mbOk],0);
   end; //on E:Exception
  end; //try
 RefreshInventoryBBClick(Self);
end;

procedure TfInventoryList.ExportToExcelMIClick(Sender: TObject);
begin
 with fMain.SaveDialog do
  begin
   DefaultExt := 'xls';
   Filter := 'Microsoft Excel 2000 (*.xls)|*.xls';
   FileName := 'Остатки по инвентаризации №' + InventoryListCDSID.AsString + '.xls';
   if Execute then
    ExportGrid4ToExcel(FileName, DetailcxGrid);
  end;
end;

procedure TfInventoryList.DeleteFromCasheMIClick(Sender: TObject);
begin
 if MessageDlg('Вы уверены в удалении данных?', mtConfirmation,[mbYes, mbNo], 0)<>mrYes then
   exit;

 with fMain do
  begin
   try
    SocketConnection.AppServer.DBStartTransaction;
    InUpDelCDS.Close;
    InUpDelCDS.CommandText :=
     'delete from inventorycashe where id = ' + InventoryCasheCDSID.AsString;
    InUpDelCDS.Execute;

    SocketConnection.AppServer.DBCommit;

   except on E:Exception do
    begin
     SocketConnection.AppServer.DBRollBack;
     MessageDlg('Ошибка: ' + E.Message+'"',mtError,[mbOk],0);
    end;//except
   end;//try..except

   RefreshCDS(InventoryCasheCDS);
  end; //with
end;

procedure TfInventoryList.InventoryReportsPMPopup(Sender: TObject);
begin
 if InventoryListCDSDISTRIBUTIONID.IsNull then
  begin
   InventoryActPrintMI.Visible := False;
   TradeReportMI.Visible := False;
   DefectActMI.Visible := False;
   DefectActOrbitMI.Visible := False;
   DefectActMouseMI.Visible := False;
   IndefiniteMI.Visible := False;
   RemovingMI.Visible := False;
  end
 else
  begin
   InventoryActPrintMI.Visible := True;
   TradeReportMI.Visible := True;
   DefectActMI.Visible := True;
   DefectActOrbitMI.Visible := True;
   DefectActMouseMI.Visible := True;
   IndefiniteMI.Visible := True;
   RemovingMI.Visible := True;
  end;
end;

procedure TfInventoryList.InventoryActPrintMIClick(Sender: TObject);
begin
 if InventoryListCDSINVENTORYTEMPID.IsNull then
  begin
   MessageDLG('Не создан инвентаризационный акт.', mtError, [mbOK], 0);
   exit;
  end;

 try
  begin
   InventoryActPrintCDS.Params[0].AsInteger := InventoryListCDSINVENTORYTEMPID.AsInteger;
   InventoryActPrintCDS.Params[1].AsInteger := 0;
   InventoryActPrintfrxReport.ReportOptions.Name := 'Инвентаризационная опись-акт. Код ' + InventoryActPrintCDS.Params[0].AsString;

   InventoryDetailActCDS.Params[0].AsInteger := InventoryListCDSID.AsInteger;
   InventoryDetailActCDS.Params[1].AsInteger := 0;

   fMain.RefreshCDS(TClientDataSet(InventoryActPrintCDS));
   fMain.RefreshCDS(TClientDataSet(InventoryDetailActCDS));

   if InventoryActPrintfrxReport.PrepareReport then
    InventoryActPrintfrxReport.ShowPreparedReport;
  end;

 except on E: Exception do
  MessageDlg('Ошибка при печати док-ов.' + E.Message, mtError, [mbOk], 0);
 end; //try
end;

procedure TfInventoryList.TradeReportMIClick(Sender: TObject);
begin
 if InventoryListCDSINVENTORYTEMPID.IsNull then
  begin
   MessageDLG('Не создан инвентаризационный акт.', mtError, [mbOK], 0);
   exit;
  end;

  PageControl.ActivePage := TradeReportTS;
  TradeReportRefreshcxBBClick(Self);
end;

function TfInventoryList.InventoryActPrintfrxReportUserFunction(
  const MethodName: String; var Params: Variant): Variant;
begin
 if MethodName = 'SUMMAPROPIS' then
  begin
   if Params[0] <> null then
    Result := SummaPropis(Params[0])
   else
    Result := SummaPropis(0);
   end;

 if MethodName = 'RUBLE' then
  begin
   if ((Params[0] <> null) and (Params[1] <> null)) then
    Result := Ruble(Params[0], Params[1])
   else
    Result := Ruble(0, '');
   end;

 if MethodName = 'KOPEIKA' then
  begin
   if ((Params[0] <> null) and (Params[1] <> null)) then
    Result := Kopeika(Params[0], Params[1])
   else
    Result := Kopeika(0, '');
   end;

 InventoryActPrintfrxReport.AddFunction('function SummaPropis(summa: Double):String');
 InventoryActPrintfrxReport.AddFunction('function Ruble(summa: Double, rub: String):String');
 InventoryActPrintfrxReport.AddFunction('function Kopeika(summa: Double, kop: String):String');
end;

procedure TfInventoryList.TradeReportDeleteBBClick(Sender: TObject);
begin
 if MessageDlg('Вы уверены в удалении данных?', mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
   exit;

 with fMain do
  begin
   try
    SocketConnection.AppServer.DBStartTransaction;
    InUpDelCDS.Close;
    InUpDelCDS.CommandText :=
     'delete from tradereport where id = ' + TradeReportCDSID.AsString;
    InUpDelCDS.Execute;

    SocketConnection.AppServer.DBCommit;

   except on E:Exception do
    begin
     SocketConnection.AppServer.DBRollBack;
     MessageDlg('При Удалении данных произошла ошибка. Исходное сообщение ->"' + E.Message+'"',mtError,[mbOk],0);
    end;//except
   end;//try..except
  end; // with

 fMain.RefreshCDS(TradeReportCDS);
end;

procedure TfInventoryList.TradeReportDSDataChange(Sender: TObject;
  Field: TField);
begin
 TradeReportDetailCDS.Close;

 if (not TradeReportCDS.Active) or (TradeReportCDS.IsEmpty) then
  exit;

 with TradeReportDetailCDS do
  begin
   DisableControls;
   Params[0].AsInteger := TradeReportCDSID.AsInteger;
    try
     Open;
    finally
     EnableControls;
    end;  //try..finally
 end;   //with
end;

procedure TfInventoryList.AddTRDetailMIClick(Sender: TObject);
begin
 if (not Assigned(fTradeReportAddDetail)) then
  Application.CreateForm(TfTradeReportAddDetail, fTradeReportAddDetail);
 fTradeReportAddDetail.fInventoryListLink := Self;
 fTradeReportAddDetail.ShowModal;
end;

procedure TfInventoryList.TradeReportDetailPMPopup(Sender: TObject);
begin
 DeleteTRDetailMI.Visible := Boolean(TradeReportDetailCDSISMANUAL.AsInteger);
 ImportFrom1cMI.Visible := (TradeReportCDSILSTATUS.AsInteger = 1);
end;

procedure TfInventoryList.ImportFrom1cMIClick(Sender: TObject);
var CmdText: string;
    Year, Month, Day: Word;
    counterror: Integer;
begin
 if MessageDLG('Вы действительно хотите принять операции из 1С ' + #10#13 + 'по ' + TradeReportCDSTERMINALNAME.AsString + ' ' + TradeReportCDSSTORAGENAME.AsString +
               ' с ' + TradeReportCDSSINCEDATE.AsString + ' по ' + TradeReportCDSTILLDATE.AsString, mtConfirmation, [mbYes, mbNo], 0) <>mrYes then
  exit;

 with fMain do
  begin
   try
    if VarIsEmpty(Connector1C) then
     Connector1C := CreateOleObject(fMain.Base1CTypeConnector);

    if VarIsEmpty(Server1C) then
     Server1C := Connector1C.Connect(Base1CPath);
   except on E: Exception do
    begin
     MessageDLG('Ошибка' + E.Message, mtError, [mbOK], 0);
     exit;
    end;//on
   end;

   OleQuery := Server1C.NewObject('Запрос');

   AnyCommandCDS.Close;
   AnyCommandCDS.CommandText := 'select trd.selectrules from tradereportdetailtype trd where trd.id = 0';
   AnyCommandCDS.Open;

   counterror := 0;

   CmdText := AnyCommandCDS.FieldByName('selectrules').AsString;

   CmdText := ReplaceSub(CmdText, ':distributionid', '"' + Format('%.9d', [TradeReportCDSDISTRIBUTIONID.AsInteger]) + '"');
   CmdText := ReplaceSub(CmdText, ':departmentid', '"' + Format('%.9d', [TradeReportCDSDEPARTMENTID.AsInteger]) + '"');

   DecodeDate(TradeReportCDSSINCEDATE.AsDateTime, Year, Month, Day);
   CmdText := ReplaceSub(CmdText, ':begindate', IntToStr(Year) + ',' + IntToStr(Month) + ',' + IntToStr(Day) + ',0,0,0');

   DecodeDate(TradeReportCDSTILLDATE.AsDateTime, Year, Month, Day);
   CmdText := ReplaceSub(CmdText, ':enddate', IntToStr(Year) + ',' + IntToStr(Month) + ',' + IntToStr(Day) + ',23,59,59');

   OleQuery.Текст := CmdText;
   OleResult := OleQuery.Выполнить().Выбрать();

   TradeReportDetailcxPB.Position := 0;
   TradeReportDetailcxPB.Properties.Max := OleResult.Количество();
   Application.ProcessMessages;

   if (OleResult.Количество() > 0) then
    begin
     while OleResult.Следующий() do
      begin
       try
        SocketConnection.AppServer.DBStartTransaction;
        InUpDelCDS.Close;
        CmdText :=
           'execute procedure buytrans_tradereportimport(' +
            VarToStr(OleResult.OPERATIONSUM) + ',' +
            #39 + VarToStr(OleResult.OPERATIONNAME) + #39 + ',' +
            #39 + VarToStr(OleResult.OPERATIONNUMBER) + #39 + ',' +
            TradeReportCDSID.AsString + ',' +
            #39 + VarToStr(OleResult.OPERATIONDATE) + #39 + ',0)';
          InUpDelCDS.CommandText := CmdText;
          InUpDelCDS.Execute;
          SocketConnection.AppServer.DBCommit;
         except on E: Exception do
          begin
           SocketConnection.AppServer.DBRollBack;
           MessageDLG('Ошибка' + E.Message + #10#13 + 'Документ ' + VarToStr(OleResult.OPERATIONNUMBER), mtError, [mbOK], 0);
           counterror := counterror + 1;
          end;//on
         end;//try..except

         TradeReportDetailcxPB.Position := TradeReportDetailcxPB.Position + 1;
         Application.ProcessMessages;
        end;
    end;
   MessageDLG('Операции получены.' + #10#13 + 'Ошибок: ' + IntToStr(counterror), mtInformation, [mbOK], 0);
  end; // with fMain do
 fMain.RefreshCDS(TradeReportDetailCDS);
 TradeReportDetailcxPB.Position := 0;
end;

procedure TfInventoryList.DeleteTRDetailMIClick(Sender: TObject);
begin
 if MessageDlg('Удалить операцию №' + TradeReportDetailCDSOPERATIONNUMBER.AsString  + '?', mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
   exit;

 with fMain do
  begin
   try
    SocketConnection.AppServer.DBStartTransaction;
    InUpDelCDS.Close;
    InUpDelCDS.CommandText :=
     'delete from tradereportdetail where id = ' + TradeReportDetailCDSID.AsString;
    InUpDelCDS.Execute;

    SocketConnection.AppServer.DBCommit;

   except on E:Exception do
    begin
     SocketConnection.AppServer.DBRollBack;
     MessageDlg('При Удалении данных произошла ошибка. Исходное сообщение ->"' + E.Message + '"', mtError, [mbOk], 0);
    end;//except
   end;//try..except
  end; // with

 fMain.RefreshCDS(TradeReportDetailCDS);
end;

procedure TfInventoryList.FillActMIClick(Sender: TObject);
begin
 if InventoryListCDSINVENTORYTEMPID.IsNull then
  begin
   if (not Assigned(fInventoryAdd)) then
    Application.CreateForm(TfInventoryAdd, fInventoryAdd);
    fInventoryAdd.fInventoryLink := nil;
    fInventoryAdd.fInventoryListLink := Self;
    fInventoryAdd.Tag := 0;
    fInventoryAdd.ShowModal;
  end
 else
  begin
   if (not Assigned(fInventoryAdd)) then
    Application.CreateForm(TfInventoryAdd, fInventoryAdd);
    fInventoryAdd.fInventoryLink := nil;
    fInventoryAdd.fInventoryListLink := Self;
    fInventoryAdd.Tag := InventoryListCDSINVENTORYTEMPID.AsInteger;
    fInventoryAdd.ShowModal;
  end;

  fMain.RefreshCDS(InventoryListCDS);
  InventoryListCDS.Locate('ID', InventoryListCDSID.AsInteger, []);
end;

procedure TfInventoryList.DefectActMIClick(Sender: TObject);
begin
 if InventoryListCDSINVENTORYTEMPID.IsNull then
  begin
   MessageDLG('Не создан инвентаризационный акт.', mtError, [mbOK], 0);
   exit;
  end;

 try
  begin
   InventoryActPrintCDS.Params[0].AsInteger := InventoryListCDSINVENTORYTEMPID.AsInteger;
   InventoryActPrintCDS.Params[1].AsInteger := 1;
   DefectActfrxReport.ReportOptions.Name := 'Дефектная ведомость. Код ' + InventoryActPrintCDS.Params[0].AsString;

   InventoryDetailActCDS.Params[0].AsInteger := InventoryListCDSID.AsInteger;
   InventoryDetailActCDS.Params[1].AsInteger := 1;

   fMain.RefreshCDS(TClientDataSet(InventoryActPrintCDS));
   fMain.RefreshCDS(TClientDataSet(InventoryDetailActCDS));

   if DefectActfrxReport.PrepareReport then
    DefectActfrxReport.ShowPreparedReport;
  end;

 except on E: Exception do
  MessageDlg('Ошибка при печати док-ов.' + E.Message, mtError, [mbOk], 0);
 end; //try
end;

function TfInventoryList.DefectActfrxReportUserFunction(
  const MethodName: String; var Params: Variant): Variant;
begin
 if MethodName = 'SUMMAPROPIS' then
  begin
   if Params[0] <> null then
    Result := SummaPropis(Params[0])
   else
    Result := SummaPropis(0);
   end;

 if MethodName = 'RUBLE' then
  begin
   if ((Params[0] <> null) and (Params[1] <> null)) then
    Result := Ruble(Params[0], Params[1])
   else
    Result := Ruble(0, '');
   end;

 if MethodName = 'KOPEIKA' then
  begin
   if ((Params[0] <> null) and (Params[1] <> null)) then
    Result := Kopeika(Params[0], Params[1])
   else
    Result := Kopeika(0, '');
   end;

 DefectActfrxReport.AddFunction('function SummaPropis(summa: Double):String');
 DefectActfrxReport.AddFunction('function Ruble(summa: Double, rub: String):String');
 DefectActfrxReport.AddFunction('function Kopeika(summa: Double, kop: String):String');
end;

procedure TfInventoryList.DefectActOrbitMIClick(Sender: TObject);
begin
 if InventoryListCDSINVENTORYTEMPID.IsNull then
  begin
   MessageDLG('Не создан инвентаризационный акт.', mtError, [mbOK], 0);
   exit;
  end;

 try
  begin
   InventoryActPrintCDS.Params[0].AsInteger := InventoryListCDSINVENTORYTEMPID.AsInteger;
   InventoryActPrintCDS.Params[1].AsInteger := 2;
   DefectActfrxReport.ReportOptions.Name := 'Дефектная ведомость (орбит). Код ' + InventoryActPrintCDS.Params[0].AsString;

   InventoryDetailActCDS.Params[0].AsInteger := InventoryListCDSID.AsInteger;
   InventoryDetailActCDS.Params[1].AsInteger := 2;

   fMain.RefreshCDS(TClientDataSet(InventoryActPrintCDS));
   fMain.RefreshCDS(TClientDataSet(InventoryDetailActCDS));

   if DefectActfrxReport.PrepareReport then
    DefectActfrxReport.ShowPreparedReport;
  end;

 except on E: Exception do
  MessageDlg('Ошибка при печати док-ов.' + E.Message, mtError, [mbOk], 0);
 end; //try
end;

procedure TfInventoryList.DefectActMouseMIClick(Sender: TObject);
begin
 if InventoryListCDSINVENTORYTEMPID.IsNull then
  begin
   MessageDLG('Не создан инвентаризационный акт.', mtError, [mbOK], 0);
   exit;
  end;

 try
  begin
   InventoryActPrintCDS.Params[0].AsInteger := InventoryListCDSINVENTORYTEMPID.AsInteger;
   InventoryActPrintCDS.Params[1].AsInteger := 3;
   DefectActfrxReport.ReportOptions.Name := 'Дефектная ведомость (мыши). Код ' + InventoryActPrintCDS.Params[0].AsString;

   InventoryDetailActCDS.Params[0].AsInteger := InventoryListCDSID.AsInteger;
   InventoryDetailActCDS.Params[1].AsInteger := 3;

   fMain.RefreshCDS(TClientDataSet(InventoryActPrintCDS));
   fMain.RefreshCDS(TClientDataSet(InventoryDetailActCDS));

   if DefectActfrxReport.PrepareReport then
    DefectActfrxReport.ShowPreparedReport;
  end;

 except on E: Exception do
  MessageDlg('Ошибка при печати док-ов.' + E.Message, mtError, [mbOk], 0);
 end; //try
end;

procedure TfInventoryList.IndefiniteMIClick(Sender: TObject);
begin
 if IndefiniteActfrxReport.PrepareReport then
  IndefiniteActfrxReport.ShowPreparedReport;
end;

procedure TfInventoryList.RemovingMIClick(Sender: TObject);
begin
 if InventoryListCDSINVENTORYTEMPID.IsNull then
  begin
   MessageDLG('Не создан инвентаризационный акт.', mtError, [mbOK], 0);
   exit;
  end;

 try
  begin
   InventoryActPrintCDS.Params[0].AsInteger := InventoryListCDSINVENTORYTEMPID.AsInteger;
   InventoryActPrintCDS.Params[1].AsInteger := 4;
   RemovingfrxReport.ReportOptions.Name := 'Бой по норме. Код ' + InventoryActPrintCDS.Params[0].AsString;

   InventoryDetailActCDS.Params[0].AsInteger := InventoryListCDSID.AsInteger;
   InventoryDetailActCDS.Params[1].AsInteger := 4;

   fMain.RefreshCDS(TClientDataSet(InventoryActPrintCDS));
   fMain.RefreshCDS(TClientDataSet(InventoryDetailActCDS));

   if RemovingfrxReport.PrepareReport then
    RemovingfrxReport.ShowPreparedReport;
  end;

 except on E: Exception do
  MessageDlg('Ошибка при печати док-ов.' + E.Message, mtError, [mbOk], 0);
 end; //try
end;

procedure TfInventoryList.TradeReportSellerMIClick(Sender: TObject);
begin
{ PageControl.ActivePage := TradeReportTS;
 TradeReportRefreshcxBBClick(Self);
 fMain.RefreshCDS(TClientDataSet(DepartmentcxLCB.Properties.ListSource.Dataset));
 DepartmentcxLCB.EditValue := 14;
 TClientDataSet(RetailStorageLCB.Properties.ListSource.DataSet).Params[0].AsInteger := DepartmentcxLCB.EditValue;
 fMain.RefreshCDS(TClientDataSet(RetailStorageLCB.Properties.ListSource.Dataset));
 RetailStorageLCB.EditValue := 1;
 DepartmentcxLCB.Enabled := True;
 RetailStorageLCB.Enabled := True;
 TradeReportCasheOncxCE.Enabled := False;
 iInventoryList := 'null';}
end;

procedure TfInventoryList.DepartmentcxLCBPropertiesEditValueChanged(
  Sender: TObject);
begin
{ TClientDataSet(RetailStorageLCB.Properties.ListSource.DataSet).Params[0].AsInteger := DepartmentcxLCB.EditValue;
 fMain.RefreshCDS(TClientDataSet(RetailStorageLCB.Properties.ListSource.Dataset));}
end;

procedure TfInventoryList.FixCasheListMIClick(Sender: TObject);
begin
 if InventoryCashePMfrxReport.PrepareReport then
    InventoryCashePMfrxReport.ShowPreparedReport;
end;

procedure TfInventoryList.ReceiptMIClick(Sender: TObject);
begin
 if InventoryListCDSINVENTORYTEMPID.IsNull then
  begin
   MessageDLG('Не создан инвентаризационный акт.', mtError, [mbOK], 0);
   exit;
  end;

 try
  begin
   InventoryActPrintCDS.Params[0].AsInteger := InventoryListCDSINVENTORYTEMPID.AsInteger;
   InventoryActPrintCDS.Params[1].AsInteger := 0;
   InventoryActPrintfrxReport.ReportOptions.Name := 'Расписка';

   fMain.RefreshCDS(TClientDataSet(InventoryActPrintCDS));

   if ReceiptfrxReport.PrepareReport then
    ReceiptfrxReport.ShowPreparedReport;
  end;

 except on E: Exception do
  MessageDlg('Ошибка при печати док-ов.' + E.Message, mtError, [mbOk], 0);
 end; //try
end;

procedure TfInventoryList.BeforeAfterMIClick(Sender: TObject);
begin
 if InventoryListCDSINVENTORYTEMPID.IsNull then
  begin
   MessageDLG('Не создан инвентаризационный акт.', mtError, [mbOK], 0);
   exit;
  end;

 try
  begin
   InventoryActPrintCDS.Params[0].AsInteger := InventoryListCDSINVENTORYTEMPID.AsInteger;
   InventoryActPrintCDS.Params[1].AsInteger := 0;

   fMain.RefreshCDS(TClientDataSet(InventoryActPrintCDS));

   if BeforeAfterfrxReport.PrepareReport then
    BeforeAfterfrxReport.ShowPreparedReport;
  end;

 except on E: Exception do
  MessageDlg('Ошибка при печати док-ов.' + E.Message, mtError, [mbOk], 0);
 end; //try
end;

procedure TfInventoryList.TradeReportAddMIClick(Sender: TObject);
begin
 if (not Assigned(fInventoryListTRAdd)) then
  Application.CreateForm(TfInventoryListTRAdd, fInventoryListTRAdd);

 with fInventoryListTRAdd do
  begin
   fInventoryListTRAdd.Tag:=InventoryListCDSID.AsInteger;
   fMain.RefreshCDS(TClientDataSet(TerminalcxLCB.Properties.ListSource.DataSet));
   TerminalcxLCB.EditValue:=InventoryListCDSTERMINALID.AsInteger;
   StoragecxLCB.EditValue := InventoryListCDSSTORAGEID.AsInteger;
   TerminalcxLCB.Enabled := False;
   StoragecxLCB.Enabled := False;
   CasheOncxCE.Enabled := True;
   ShowModal;
  end;
 BegincxDE.Date := fInventoryListTRAdd.PresentcxDE.Date;
 EndcxDE.Date := fInventoryListTRAdd.PresentcxDE.Date;
 fMain.RefreshCDS(TradeReportCDS);
end;

procedure TfInventoryList.TradeReportBackBBClick(Sender: TObject);
begin
 PageControl.ActivePage := InventoryListTS;
end;

procedure TfInventoryList.TradeReportPrintRevBBClick(Sender: TObject);
begin
 TradeReportfrxReport.ReportOptions.Name := 'Товарный отчет №' + TradeReportCDSID.AsString;

 TradeReportPrintCDS.Params[0].AsInteger := TradeReportCDSID.AsInteger;
 fMain.RefreshCDS(TClientDataSet(TradeReportPrintCDS));
 TradeReportfrxReport.PrepareReport;
 TradeReportfrxReport.ShowReport;
end;

procedure TfInventoryList.TradeReportPrintSelBBClick(Sender: TObject);
begin
 TradeReportfrxReport.ReportOptions.Name := 'Товарный отчет №' + TradeReportCDSID.AsString;

 TradeReportSellerPPrintCDS.Close;
 TradeReportSellerMPrintCDS.Close;
 TradeReportSellerPPrintCDS.Params[0].AsInteger := TradeReportCDSID.AsInteger;
 TradeReportSellerMPrintCDS.Params[0].AsInteger := TradeReportCDSID.AsInteger;
 fMain.RefreshCDS(TClientDataSet(TradeReportSellerPPrintCDS));
 fMain.RefreshCDS(TClientDataSet(TradeReportSellerMPrintCDS));
 TradeReportSellerfrxReport.PrepareReport;
 TradeReportSellerfrxReport.ShowReport;
end;

procedure TfInventoryList.TradeReportDeleteMIClick(Sender: TObject);
begin
 if MessageDlg('Вы уверены в удалении данных?', mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
   exit;

 with fMain do
  begin
   try
    SocketConnection.AppServer.DBStartTransaction;
    InUpDelCDS.Close;
    InUpDelCDS.CommandText :=
     'delete from tradereport where id = ' + TradeReportCDSID.AsString;
    InUpDelCDS.Execute;

    SocketConnection.AppServer.DBCommit;

   except on E:Exception do
    begin
     SocketConnection.AppServer.DBRollBack;
     MessageDlg('При Удалении данных произошла ошибка. Исходное сообщение ->"' + E.Message + '"', mtError, [mbOk], 0);
    end;//except
   end;//try..except
  end; // with

 TradeReportRefreshcxBBClick(Self);
end;

procedure TfInventoryList.TradeReportPrintRevMIClick(Sender: TObject);
begin
 TradeReportfrxReport.ReportOptions.Name := 'Товарный отчет №' + TradeReportCDSID.AsString;

 TradeReportPrintCDS.Params[0].AsInteger := TradeReportCDSID.AsInteger;
 fMain.RefreshCDS(TClientDataSet(TradeReportPrintCDS));
 TradeReportfrxReport.PrepareReport;
 TradeReportfrxReport.ShowReport;
end;

procedure TfInventoryList.TradeReportPrintSelMIClick(Sender: TObject);
begin
 TradeReportfrxReport.ReportOptions.Name := 'Товарный отчет №' + TradeReportCDSID.AsString;

 TradeReportSellerPPrintCDS.Close;
 TradeReportSellerMPrintCDS.Close;
 TradeReportSellerPPrintCDS.Params[0].AsInteger := TradeReportCDSID.AsInteger;
 TradeReportSellerMPrintCDS.Params[0].AsInteger := TradeReportCDSID.AsInteger;
 fMain.RefreshCDS(TClientDataSet(TradeReportSellerPPrintCDS));
 fMain.RefreshCDS(TClientDataSet(TradeReportSellerMPrintCDS));
 TradeReportSellerfrxReport.PrepareReport;
 TradeReportSellerfrxReport.ShowReport;
end;

procedure TfInventoryList.TradeReportRefreshcxBBClick(Sender: TObject);
begin
  fMain.RefreshCDS(TradeReportCDS);
end;

procedure TfInventoryList.DismissalMIClick(Sender: TObject);
begin
 if InventoryListCDSINVENTORYTEMPID.IsNull then
  begin
   MessageDLG('Не создан инвентаризационный акт.', mtError, [mbOK], 0);
   exit;
  end;

 try
  begin
   InventoryActPrintCDS.Params[0].AsInteger := InventoryListCDSINVENTORYTEMPID.AsInteger;
   InventoryActPrintCDS.Params[1].AsInteger := 0;

   fMain.RefreshCDS(TClientDataSet(InventoryActPrintCDS));

   if DismissalfrxReport.PrepareReport then
    DismissalfrxReport.ShowPreparedReport;
  end;

 except on E: Exception do
  MessageDlg('Ошибка при печати док-ов.' + E.Message, mtError, [mbOk], 0);
 end; //try
end;

procedure TfInventoryList.DocsActMIClick(Sender: TObject);
begin
 if InventoryListCDSINVENTORYTEMPID.IsNull then
  begin
   MessageDLG('Не создан инвентаризационный акт.', mtError, [mbOK], 0);
   exit;
  end;

 try
  begin
   InventoryActPrintCDS.Params[0].AsInteger := InventoryListCDSINVENTORYTEMPID.AsInteger;
   InventoryActPrintCDS.Params[1].AsInteger := 0;

   fMain.RefreshCDS(TClientDataSet(InventoryActPrintCDS));

   if DocsActfrxReport.PrepareReport then
    DocsActfrxReport.ShowPreparedReport;
  end;

 except on E: Exception do
  MessageDlg('Ошибка при печати док-ов.' + E.Message, mtError, [mbOk], 0);
 end; //try
end;

procedure TfInventoryList.CashActMIClick(Sender: TObject);
begin
 if InventoryListCDSINVENTORYTEMPID.IsNull then
  begin
   MessageDLG('Не создан инвентаризационный акт.', mtError, [mbOK], 0);
   exit;
  end;

 try
  begin
   InventoryActPrintCDS.Params[0].AsInteger := InventoryListCDSINVENTORYTEMPID.AsInteger;
   InventoryActPrintCDS.Params[1].AsInteger := 0;

   InventoryEmployeeCDS.Params[0].AsInteger := InventoryListCDSINVENTORYTEMPID.AsInteger;

   fMain.RefreshCDS(TClientDataSet(InventoryActPrintCDS));
   fMain.RefreshCDS(TClientDataSet(InventoryEmployeeCDS));

   if CashActfrxReport.PrepareReport then
    CashActfrxReport.ShowPreparedReport;
  end;

 except on E: Exception do
  MessageDlg('Ошибка при печати док-ов.' + E.Message, mtError, [mbOk], 0);
 end; //try
end;

procedure TfInventoryList.WealthActMIClick(Sender: TObject);
begin
 if InventoryListCDSINVENTORYTEMPID.IsNull then
  begin
   MessageDLG('Не создан инвентаризационный акт.', mtError, [mbOK], 0);
   exit;
  end;

 try
  begin
   InventoryActPrintCDS.Params[0].AsInteger := InventoryListCDSINVENTORYTEMPID.AsInteger;
   InventoryActPrintCDS.Params[1].AsInteger := 5;
   WealthActfrxReport.ReportOptions.Name := 'Акт инвентаризации оборудования. Код ' + InventoryActPrintCDS.Params[0].AsString;

   InventoryDetailActCDS.Params[0].AsInteger := InventoryListCDSID.AsInteger;
   InventoryDetailActCDS.Params[1].AsInteger := 5;

   InventoryEmployeeCDS.Params[0].AsInteger := InventoryListCDSINVENTORYTEMPID.AsInteger;

   fMain.RefreshCDS(TClientDataSet(InventoryActPrintCDS));
   fMain.RefreshCDS(TClientDataSet(InventoryDetailActCDS));
   fMain.RefreshCDS(TClientDataSet(InventoryEmployeeCDS));

   if WealthActfrxReport.PrepareReport then
    WealthActfrxReport.ShowPreparedReport;
  end;

 except on E: Exception do
  MessageDlg('Ошибка при печати док-ов.' + E.Message, mtError, [mbOk], 0);
 end; //try
end;

procedure TfInventoryList.InventoryBegincxDEPropertiesChange(
  Sender: TObject);
begin
 if InventoryBegincxDE.Date > InventoryEndcxDE.Date then
  InventoryEndcxDE.Date := InventoryBegincxDE.Date;
end;

procedure TfInventoryList.InventoryEndcxDEPropertiesChange(
  Sender: TObject);
begin
 if InventoryEndcxDE.Date < InventoryBegincxDE.Date then
  InventoryBegincxDE.Date := InventoryEndcxDE.Date;
end;

procedure TfInventoryList.PrintSaleMIClick(Sender: TObject);
var pi:TProcessInformation;
    si:TStartupInfo;
    ResCP:Boolean;
    Params:string;
    ErrorText:string;
    SpoolDocsCount:integer;
begin
 Params := InventoryListCDSID.AsString + //operationid
         ' 11 ' + //operationtypeid
         ' -1 ' + //printer
         ' 0 ' + //факсимиле
         ' 1 ' + //просмотр или печать
         ' 0 1 0 0 0 0 0 0 0 0 0 0 ';

 try
  GetStartupInfo(si);
  ResCP := False;
  ResCP := CreateProcess(nil, PChar('docprinter.exe ' + Params), nil, nil, false, 0, nil, nil, si, pi);
  if ResCP then
   begin
    CloseHandle(PI.hThread);
    CloseHandle(PI.hProcess)
   end;//if Res
 except
  ;
 end;
end;

procedure TfInventoryList.CheckEgaisDocMIClick(Sender: TObject);
var MsgTxt,TempTxt,isdelivered:string;
    mrVar:smallint;
begin
 TempTxt:='Ревизия готова к фиксации остатков';
 with fMain do
  begin
   try
    AnyCommandCDS.Close;
    AnyCommandCDS.CommandText :=
     'select * from buytrans_inventoryegaischeck('+InventoryListCDSID.AsString+')';
    AnyCommandCDS.Open;
   except on E:Exception do
    MessageDlg('Ошибка:'+E.Message, mtError, [mbOk], 0);
   end; // with
   MsgTxt:='';
   if AnyCommandCDS.Isempty then
    MsgTxt:=TempTxt
   else
    begin
     AnyCommandCDS.First;
     while not AnyCommandCDS.Eof do
      begin
       if MsgTxt='' then MsgTxt:=AnyCommandCDS.Fields[0].AsString
                    else MsgTxt:=MsgTxt+#10#13+AnyCommandCDS.FieldByName('resultstr').AsString;

       AnyCommandCDS.Next;
      end;
    end;
  end;
 MessageDlg(MsgTxt, mtInformation, [mbOk], 0);

 if (Pos(TempTxt,MsgTxt)=0) then
  with fMain do
  begin
   AnyCommandCDS.First;
   while not AnyCommandCDS.Eof do
    begin
     if not AnyCommandCDS.FieldByName('saleid').IsNull then
      begin
       mrVar:=MessageDlg(AnyCommandCDS.FieldByName('resultstr').AsString+' Доставлена?', mtConfirmation, [mbYes, mbNo] , 0);
       if mrVar=mrYes then
        isdelivered:='1'
       else
        if mrVar=mrNo then
         isdelivered:='11'
        else
         isdelivered:='0';

       try
        InUpDelCDS.Close;
        InUpDelCDS.CommandText:=
         'update sale s set s.isdelivered='+isdelivered+' where s.id='+AnyCommandCDS.FieldByName('saleid').AsString;
        SocketConnection.AppServer.DBStartTransaction;
        InUpDelCDS.Execute;
        SocketConnection.AppServer.DBCommit;
       except on E:Exception do
        begin
         SocketConnection.AppServer.DBRollBack;
         MessageDlg('Ошибка:'+E.Message, mtError, [mbOk], 0);
        end;//on
       end;//try..except}
     end;
    AnyCommandCDS.Next;
   end;
  end;
end;

procedure TfInventoryList.InventoryListCDSBeforeOpen(DataSet: TDataSet);
begin
 InventoryListCDS.Params[0].AsDateTime := InventoryBegincxDE.Date;
 InventoryListCDS.Params[1].AsDateTime := InventoryEndcxDE.Date;

 if ShowAuditCB.Checked then
  TClientDataSet(Dataset).Params[2].AsInteger:= 1
 else
  TClientDataSet(Dataset).Params[2].AsInteger:= 0;
end;

procedure TfInventoryList.ShowAuditCBClick(Sender: TObject);
begin
 fMain.RefreshCDS(InventoryListCDS);
end;

procedure TfInventoryList.CancelInventoryMIClick(Sender: TObject);
begin
 if MessageDlg('Вы уверены что хотите отменить ревизию ' + InventoryListCDSSTNAME.AsString + '?', mtConfirmation,[mbYes, mbNo], 0)<>mrYes then
   exit;

 with fMain do
   begin
    try
     SocketConnection.AppServer.DBStartTransaction;
     // Изменяем состояние инвентаризации на состояние "отменена"
     InUpDelCDS.Close;
     InUpDelCDS.CommandText :=
       'update inventorylist il set il.status = 3 where il.id = ' + InventoryListCDSID.AsString;
     InUpDelCDS.Execute;
     SocketConnection.AppServer.DBCommit;

     RefreshInventoryBBClick(Self);

   except on E:Exception do
    begin
     MessageDlg('Ошибка:'+E.Message, mtError, [mbOk], 0);
     SocketConnection.AppServer.DBRollBack;
    end; //on E:Exception
   end; //try
  end; //with
end;



procedure TfInventoryList.AddToCasheMIClick(Sender: TObject);
begin
 if ((InventoryListCDSSTATUS.AsInteger <> 1) and (InventoryListCDSISPARTIAL.AsInteger = 0)) then
  begin
   MessageDLG('Нельзя добавлять позиции в неактивную или закрытую инвентаризацию', mtError, [mbOK], 0);
   exit;
  end;

 if not InventoryListCDSDISTRIBUTIONID.IsNull then
  if MessageDLG('Начать внесение остатков по адресу ' + InventoryListCDSSTNAME.AsString + '?', mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
   exit;

 if (not Assigned(fInventoryListCashe)) then
  Application.CreateForm(TfInventoryListCashe, fInventoryListCashe);
 fInventoryListCashe.fInventoryListLink:=self;
 fInventoryListCashe.Tag:=0;
 fInventoryListCashe.ShowModal;
 fMain.RefreshCDS(InventoryCasheCDS);
end;

procedure TfInventoryList.DetailcxGridDBTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.DisplayTexts[DetailcxGridDBTVFLAGLINKED.Index]<>'1') then
  ACanvas.Brush.Color := $00DFDFFF;
end;

procedure TfInventoryList.TradeReportCDSBeforeOpen(DataSet: TDataSet);
begin
 TradeReportCDS.Params[0].AsDateTime := BegincxDE.Date;
 TradeReportCDS.Params[1].AsDateTime := EndcxDE.Date;
end;

procedure TfInventoryList.ExciseInventoryMIClick(Sender: TObject);
begin
 if (not Assigned(fExciseScan)) then
  Application.CreateForm(TfExciseScan, fExciseScan);
 fExciseScan.ViewCDS.Params[0].AsInteger:=4;
 fExciseScan.ViewCDS.Params[1].AsInteger:=InventoryListCDSID.AsInteger;
 fExciseScan.ExcisecxButton.Enabled:=(InventoryListCDSSTATUS.AsInteger<>2);
 fExciseScan.ShowModal;
 fMain.RefreshCDS(InventoryCasheCDS);
end;

procedure TfInventoryList.ExciseEqualMIClick(Sender: TObject);
begin
 if MessageDlg('Вы уверены в изменении данных?', mtConfirmation,[mbYes, mbNo], 0)<>mrYes then
   exit;

 with fMain do
  begin
   try
    SocketConnection.AppServer.DBStartTransaction;
    InUpDelCDS.Close;
    InUpDelCDS.CommandText :=
     'execute procedure buytrans_inventorylistlink_te('+InventoryCasheCDSID.AsString+')';
    InUpDelCDS.Execute;

    SocketConnection.AppServer.DBCommit;

   except on E:Exception do
    begin
     SocketConnection.AppServer.DBRollBack;
     MessageDlg('Ошибка: ' + E.Message+'"',mtError,[mbOk],0);
    end;//except
   end;//try..except

   RefreshCDS(InventoryCasheCDS);
  end; //with}
end;

end.


