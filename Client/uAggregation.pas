unit uAggregation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxCurrencyEdit, Menus, DBClient, cxSplitter,
  Buttons, StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ExtCtrls,
  IBCustomDataSet, cxImageComboBox, ImgList, frxClass, frxDBSet;

type
  TfAggregation = class(TForm)
    TopPanel: TPanel;
    LeftTopPanel: TPanel;
    RefreshSB: TSpeedButton;
    Label36: TLabel;
    BeginDatecxDE: TcxDateEdit;
    EndDatecxDE: TcxDateEdit;
    McBuyDoccxGrid: TcxGrid;
    McBuyDoccxGridDBTV: TcxGridDBTableView;
    McBuyDoccxGridLevel: TcxGridLevel;
    BottomPanel: TPanel;
    BottomLeftPanel: TPanel;
    Panel3: TPanel;
    McBuyDocDetailcxGrid: TcxGrid;
    McBuyDocDetailcxGridDBTV: TcxGridDBTableView;
    McBuyDocDetailcxGridLevel: TcxGridLevel;
    BottomCenterPanel: TPanel;
    BottomRightPanel: TPanel;
    AggregationSourcecxGrid: TcxGrid;
    AggregationSourcecxGridDBTV: TcxGridDBTableView;
    AggregationSourcecxGridLevel: TcxGridLevel;
    BottomcxSplitter: TcxSplitter;
    cxSplitter: TcxSplitter;
    AggregationDocCDS: TClientDataSet;
    AggregationDocCDSID: TIntegerField;
    AggregationDocCDSPRESENT: TDateTimeField;
    AggregationDocCDSSTATUS: TSmallintField;
    McBuyDocDS: TDataSource;
    McBuyDocCDS: TClientDataSet;
    McBuyDocCDSID: TIntegerField;
    McBuyDocCDSADDBUY: TIntegerField;
    McBuyDocCDSINPUTNUMBER: TStringField;
    McBuyDocCDSINPUTDATE: TDateTimeField;
    McBuyDocCDSFIRMNAME: TStringField;
    McBuyDocCDSSTORAGENAME: TStringField;
    McBuyDocCDSTICKEDFORM: TIntegerField;
    McBuyDocCDSSTORAGESUM: TFloatField;
    McBuyDocCDSNDSSUM: TFloatField;
    McBuyDocCDSWHOLESUM: TFloatField;
    McBuyDocCDSPROVIDERPRICESUM: TFloatField;
    McBuyDocCDSPROVIDERNDSSUM: TFloatField;
    McBuyDocCDSSTORAGETYPEID: TIntegerField;
    McBuyDocCDSBUYTYPENAME: TStringField;
    McBuyDocCDSFIRMID: TIntegerField;
    McBuyDocCDSBOTTLECOUNT: TFloatField;
    McBuyDocCDSNUMBERCF: TStringField;
    McBuyDocCDSWHENINSERT: TDateTimeField;
    McBuyDocCDSWHO: TStringField;
    McBuyDocCDSADDRESS: TStringField;
    McBuyDocCDSTRADENAME: TStringField;
    McBuyDocCDSLICENSE: TStringField;
    McBuyDocCDSMARKETNAME: TStringField;
    McBuyDocCDSBUYTYPEID: TIntegerField;
    McBuyDocCDSBUYINPUTNUMBER: TIntegerField;
    McBuyDocCDSDIRECTORVIEW: TIntegerField;
    McBuyDocCDSWHODIRECTORVIEW: TStringField;
    McBuyDocCDSWHENDIRECTORVIEW: TDateTimeField;
    McBuyDocCDSSTORAGEID: TIntegerField;
    McBuyDocCDSINVENTORYID: TIntegerField;
    McBuyDocCDSDISTRIBUTIONID: TIntegerField;
    McBuyDocCDSTRADEEMPLOYEEID: TIntegerField;
    McBuyDocCDSSHORTNAME: TStringField;
    McBuyDocCDSNOTCOMPLITESUM: TSmallintField;
    McBuyDocCDSDEPARTMENTID: TIntegerField;
    McBuyDocCDSDEPARTMENTNAME: TStringField;
    McBuyDocCDSCARRIERID: TIntegerField;
    McBuyDocCDSCARRIERCARMARK: TStringField;
    McBuyDocCDSCARRIERCARLICENSEPLATE: TStringField;
    McBuyDocCDSCARRIERNAME: TStringField;
    McBuyDocCDSMAXRETAILPRICESUM: TFloatField;
    McBuyDocCDSINBUY: TSmallintField;
    McBuyDocCDSCORRECTION: TSmallintField;
    McBuyDocCDSTRADEEMPLOYEENAME: TStringField;
    McBuyDocCDSISDUMMYSTORAGE: TIntegerField;
    McBuyDocCDSSALEID: TIntegerField;
    McBuyDocCDSSTORAGEDISTRIBUTIONID: TIntegerField;
    McBuyDoccxGridDBTVID: TcxGridDBColumn;
    McBuyDoccxGridDBTVADDBUY: TcxGridDBColumn;
    McBuyDoccxGridDBTVINPUTNUMBER: TcxGridDBColumn;
    McBuyDoccxGridDBTVINPUTDATE: TcxGridDBColumn;
    McBuyDoccxGridDBTVFIRMNAME: TcxGridDBColumn;
    McBuyDoccxGridDBTVSTORAGENAME: TcxGridDBColumn;
    McBuyDoccxGridDBTVTICKEDFORM: TcxGridDBColumn;
    McBuyDoccxGridDBTVSTORAGESUM: TcxGridDBColumn;
    McBuyDoccxGridDBTVNDSSUM: TcxGridDBColumn;
    McBuyDoccxGridDBTVWHOLESUM: TcxGridDBColumn;
    McBuyDoccxGridDBTVPROVIDERPRICESUM: TcxGridDBColumn;
    McBuyDoccxGridDBTVPROVIDERNDSSUM: TcxGridDBColumn;
    McBuyDoccxGridDBTVSTORAGETYPEID: TcxGridDBColumn;
    McBuyDoccxGridDBTVBUYTYPENAME: TcxGridDBColumn;
    McBuyDoccxGridDBTVFIRMID: TcxGridDBColumn;
    McBuyDoccxGridDBTVBOTTLECOUNT: TcxGridDBColumn;
    McBuyDoccxGridDBTVNUMBERCF: TcxGridDBColumn;
    McBuyDoccxGridDBTVWHENINSERT: TcxGridDBColumn;
    McBuyDoccxGridDBTVWHO: TcxGridDBColumn;
    McBuyDoccxGridDBTVADDRESS: TcxGridDBColumn;
    McBuyDoccxGridDBTVTRADENAME: TcxGridDBColumn;
    McBuyDoccxGridDBTVLICENSE: TcxGridDBColumn;
    McBuyDoccxGridDBTVMARKETNAME: TcxGridDBColumn;
    McBuyDoccxGridDBTVBUYTYPEID: TcxGridDBColumn;
    McBuyDoccxGridDBTVBUYINPUTNUMBER: TcxGridDBColumn;
    McBuyDoccxGridDBTVDIRECTORVIEW: TcxGridDBColumn;
    McBuyDoccxGridDBTVWHODIRECTORVIEW: TcxGridDBColumn;
    McBuyDoccxGridDBTVWHENDIRECTORVIEW: TcxGridDBColumn;
    McBuyDoccxGridDBTVSTORAGEID: TcxGridDBColumn;
    McBuyDoccxGridDBTVINVENTORYID: TcxGridDBColumn;
    McBuyDoccxGridDBTVDISTRIBUTIONID: TcxGridDBColumn;
    McBuyDoccxGridDBTVTRADEEMPLOYEEID: TcxGridDBColumn;
    McBuyDoccxGridDBTVSHORTNAME: TcxGridDBColumn;
    McBuyDoccxGridDBTVNOTCOMPLITESUM: TcxGridDBColumn;
    McBuyDoccxGridDBTVDEPARTMENTID: TcxGridDBColumn;
    McBuyDoccxGridDBTVDEPARTMENTNAME: TcxGridDBColumn;
    McBuyDoccxGridDBTVCARRIERID: TcxGridDBColumn;
    McBuyDoccxGridDBTVCARRIERCARMARK: TcxGridDBColumn;
    McBuyDoccxGridDBTVCARRIERCARLICENSEPLATE: TcxGridDBColumn;
    McBuyDoccxGridDBTVCARRIERNAME: TcxGridDBColumn;
    McBuyDoccxGridDBTVMAXRETAILPRICESUM: TcxGridDBColumn;
    McBuyDoccxGridDBTVINBUY: TcxGridDBColumn;
    McBuyDoccxGridDBTVCORRECTION: TcxGridDBColumn;
    McBuyDoccxGridDBTVTRADEEMPLOYEENAME: TcxGridDBColumn;
    McBuyDoccxGridDBTVISDUMMYSTORAGE: TcxGridDBColumn;
    McBuyDoccxGridDBTVSALEID: TcxGridDBColumn;
    McBuyDoccxGridDBTVSTORAGEDISTRIBUTIONID: TcxGridDBColumn;
    McBuyDocDetailCDS: TClientDataSet;
    McBuyDocDetailCDSID: TIntegerField;
    McBuyDocDetailCDSBUYID: TIntegerField;
    McBuyDocDetailCDSDRINKKINDID: TIntegerField;
    McBuyDocDetailCDSDRINKID: TIntegerField;
    McBuyDocDetailCDSBUYBOX: TStringField;
    McBuyDocDetailCDSSALEBOX: TStringField;
    McBuyDocDetailCDSPRICECONTRACTORDER: TFloatField;
    McBuyDocDetailCDSNDSCONTRACTORDER: TFloatField;
    McBuyDocDetailCDSSSPRICECONTRACTORDER: TFloatField;
    McBuyDocDetailCDSSUMPRICE: TFloatField;
    McBuyDocDetailCDSSUMNDS: TFloatField;
    McBuyDocDetailCDSDRINKGROUPNAME: TStringField;
    McBuyDocDetailCDSDATEFACTORY: TStringField;
    McBuyDocDetailCDSSTORAGEID: TIntegerField;
    McBuyDocDetailCDSSTORAGENAME: TStringField;
    McBuyDocDetailCDSPRINTMARK: TStringField;
    McBuyDocDetailCDSDISTRIBUTIONID: TIntegerField;
    McBuyDocDetailCDSLICENSE: TStringField;
    McBuyDocDetailCDSCOUNTUNIT: TFloatField;
    McBuyDocDetailCDSSALEBOXCOUNT: TFloatField;
    McBuyDocDetailCDSDRINKGROUPTYPENAME: TIBStringField;
    McBuyDocDetailCDSIMPORTERID: TIntegerField;
    McBuyDocDetailCDSMAXRETAILPRICE: TFloatField;
    McBuyDocDetailCDSEXCISELINE: TStringField;
    McBuyDocDetailCDSBUYBOXID: TIntegerField;
    McBuyDocDetailCDSSALEBOXID: TIntegerField;
    McBuyDocDetailCDSBARCODE: TStringField;
    McBuyDocDetailCDSLINKTOSALE: TStringField;
    McBuyDocDetailCDSRETAILPRICE: TFloatField;
    McBuyDocDetailCDSSUMRETAILPRICE: TFloatField;
    McBuyDocDetailCDSSUMPROFIT: TFloatField;
    McBuyDocDetailDS: TDataSource;
    McBuyDocDetailcxGridDBTVID: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVBUYID: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVDRINKKINDID: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVDRINKID: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVBUYBOX: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVSALEBOX: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVPRICECONTRACTORDER: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVNDSCONTRACTORDER: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVSSPRICECONTRACTORDER: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVSUMPRICE: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVSUMNDS: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVDRINKGROUPNAME: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVDATEFACTORY: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVSTORAGEID: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVSTORAGENAME: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVPRINTMARK: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVDISTRIBUTIONID: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVLICENSE: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVCOUNTUNIT: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVSALEBOXCOUNT: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVDRINKGROUPTYPENAME: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVIMPORTERID: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVMAXRETAILPRICE: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVEXCISELINE: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVBUYBOXID: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVSALEBOXID: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVBARCODE: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVLINKTOSALE: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVRETAILPRICE: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVSUMRETAILPRICE: TcxGridDBColumn;
    McBuyDocDetailcxGridDBTVSUMPROFIT: TcxGridDBColumn;
    AggregationSourceCDS: TClientDataSet;
    AggregationSourceDS: TDataSource;
    AggregationSourceCDSDRINKID: TIntegerField;
    AggregationSourceCDSPRINTMARK: TStringField;
    AggregationSourcecxGridDBTVDRINKID: TcxGridDBColumn;
    AggregationSourcecxGridDBTVPRINTMARK: TcxGridDBColumn;
    MoveBuyDetailBB: TBitBtn;
    Panel1: TPanel;
    MoveSourceBB: TBitBtn;
    Panel2: TPanel;
    AggregationDocDetailcxGrid: TcxGrid;
    AggregationDocDetailcxGridDBTV: TcxGridDBTableView;
    AggregationDocDetailLevel: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    CentralPanel: TPanel;
    CentralLeftPanel: TPanel;
    CentralRightPanel: TPanel;
    cxSplitter2: TcxSplitter;
    AggregationDoccxGrid: TcxGrid;
    AggregationDoccxGridDBTV: TcxGridDBTableView;
    AggregationDocccxGL: TcxGridLevel;
    Panel4: TPanel;
    CreateAggregationDocBB: TBitBtn;
    Panel5: TPanel;
    AggregationDocDS: TDataSource;
    AggregationDoccxGridDBTVID: TcxGridDBColumn;
    AggregationDoccxGridDBTVPRESENT: TcxGridDBColumn;
    AggregationDoccxGridDBTVSTATUS: TcxGridDBColumn;
    DocStatusIL: TImageList;
    McBuyDocCDSAGGREGATIONDOCSTATUS: TSmallintField;
    SaveNewcxButton: TcxButton;
    Panel6: TPanel;
    AggregationDocDetailCDS: TClientDataSet;
    AggregationDocDetailDS: TDataSource;
    AggregationDocDetailCDSDRINKID: TIntegerField;
    AggregationDocDetailCDSPRINTMARK: TStringField;
    AggregationDocDetailCDSISPART: TSmallintField;
    AggregationDocDetailcxGridDBTVDRINKID: TcxGridDBColumn;
    AggregationDocDetailcxGridDBTVPRINTMARK: TcxGridDBColumn;
    AggregationDocDetailcxGridDBTVISPART: TcxGridDBColumn;
    AggregationDocDetailCDSRGNUMBER: TStringField;
    AggregationDocDetailcxGridDBTVRGNUMBER: TcxGridDBColumn;
    AggregationDocDetailCDSID: TIntegerField;
    AggregationDocDetailCDSDRINKKINDID: TIntegerField;
    AggregationDoccxGridDBTVSTATUSID: TcxGridDBColumn;
    McBuyDoccxGridDBTVAGGREGATIONDOCSTATUS: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel7: TPanel;
    Label5: TLabel;
    PrintBB: TcxButton;
    AggregationDocfrxReport: TfrxReport;
    AggregationDocfrxDBD: TfrxDBDataset;
    AggregationDocDetailfrxDBD: TfrxDBDataset;
    AggregationDocCDSBUYNUMBER: TStringField;
    AggregationDocCDSBUYDATE: TDateTimeField;
    DeleteBuyDetailBB: TBitBtn;
    DeleteSourceBB: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure RefreshSBClick(Sender: TObject);
    procedure McBuyDocCDSBeforeOpen(DataSet: TDataSet);
    procedure McBuyDocDSDataChange(Sender: TObject; Field: TField);
    procedure CreateAggregationDocBBClick(Sender: TObject);
    procedure AggregationDoccxGridDBTVCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure McBuyDoccxGridDBTVCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure AggregationDocDSDataChange(Sender: TObject; Field: TField);
    procedure SaveNewcxButtonClick(Sender: TObject);
    procedure MoveBuyDetailBBClick(Sender: TObject);
    procedure MoveSourceBBClick(Sender: TObject);
    procedure PrintBBClick(Sender: TObject);
    procedure DeleteBuyDetailBBClick(Sender: TObject);
    procedure DeleteSourceBBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAggregation: TfAggregation;

implementation

uses uMain;

{$R *.dfm}

procedure TfAggregation.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
 fMain.FloatToBcd(self);

 RetVal:=1;
 CompName:='McBuyDoc';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   McBuyDocCDS.Close;
   McBuyDocCDS.CommandText:=
    'select * from buytrans_mcbuydocview(:begindate, :enddate)';
   McBuyDocCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='McBuyDocDetail';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   McBuyDocDetailCDS.Close;
   McBuyDocDetailCDS.CommandText:=
    'select * from buytrans_mcbuydetailview(:buyid)';
   McBuyDocDetailCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='AggregationSource';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   AggregationSourceCDS.Close;
   AggregationSourceCDS.CommandText:=
    'select * from buytrans_aggregationsource';
   AggregationSourceCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='AggregationDoc';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   AggregationDocCDS.Close;
   AggregationDocCDS.CommandText:=
    'select * from buytrans_aggregationdoc(:buyid)';
   AggregationDocCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='AggregationDocDetail';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   AggregationDocDetailCDS.Close;
   AggregationDocDetailCDS.CommandText:=
    'select * from buytrans_aggregationdocdetail(:aggregationdocid)';
   AggregationDocDetailCDS.RemoteServer:=fMain.SocketConnection;
  end;

 BeginDatecxDE.Date := Date - 30;
 EndDatecxDE.Date := Date;

 RefreshSBClick(Self);
end;

procedure TfAggregation.RefreshSBClick(Sender: TObject);
begin
 fMain.RefreshCDS(McBuyDocCDS);
 fMain.RefreshCDS(AggregationSourceCDS);
end;

procedure TfAggregation.McBuyDocCDSBeforeOpen(DataSet: TDataSet);
begin
 McBuyDocCDS.Params[0].AsDateTime:=BeginDatecxDE.Date;
 McBuyDocCDS.Params[1].AsDateTime:=EndDatecxDE.Date;
end;

procedure TfAggregation.McBuyDocDSDataChange(Sender: TObject;
  Field: TField);
begin
 McBuyDocDetailCDS.Close;
 if (not McBuyDocCDS.Active) or (McBuyDocCDS.IsEmpty) then
  exit;
 with McBuyDocDetailCDS do
  begin
   DisableControls;
   Params[0].AsInteger:= McBuyDocCDS.FieldByName('Id').AsInteger;
   try
    Open;
   finally
    EnableControls;
   end;//try..finally
  end;//with

 AggregationDocCDS.Close;
 if (not McBuyDocCDS.Active) or (McBuyDocCDS.IsEmpty) then
  exit; 
 with AggregationDocCDS do
  begin
   DisableControls;
   Params[0].AsInteger:= McBuyDocCDS.FieldByName('Id').AsInteger;
   try
    Open;
   finally
    EnableControls;
   end;//try..finally
  end;//with
end;

procedure TfAggregation.CreateAggregationDocBBClick(Sender: TObject);
begin
 fMain.SocketConnection.AppServer.DBStartTransaction;
 try
  fMain.InUpDelCDS.Close;
  fMain.InUpDelCDS.CommandText :=
      'insert into aggregationdoc(present, buyid) '+
      'values(' + #39 + DateToStr(Date) + #39 + ',' +
                  McBuyDocCDSID.AsString + ')';
  fMain.InUpDelCDS.Execute;
  fMain.SocketConnection.AppServer.DBCommit;
 except on E:Exception do
  begin
   fMain.SocketConnection.AppServer.DBRollBack;
   MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
   exit;
  end; //on
 end; //try

 fMain.RefreshCDS(AggregationDocCDS);
end;

procedure TfAggregation.AggregationDoccxGridDBTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.DisplayTexts[AggregationDoccxGridDBTVSTATUSID.Index]='1') then
  begin
   ACanvas.Brush.Color := $00DFDFFF;
   ACanvas.Font.Color := clBlack;
  end;

 if (AViewInfo.GridRecord.DisplayTexts[AggregationDoccxGridDBTVSTATUSID.Index]='2') then
  begin
   ACanvas.Brush.Color := $C0FFC0;
   ACanvas.Font.Color := clBlack;
  end;
end;

procedure TfAggregation.McBuyDoccxGridDBTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.DisplayTexts[McBuyDocCDSAGGREGATIONDOCSTATUS.Index]='2') then
  begin
   ACanvas.Brush.Color := $C0FFC0;
   ACanvas.Font.Color := clBlack;
  end;

 if (AViewInfo.GridRecord.DisplayTexts[McBuyDocCDSAGGREGATIONDOCSTATUS.Index]='1') then
  begin
   ACanvas.Brush.Color := $00DFDFFF;
   ACanvas.Font.Color := clBlack;
  end;
end;

procedure TfAggregation.AggregationDocDSDataChange(Sender: TObject;
  Field: TField);
begin
 McBuyDocDetailCDS.Close;
 if (not McBuyDocCDS.Active) or (McBuyDocCDS.IsEmpty) then
  exit;
 with McBuyDocDetailCDS do
  begin
   DisableControls;
   Params[0].AsInteger:= McBuyDocCDS.FieldByName('Id').AsInteger;
   try
    Open;
   finally
    EnableControls;
   end;//try..finally
  end;//with

 AggregationDocDetailCDS.Close;
 if (not AggregationDocCDS.Active) or (AggregationDocCDS.IsEmpty) then
  exit;

 with AggregationDocDetailCDS do
  begin
   DisableControls;
   Params[0].AsInteger:= AggregationDocCDSID.AsInteger;
   try
    Open;
   finally
    EnableControls;
   end;//try..finally
  end;//with

 if AggregationDocCDSSTATUS.AsInteger = 2 then
  begin
   PrintBB.Enabled := True;
   MoveBuyDetailBB.Enabled := False;
   MoveSourceBB.Enabled := False;
   DeleteSourceBB.Enabled := False;
   DeleteBuyDetailBB.Enabled := False;
   SaveNewcxButton.Enabled := False;
  end
 else
  begin
   PrintBB.Enabled := False;
   MoveBuyDetailBB.Enabled := True;
   DeleteBuyDetailBB.Enabled := True;
   MoveSourceBB.Enabled := True;
   DeleteSourceBB.Enabled := True;
   SaveNewcxButton.Enabled := True;
  end;
end;

procedure TfAggregation.SaveNewcxButtonClick(Sender: TObject);
begin
 fMain.SocketConnection.AppServer.DBStartTransaction;
 try
  fMain.InUpDelCDS.Close;
  fMain.InUpDelCDS.CommandText :=
      'update aggregationdoc ag set ag.status = 2 '+
      'where ag.id = ' + AggregationDocCDSID.AsString;
  fMain.InUpDelCDS.Execute;
  fMain.SocketConnection.AppServer.DBCommit;
  MessageDlg('Документ успешно проведен', mtInformation, [mbOk], 0);
 except on E:Exception do
  begin
   fMain.SocketConnection.AppServer.DBRollBack;
   MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
   exit;
  end; //on
 end; //try

 fMain.RefreshCDS(McBuyDocCDS);
 fMain.RefreshCDS(AggregationDocCDS);
end;

procedure TfAggregation.MoveBuyDetailBBClick(Sender: TObject);
var ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
begin
 if McBuyDocDetailcxGridDBTV.DataController.GetSelectedCount=0 then
  begin
   MessageDLG('Нет выбранных записей.',mtError,[mbOK],0);
   exit;
  end;

 with McBuyDocDetailcxGridDBTV.DataController do
  begin
   BeginUpdate;

   if GetSelectedCount=1 then
    begin
     fMain.SocketConnection.AppServer.DBStartTransaction;
     try
      fMain.InUpDelCDS.Close;
      fMain.InUpDelCDS.CommandText:=
      'insert into aggregationdocdetail(aggregationdocid, drinkid, drinkkindid, ispart) ' +
      'values(' + AggregationDocCDSID.AsString + ',' +
                  McBuyDocDetailCDSDRINKID.AsString + ',' +
                  McBuyDocDetailCDSDRINKKINDID.AsString + ',1)';
      fMain.InUpDelCDS.Execute;
      fMain.SocketConnection.AppServer.DBCommit;
     except on E:Exception do
      begin
       fMain.SocketConnection.AppServer.DBRollBack;
       MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
       exit;
      end; //on
     end; //try
    end;

   if GetSelectedCount>1 then
    for i:= 0 to GetSelectedCount - 1 do
     begin
      ARowIndex := GetSelectedRowIndex(I);
      ARowInfo := GetRowInfo(ARowIndex);
      if ARowInfo.Level < Groups.GroupingItemCount then
       Continue
      else
       begin
        fMain.SocketConnection.AppServer.DBStartTransaction;
        try
         fMain.InUpDelCDS.Close;
         fMain.InUpDelCDS.CommandText:=
          'insert into aggregationdocdetail(aggregationdocid, drinkid, drinkkindid, ispart) ' +
          'values(' + AggregationDocCDSID.AsString + ',' +
                    IntToStr(Values[ARowInfo.RecordIndex, McBuyDocDetailCDSDRINKID.Index]) + ',' +
                    IntToStr(Values[ARowInfo.RecordIndex, McBuyDocDetailCDSDRINKKINDID.Index]) + ',1)';
         fMain.InUpDelCDS.Execute;
         fMain.SocketConnection.AppServer.DBCommit;
        except on E: Exception do
         begin
          fMain.SocketConnection.AppServer.DBRollBack;
          MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
          exit;
         end; //on
        end; //try
       end;
     end;//for  GetSelectedCount
    EndUpdate;
   end;//with McBuyDocDetailcxGridDBTV.DataController

  McBuyDocDetailCDS.Close;
  McBuyDocDetailCDS.Open;
  fMain.RefreshCDS(AggregationDocDetailCDS);
end;

procedure TfAggregation.MoveSourceBBClick(Sender: TObject);
begin
 if AggregationSourcecxGridDBTV.DataController.GetSelectedCount=0 then
  begin
   MessageDLG('Нет выбранных записей.',mtError,[mbOK],0);
   exit;
  end;

 with AggregationSourcecxGridDBTV.DataController do
  begin
   BeginUpdate;

   if GetSelectedCount=1 then
    begin
     fMain.SocketConnection.AppServer.DBStartTransaction;
     try
      fMain.InUpDelCDS.Close;
      fMain.InUpDelCDS.CommandText:=
      'insert into aggregationdocdetail(aggregationdocid, drinkid, drinkkindid, ispart) ' +
      'values(' + AggregationDocCDSID.AsString + ',' +
                  AggregationSourceCDSDRINKID.AsString + ',' +
                  'null, 0)';
      fMain.InUpDelCDS.Execute;
      fMain.SocketConnection.AppServer.DBCommit;
     except on E:Exception do
      begin
       fMain.SocketConnection.AppServer.DBRollBack;
       MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
       exit;
      end; //on
     end; //try
    end;
   end;

  fMain.RefreshCDS(AggregationDocDetailCDS);
end;

procedure TfAggregation.PrintBBClick(Sender: TObject);
begin
 if AggregationDocfrxReport.PrepareReport then
  AggregationDocfrxReport.ShowPreparedReport;
end;

procedure TfAggregation.DeleteBuyDetailBBClick(Sender: TObject);
begin
 if AggregationDocDetailcxGridDBTV.DataController.GetSelectedCount=0 then
  begin
   MessageDLG('Нет выбранных записей.',mtError,[mbOK],0);
   exit;
  end;

 with AggregationDocDetailcxGridDBTV.DataController do
  begin
   BeginUpdate;

   if GetSelectedCount=1 then
    begin
     fMain.SocketConnection.AppServer.DBStartTransaction;
     try
      fMain.InUpDelCDS.Close;
      fMain.InUpDelCDS.CommandText:=
      'delete from aggregationdocdetail ' +
      'where id = ' + AggregationDocDetailCDSID.AsString;

      fMain.InUpDelCDS.Execute;
      fMain.SocketConnection.AppServer.DBCommit;
     except on E:Exception do
      begin
       fMain.SocketConnection.AppServer.DBRollBack;
       MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
       exit;
      end; //on
     end; //try
    end;
   EndUpdate;
  end;

  McBuyDocDetailCDS.Close;
  McBuyDocDetailCDS.Open;
  AggregationDocDetailCDS.Close;
  AggregationDocDetailCDS.Open;
end;

procedure TfAggregation.DeleteSourceBBClick(Sender: TObject);
begin
 if AggregationDocDetailcxGridDBTV.DataController.GetSelectedCount=0 then
  begin
   MessageDLG('Нет выбранных записей.',mtError,[mbOK],0);
   exit;
  end;

 with AggregationDocDetailcxGridDBTV.DataController do
  begin
   BeginUpdate;

   if GetSelectedCount=1 then
    begin
     fMain.SocketConnection.AppServer.DBStartTransaction;
     try
      fMain.InUpDelCDS.Close;
      fMain.InUpDelCDS.CommandText:=
      'delete from aggregationdocdetail ' +
      'where id = ' + AggregationDocDetailCDSID.AsString;

      fMain.InUpDelCDS.Execute;
      fMain.SocketConnection.AppServer.DBCommit;
     except on E:Exception do
      begin
       fMain.SocketConnection.AppServer.DBRollBack;
       MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
       exit;
      end; //on
     end; //try
    end;
   EndUpdate;
  end;

  McBuyDocDetailCDS.Close;
  McBuyDocDetailCDS.Open;
  AggregationDocDetailCDS.Close;
  AggregationDocDetailCDS.Open;
end;

end.
