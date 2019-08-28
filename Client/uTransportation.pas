unit uTransportation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, DB, DBClient, cxImageComboBox, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxTextEdit, ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxSplitter, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ImgList, Menus, StdCtrls, Buttons, RxMemDS,
  cxCheckBox, frxClass, frxDBSet, cxCurrencyEdit;

type
  TfTransportation = class(TForm)
    TransportationCDS: TClientDataSet;
    TransportationCDSTRANSPORTATIONID: TIntegerField;
    TransportationCDSFROMTERMINALID: TIntegerField;
    TransportationCDSFROMSTORAGEID: TIntegerField;
    TransportationCDSTOTERMINALID: TIntegerField;
    TransportationCDSTOSTORAGEID: TIntegerField;
    TransportationCDSPRESENT: TDateTimeField;
    TransportationCDSSHORTNAME: TStringField;
    TransportationCDSFROMSTORAGENAME: TStringField;
    TransportationCDSTOSTORAGENAME: TStringField;
    TransportationCDSSTATUSID: TIntegerField;
    TransportationCDSNOTFULLTRANSPORTATION: TIntegerField;
    TransportationDS: TDataSource;
    TransportationDetailCDS: TClientDataSet;
    TransportationDetailCDSTRANSPORTATIONDETAILID: TIntegerField;
    TransportationDetailCDSFROMDRINKKINDID: TIntegerField;
    TransportationDetailCDSTODRINKKINDID: TIntegerField;
    TransportationDetailCDSSALEBOXNAME: TStringField;
    TransportationDetailCDSSALEBOXCOUNT: TFloatField;
    TransportationDetailCDSDRINKID: TIntegerField;
    TransportationDetailCDSBUYBOXNAME: TStringField;
    TransportationDetailCDSCOUNTUNIT: TFloatField;
    TransportationDetailDS: TDataSource;
    TransportaionStatusIL: TImageList;
    TransportationDetailCDSPRINTMARK: TStringField;
    TransportationPM: TPopupMenu;
    AddTransportationMI: TMenuItem;
    DeleteTransportationMI: TMenuItem;
    N9: TMenuItem;
    PrintTransportationMI: TMenuItem;
    TransportationDetailPM: TPopupMenu;
    DeleteTransportationDetailMI: TMenuItem;
    Notebook: TNotebook;
    SetupPanel: TPanel;
    PresentFiltercxDE: TcxDateEdit;
    FromStorageFiltercxLCB: TcxLookupComboBox;
    ToStorageFiltercxLCB: TcxLookupComboBox;
    TransportationIDFiltercxME: TcxMaskEdit;
    Panel2: TPanel;
    RefreshBB: TBitBtn;
    TransportationcxGrid: TcxGrid;
    TransportationcxGridDBTV: TcxGridDBTableView;
    TransportationcxGridDBTVTRANSPORTATIONID: TcxGridDBColumn;
    TransportationcxGridDBTVFROMTERMINALID: TcxGridDBColumn;
    TransportationcxGridDBTVFROMSTORAGEID: TcxGridDBColumn;
    TransportationcxGridDBTVTOTERMINALID: TcxGridDBColumn;
    TransportationcxGridDBTVTOSTORAGEID: TcxGridDBColumn;
    TransportationcxGridDBTVPRESENT: TcxGridDBColumn;
    TransportationcxGridDBTVSHORTNAME: TcxGridDBColumn;
    TransportationcxGridDBTVFROMSTORAGENAME: TcxGridDBColumn;
    TransportationcxGridDBTVTOSTORAGENAME: TcxGridDBColumn;
    TransportationcxGridDBTVSTATUSID: TcxGridDBColumn;
    TransportationcxGridDBTVNOTFULLTRANSPORTATION: TcxGridDBColumn;
    TransportationcxGridLevel: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    TransportationDetailcxGrid: TcxGrid;
    TransportationDetailcxGridDBTV: TcxGridDBTableView;
    TransportationDetailcxGridDBTVTRANSPORTATIONDETAILID: TcxGridDBColumn;
    TransportationDetailcxGridDBTVFROMDRINKKINDID: TcxGridDBColumn;
    TransportationDetailcxGridDBTVTODRINKKINDID: TcxGridDBColumn;
    TransportationDetailcxGridDBTVDRINKID: TcxGridDBColumn;
    TransportationDetailcxGridDBTVPRINTMARK: TcxGridDBColumn;
    TransportationDetailcxGridDBTVCOUNTUNIT: TcxGridDBColumn;
    TransportationDetailcxGridDBTVBUYBOXNAME: TcxGridDBColumn;
    TransportationDetailcxGridDBTVSALEBOXNAME: TcxGridDBColumn;
    TransportationDetailcxGridDBTVSALEBOXCOUNT: TcxGridDBColumn;
    TransportationDetailcxGridLevel: TcxGridLevel;
    Panel1: TPanel;
    PresentTempcxDE: TcxDateEdit;
    FromStorageTempcxLCB: TcxLookupComboBox;
    ToStorageTempcxLCB: TcxLookupComboBox;
    Panel3: TPanel;
    SaveBB: TBitBtn;
    TransDetailTempcxGrid: TcxGrid;
    TransDetailTempcxGridDBTV: TcxGridDBTableView;
    TransDetailTempcxGridLevel: TcxGridLevel;
    CancelBB: TBitBtn;
    TransDetailTempRxMD: TRxMemoryData;
    TransDetailTempRxMDDRINKKINDID: TIntegerField;
    TransDetailTempRxMDCOUNTUNIT: TIntegerField;
    TransDetailTempRxMDPRINTMARK: TStringField;
    TransDetailTempRxMDDRINKID: TIntegerField;
    TransDetailTempRxMDTOSALEBOXID: TIntegerField;
    TransDetailTempRxMDTOSALEBOXNAME: TStringField;
    TransDetailTempRxMDTOBUYBOXID: TIntegerField;
    TransDetailTempRxMDFROMRACKID: TIntegerField;
    TransDetailTempRxMDFROMRACKNAME: TStringField;
    TransDetailTempDS: TDataSource;
    TransDetailTempPM: TPopupMenu;
    AddTransportationDetailMI: TMenuItem;
    RemoveTransportationDetailMI: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    TransDetailTempcxGridDBTVDRINKKINDID: TcxGridDBColumn;
    TransDetailTempcxGridDBTVDRINKID: TcxGridDBColumn;
    TransDetailTempcxGridDBTVPRINTMARK: TcxGridDBColumn;
    TransDetailTempcxGridDBTVCOUNTUNIT: TcxGridDBColumn;
    TransDetailTempcxGridDBTVTOSALEBOXID: TcxGridDBColumn;
    TransDetailTempcxGridDBTVTOSALEBOXNAME: TcxGridDBColumn;
    TransDetailTempcxGridDBTVTOCAPACITYID: TcxGridDBColumn;
    TransDetailTempcxGridDBTVTOBUYBOXID: TcxGridDBColumn;
    TransDetailTempcxGridDBTVFROMRACKID: TcxGridDBColumn;
    TransDetailTempcxGridDBTVFROMRACKNAME: TcxGridDBColumn;
    AutoCompileTranscxCB: TcxCheckBox;
    TransportationfrxReport: TfrxReport;
    AddBB: TBitBtn;
    AddTransportation: TBitBtn;
    TransportationPrintCDS: TClientDataSet;
    TransportationPrintCDSTRANSPORTATIONID: TIntegerField;
    TransportationPrintCDSPRESENT: TDateTimeField;
    TransportationPrintCDSFROMSTORAGENAME: TStringField;
    TransportationPrintCDSTOSTORAGENAME: TStringField;
    TransportationPrintCDSDRINKTRANSPORTATIONID: TIntegerField;
    TransportationPrintCDSDRINKID: TIntegerField;
    TransportationPrintCDSPRINTMARK: TStringField;
    TransportationPrintCDSFROMDRINKKINDID: TIntegerField;
    TransportationPrintCDSTODRINKKINDID: TIntegerField;
    TransportationPrintCDSCOUNTUNIT: TFloatField;
    TransportationPrintCDSBUYBOXNAME: TStringField;
    TransportationPrintCDSBUYBOXCOUNT: TFloatField;
    TransportationPrintCDSSALEBOXNAME: TStringField;
    TransportationPrintCDSSALEBOXCOUNT: TFloatField;
    TransportationPrintCDSDATEFACTORY: TStringField;
    TransportationPrintCDSTRANSBARCODE: TStringField;
    TransportationPrintCDSTRANSDETAILBARCODE: TStringField;
    TransportationPrintCDSFROMRACKNAME: TStringField;
    TransportationPrintCDSTORACKNAME: TStringField;
    TransportationPrintCDSFROMSTORAGETYPEID: TIntegerField;
    TransportationPrintCDSTOSTORAGETYPEID: TIntegerField;
    TransportationfrxDBDataset: TfrxDBDataset;
    TransportationPrintCDSWEIGHT: TFloatField;
    TransportationCDSFROMSTORAGETYPEID: TIntegerField;
    TransportationCDSTOSTORAGETYPEID: TIntegerField;
    TransportationCDSFLAGCREATESALE: TIntegerField;
    CreateSaleMI: TMenuItem;
    TransportationCDSWHENINSERT: TDateTimeField;
    TransportationcxGridDBTVwheninsert: TcxGridDBColumn;
    TransportationPrintCDSDALL: TFloatField;
    TransportationDetailCDSPRODACTIONDATE: TStringField;
    TransportationDetailcxGridDBTVPRODACTIONDATE: TcxGridDBColumn;
    TransDetailTempRxMDPRODACTIONDATE: TStringField;
    ransDetailTempcxGridDBTVPRODACTIONDATE: TcxGridDBColumn;
    PrintInsideTransportationMI: TMenuItem;
    InsideTransportationfrxDBD: TfrxDBDataset;
    InsideTransportationfrxReport: TfrxReport;
    InsideTransportationCDS: TClientDataSet;
    InsideTransportationCDSOKUD: TStringField;
    InsideTransportationCDSOKPO: TStringField;
    InsideTransportationCDSORGANIZATIONNAME: TStringField;
    InsideTransportationCDSOPERATIONNUMBER: TStringField;
    InsideTransportationCDSFROMTERMINALNAME: TStringField;
    InsideTransportationCDSTOTERMINALNAME: TStringField;
    InsideTransportationCDSDRINKID: TIntegerField;
    InsideTransportationCDSPRINTMARK: TStringField;
    InsideTransportationCDSUNITNAME: TStringField;
    InsideTransportationCDSUNITCODE: TStringField;
    InsideTransportationCDSBUYBOXCAPACITY: TIntegerField;
    InsideTransportationCDSCOUNTBOX: TFloatField;
    InsideTransportationCDSCOUNTUNIT: TFloatField;
    TransportationCDSFLAGRETAILTRANS: TIntegerField;
    InsideTransportationCDSOPERATIONDATE: TDateTimeField;
    InsideTransportationCDSFROMSTORAGENAME: TStringField;
    InsideTransportationCDSTOSTORAGENAME: TStringField;
    InsideTransportationCDSRETAILPRICE: TFloatField;
    InsideTransportationCDSRETAILSUMPRICE: TFloatField;
    InsideTransportationCDSRETAILSUMPRICETEXT: TStringField;
    EgaisIL: TImageList;
    TransportationCDSEGAISTRANSPORTATIONSTATUSID: TIntegerField;
    TransportationcxGridDBTVEGAISTRANSPORTATIONSTATUSID: TcxGridDBColumn;
    EgaisMI: TMenuItem;
    TransportationCDSEGAISSENDFLAG: TSmallintField;
    CollectedMI: TMenuItem;
    TransportationCDSFLAGCOLLECTED: TIntegerField;
    ChageDateMI: TMenuItem;
    TransportationCDSFLAGCHANGEDATE: TIntegerField;
    TransportationDetailCDSRETAILPRICE: TFloatField;
    TransportationDetailcxGridDBTVRETAILPRICE: TcxGridDBColumn;
    TransportationDetailcxGridDBTVRETAILSUMPRICE: TcxGridDBColumn;
    TransportationDetailCDSRETAILSUMPRICE: TFloatField;
    TransportationcxGridDBTVISCOLLECTED: TcxGridDBColumn;
    CollectedStatusIL: TImageList;
    ReturnTransportationDetailMI: TMenuItem;
    EditPriceTransportationDetailMI: TMenuItem;
    TransportationCDSISCOLLECTED: TSmallintField;
    TransportationCDSFLAGINSIDETRANS: TSmallintField;
    InsideTransportationCDSFLAGPRINTLOADBAND: TSmallintField;
    TransportationDetailCDSSUMWEIGHT: TFloatField;
    ransportationDetailcxGridDBTVSUMWEIGHT: TcxGridDBColumn;
    TransDetailTempRxMDSUMWEIGHT: TFloatField;
    ransDetailTempcxGridDBTVSUMWEIGHT: TcxGridDBColumn;
    EgaisErrorMI: TMenuItem;
    TransportationCDSFLAGEGAISRETAILERROR: TSmallintField;
    LineMI: TMenuItem;
    TransExciseMI: TMenuItem;
    TransportationCDSFLAGEXCISESCAN: TSmallintField;
    LineEgaisMI: TMenuItem;
    ShopBuyEgaisMI: TMenuItem;
    LineEgaisErrorMI: TMenuItem;
    EgaisErrorFixMI: TMenuItem;
    TransportationcxGridDBTVFLAGEGAISRETAILERROR: TcxGridDBColumn;
    TransportationcxGridDBTVFLAGEXCISESCAN: TcxGridDBColumn;
    TransportationCDSREPRICEID: TIntegerField;
    RePriceMI: TMenuItem;
    ransportationcxGridDBTVREPRICEID: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TransportationcxGridDBTVCustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure PresentFiltercxDEPropertiesCloseUp(Sender: TObject);
    procedure TransportationIDFiltercxMEKeyPress(Sender: TObject;
      var Key: Char);
    procedure TransportationIDFiltercxMEEnter(Sender: TObject);
    procedure TransportationDSDataChange(Sender: TObject; Field: TField);
    procedure AddTransportationMIClick(Sender: TObject);
    procedure DeleteTransportationMIClick(Sender: TObject);
    procedure TransportationPMPopup(Sender: TObject);
    procedure DeleteTransportationDetailMIClick(Sender: TObject);
    procedure TransportationDetailPMPopup(Sender: TObject);
    procedure RefreshBBClick(Sender: TObject);
    procedure CancelBBClick(Sender: TObject);
    procedure SaveBBClick(Sender: TObject);
    procedure AddTransportationDetailMIClick(Sender: TObject);
    procedure TransDetailTempRxMDAfterPost(DataSet: TDataSet);
    procedure FromStorageTempcxLCBPropertiesEditValueChanged(
      Sender: TObject);
    procedure RemoveTransportationDetailMIClick(Sender: TObject);
    procedure PrintTransportationMIClick(Sender: TObject);
    procedure CreateSaleMIClick(Sender: TObject);
    procedure PrintInsideTransportationMIClick(Sender: TObject);
    procedure EgaisMIClick(Sender: TObject);
    procedure CollectedMIClick(Sender: TObject);
    procedure ChageDateMIClick(Sender: TObject);
    procedure EditPriceTransportationDetailMIClick(Sender: TObject);
    procedure EgaisErrorMIClick(Sender: TObject);
    procedure TransExciseMIClick(Sender: TObject);
    procedure ShopBuyEgaisMIClick(Sender: TObject);
    procedure EgaisErrorFixMIClick(Sender: TObject);
    procedure TransportationcxGridDBTVCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure RePriceMIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTransportation: TfTransportation;

implementation

uses uMain,DynamicProvider, uTransportationAddDetail, uBuyTransTerm,
  uTransportationEditPrice, uExciseScan;

{$R *.dfm}

procedure TfTransportation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfTransportation.TransportationcxGridDBTVCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 if AViewInfo.Column.Name=TransportationcxGridDBTVTRANSPORTATIONID.Name then
  begin
   TransportationIDFiltercxME.Left:=AViewInfo.RealBounds.Left+2;
   TransportationIDFiltercxME.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=TransportationcxGridDBTVPRESENT.Name then
  begin
   PresentFiltercxDE.Left:=AViewInfo.RealBounds.Left+2;
   PresentFiltercxDE.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=TransportationcxGridDBTVFROMSTORAGENAME.Name then
  begin
   FromStorageFiltercxLCB.Left:=AViewInfo.RealBounds.Left+2;
   FromStorageFiltercxLCB.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=TransportationcxGridDBTVTOSTORAGENAME.Name then
  begin
   ToStorageFiltercxLCB.Left:=AViewInfo.RealBounds.Left+2;
   ToStorageFiltercxLCB.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;
end;

procedure TfTransportation.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;

    Img:TBitmap;
    BS:TStream;
    Items: TcxImageComboBoxItems;
    Item: TcxImageComboBoxItem;
begin
 fMain.FloatToBcd(self);
 
 RetVal:=1;
 CompName:='TransporationStorage';
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
   FromStorageFiltercxLCB.Properties.ListSource:=DS;
   FromStorageFiltercxLCB.Properties.KeyFieldNames:='ID';
   FromStorageFiltercxLCB.Properties.ListFieldNames:='NAME';

   ToStorageFiltercxLCB.Properties.ListSource:=DS;
   ToStorageFiltercxLCB.Properties.KeyFieldNames:='ID';
   ToStorageFiltercxLCB.Properties.ListFieldNames:='NAME';

   FromStorageTempcxLCB.Properties.ListSource:=DS;
   FromStorageTempcxLCB.Properties.KeyFieldNames:='ID';
   FromStorageTempcxLCB.Properties.ListFieldNames:='NAME';

   ToStorageTempcxLCB.Properties.ListSource:=DS;
   ToStorageTempcxLCB.Properties.KeyFieldNames:='ID';
   ToStorageTempcxLCB.Properties.ListFieldNames:='NAME';

   CDS.RemoteServer:=fMain.SocketConnection;
   fMain.RefreshCDS(CDS);
  end;

 RetVal:=1;
 CompName:='Transportation';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   TransportationCDS.Close;
   TransportationCDS.CommandText:=
    'select * from buytrans_transview(:transportationid,:present,:fromstorageid,:tostorageid,:statusid)';
   TransportationCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='TransportationDetail';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   TransportationDetailCDS.Close;
   TransportationDetailCDS.CommandText:=
    'select * from buytrans_transdetailview(:transportationid)';
   TransportationDetailCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='TransportationPrint';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   TransportationPrintCDS.Close;
   TransportationPrintCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='InsideTransportation';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   InsideTransportationCDS.ProviderName:=CompName+'DSP';
   InsideTransportationCDS.CommandText:=
    'select * from buytrans_transprintinside(:intransportationid)';
   InsideTransportationCDS.RemoteServer:=fMain.SocketConnection;
  end;

 fMain.AnyCommandCDS.Close;
 fMain.AnyCommandCDS.CommandText:=
  'select * from egaissalestatus order by id';
 fMain.AnyCommandCDS.Open;
 Img:=TBitmap.Create;
 Items:=(TransportationcxGridDBTVEGAISTRANSPORTATIONSTATUSID.Properties as TcxImageComboBoxProperties).Items;
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


 NoteBook.PageIndex:=0;
 PresentFiltercxDE.Date:=Date;
 PresentFiltercxDEPropertiesCloseUp(PresentFiltercxDE);
end;

procedure TfTransportation.PresentFiltercxDEPropertiesCloseUp(
  Sender: TObject);
begin
 with TransportationCDS do
  try
   DisableControls;
   Close;
   Params[0].Clear;
   Params[1].Clear;
   Params[2].Clear;
   Params[3].Clear;
   Params[4].Clear;
   if TransportationIDFiltercxME.Text<>'' then
    Params[0].AsInteger:=StrToInt(TransportationIDFiltercxME.Text);
   if PresentFiltercxDE.Text<>'' then
    Params[1].AsDateTime:=PresentFiltercxDE.Date;
   if FromStorageFiltercxLCB.Text<>'' then
    Params[2].AsInteger:=FromStorageFiltercxLCB.EditValue;
   if ToStorageFiltercxLCB.Text<>'' then
    Params[3].AsInteger:=ToStorageFiltercxLCB.EditValue;
   Open;
   Last;
  finally
   EnableControls;
  end;
end;

procedure TfTransportation.TransportationIDFiltercxMEKeyPress(
  Sender: TObject; var Key: Char);
begin
 if Key=#13 then
  PresentFiltercxDEPropertiesCloseUp(Sender);
end;

procedure TfTransportation.TransportationIDFiltercxMEEnter(
  Sender: TObject);
begin
 if (Sender as TComponent).Name<>TransportationIDFiltercxME.Name then
  TransportationIDFiltercxME.Clear;

 if (Sender as TComponent).Name<>PresentFiltercxDE.Name then
  PresentFiltercxDE.Clear;

 if (Sender as TComponent).Name<>FromStorageFiltercxLCB.Name then
  FromStorageFiltercxLCB.Clear;

 if (Sender as TComponent).Name<>ToStorageFiltercxLCB.Name then
  ToStorageFiltercxLCB.Clear;
end;

procedure TfTransportation.TransportationDSDataChange(Sender: TObject;
  Field: TField);
begin
 TransportationDetailCDS.Close;
 if (not TransportationCDS.Active) or (TransportationCDS.IsEmpty) then
  exit;
 with TransportationDetailCDS do
  begin
   DisableControls;
   Params[0].AsInteger:= TransportationCDS.FieldByName('TRANSPORTATIONID').AsInteger;
   try
    Open;
   finally
    EnableControls;
   end;//try..finally
  end;//with

  TransportationDetailcxGridDBTVRETAILPRICE.Visible := (TransportationCDSFLAGRETAILTRANS.AsInteger = 1);
  TransportationDetailcxGridDBTVRETAILSUMPRICE.Visible := (TransportationCDSFLAGRETAILTRANS.AsInteger = 1);
end;

procedure TfTransportation.AddTransportationMIClick(Sender: TObject);
begin
 if not (Pos('T',fMain.AdvancedGrant)>0) then
  exit;

 NoteBook.PageIndex:=1;
 PresentTempcxDE.Date:=Date;
 FromStorageTempcxLCB.EditValue:=-1;
 ToStorageTempcxLCB.EditValue:=-1;
 if not TransDetailTempRxMD.Active then
  TransDetailTempRxMD.Open;
 TransDetailTempRxMD.EmptyTable;
 TransDetailTempRxMDAfterPost(TransDetailTempRxMD);
end;

procedure TfTransportation.DeleteTransportationMIClick(Sender: TObject);
begin
 if TransportationCDS.IsEmpty then
  exit;

 if MessageDlg('Удалить накладную на перемещение? ', mtConfirmation, [mbYes, mbNo] , 0)<> mrYes then
  exit;

 with fMain do
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'delete from transportation where id = '+TransportationCDSTRANSPORTATIONID.AsString;
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDlg('Ошибка при удалении накладной. Исх. сообщение> '+E.Message, mtError, [mbOk] , 0);
    exit;
   end;//on
  end;//try..except}
 fMain.RefreshCDS(TransportationCDS);
end;

procedure TfTransportation.TransportationPMPopup(Sender: TObject);
var FlagTrans:boolean;
begin
 FlagTrans:=(TransportationCDS.Active) and (TransportationCDS.RecordCount>0);

 AddTransportationMI.Enabled:=(Pos('T',fMain.AdvancedGrant)>0);
 DeleteTransportationMI.Enabled:=FlagTrans and AddTransportationMI.Enabled;
 PrintTransportationMI.Enabled:=FlagTrans;
 CreateSaleMI.Visible:=FlagTrans and (TransportationCDSFLAGCREATESALE.AsInteger=1);
 PrintInsideTransportationMI.Visible:=FlagTrans and (TransportationCDSFLAGINSIDETRANS.AsInteger=1);
 EgaisMI.Visible:=FlagTrans and (TransportationCDSEGAISSENDFLAG.AsInteger=1);
 CollectedMI.Visible:=FlagTrans and (TransportationCDSFLAGCOLLECTED.AsInteger>=0);
 if TransportationCDSFLAGCOLLECTED.AsInteger=0 then begin CollectedMI.Caption:='Собрана на складе'; CollectedMI.ImageIndex:=26;  end;
 if TransportationCDSFLAGCOLLECTED.AsInteger=1 then begin CollectedMI.Caption:='Не собрана на складе'; CollectedMI.ImageIndex:=25; end;
 if TransportationCDSFLAGCOLLECTED.AsInteger=2 then begin CollectedMI.Caption:='Доставлена'; CollectedMI.ImageIndex:=27; end;
 if TransportationCDSFLAGCOLLECTED.AsInteger=3 then begin CollectedMI.Caption:='Не доставлена'; CollectedMI.ImageIndex:=26; end;
 ChageDateMI.Visible:=FlagTrans and (TransportationCDSFLAGCHANGEDATE.AsInteger<>0);

 EgaisErrorMI.Visible:=TransportationCDSFLAGEGAISRETAILERROR.AsInteger<>0;
 EgaisErrorFixMI.Visible:=TransportationCDSFLAGEGAISRETAILERROR.AsInteger=2;
 LineEgaisErrorMI.Visible:=EgaisErrorMI.Visible;

 RePriceMI.Visible:=FlagTrans and (TransportationCDSREPRICEID.AsInteger=0);
end;

procedure TfTransportation.DeleteTransportationDetailMIClick(Sender: TObject);
begin
 if not DeleteTransportationDetailMI.Enabled then
  exit;

 if (TransportationCDS.IsEmpty) or (TransportationDetailCDS.IsEmpty) then
  exit;

 if MessageDlg('Удалить позицию из накладной на переброску? ', mtConfirmation, [mbYes, mbNo] , 0)<> mrYes then
  exit;

 with fMain do
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'delete from drinktransportation where id = '+TransportationDetailCDSTRANSPORTATIONDETAILID.AsString;
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDlg('Ошибка при удалении позиции по накладной. Исх. сообщение> '+E.Message, mtError, [mbOk] , 0);
    exit;
   end;//on
  end;//try..except}
 fMain.RefreshCDS(TransportationDetailCDS);
end;

procedure TfTransportation.TransportationDetailPMPopup(Sender: TObject);
begin
 DeleteTransportationDetailMI.Enabled:=
  (TransportationCDS.Active) and
  (TransportationCDS.RecordCount>0) and
  (TransportationDetailCDS.Active) and
  (TransportationDetailCDS.RecordCount>0) and
  (Pos('T',fMain.AdvancedGrant)>0);

 ReturnTransportationDetailMI.Visible := False;
  {(TransportationCDS.Active) and
  (TransportationCDS.RecordCount>0) and
  (TransportationDetailCDS.Active) and
  (TransportationDetailCDS.RecordCount>0) and
  (TransportationCDSFROMSTORAGETYPEID.AsInteger = 1) and  // Ячеистый склад
  (TransportationCDSFLAGRETAILTRANS.AsInteger = 1) and    // Розничное перемещение
  (TransportationCDSFLAGCOLLECTED.AsInteger <> 2);        // Не доставлено}

 EditPriceTransportationDetailMI.Enabled :=
  (TransportationCDS.Active) and
  (TransportationCDS.RecordCount>0) and
  (TransportationDetailCDS.Active) and
  (TransportationDetailCDS.RecordCount>0) and
  (TransportationCDSFLAGRETAILTRANS.AsInteger = 1) and   // Розничное перемещение
  (TransportationCDSISCOLLECTED.AsInteger <> 2);       // Не доставлено

 TransExciseMI.Visible:=(TransportationCDSFLAGEXCISESCAN.AsInteger<>0);
 LineMI.Visible:=TransExciseMI.Visible;

 ShopBuyEgaisMI.Visible:=(TransportationCDSFLAGEGAISRETAILERROR.AsInteger in [1]);
 LineEgaisMI.Visible:=ShopBuyEgaisMI.Visible;
end;

procedure TfTransportation.RefreshBBClick(Sender: TObject);
begin
 with fMain do
  try
   PresentFiltercxDEPropertiesCloseUp(self);
   RefreshCDS(TClientDataSet(FromStorageFiltercxLCB.Properties.ListSource.DataSet));
  finally
   ;
  end;//try..finally

 {try
  RefreshCDS(ToStorageCDS);
  RefreshCDS(FromStorageCDS);
  RefreshCDS(BoxCDS);
  RefreshCDS(PlanBoxCDS);
  RefreshCDS(CapacityCDS);
 finally
  ShowWait(0);
 end;//try..finally}  
end;

procedure TfTransportation.CancelBBClick(Sender: TObject);
begin
 NoteBook.PageIndex:=0;
// TransportationIDFiltercxME.SetFocus;
end;

procedure TfTransportation.AddTransportationDetailMIClick(Sender: TObject);
begin
 if ((FromStorageTempcxLCB.EditValue>0) and (ToStorageTempcxLCB.EditValue>0)) then
  begin
   if (not Assigned(fTransportationAddDetail)) then
    Application.CreateForm(TfTransportationAddDetail, fTransportationAddDetail);
   fTransportationAddDetail.fTransportationLink:=self;
   fTransportationAddDetail.ShowModal;
  end; 
end;

procedure TfTransportation.SaveBBClick(Sender: TObject);
var NewTransportationId:string;
begin
 if TransDetailTempRxMD.IsEmpty then
  exit;

 if (FromStorageTempcxLCB.Text='') then
  begin
   MessageDLG('Не выбран склад-отправитель',mtError,[mbOk] ,0);
   exit;
  end;

 if (ToStorageTempcxLCB.Text='') then
  begin
   MessageDLG('Не выбран склад-получатель',mtError,[mbOk] ,0);
   exit;
  end;

 if MessageDLG('Ввести накладную?',mtConfirmation,[mbYes, mbNo] ,0 )<>mrYes then
  exit;

 with fMain do
  try //try1
   SocketConnection.AppServer.DBStartTransaction;
   try //try2
    InUpDelCDS.Close;
    InUpDelCDS.CommandText:=
     'select id from buytrans_transadd('+#39+DateToStr(PresentTempcxDE.Date)+#39+','+
                                     IntToStr(FromStorageTempcxLCB.EditValue)+','+
                                     IntToStr(ToStorageTempcxLCB.EditValue)+')';
    InUpDelCDS.Open;
    NewTransportationId:=InUpDelCDS.Fields[0].AsString;
   except on E: Exception do
    begin
     raise Exception.Create('Один из параметров накладной - неверен. Проверьте.' +#13 + E.Message);
    end; //on
   end; //try2

   TransDetailTempRxMD.First;
   try //try3
    while not (TransDetailTempRxMD.Eof) do
     begin
      InUpDelCDS.Close;
      InUpDelCDS.CommandText:=
       'execute procedure buytrans_transadddetail('+
         NewTransportationId+','+ //transportationid integer,
         IntToStr(AutoCompileTranscxCB.EditValue)+','+ //autocompileflag smallint,
         TransDetailTempRxMDDRINKKINDID.AsString+','+ //drinkkindid integer,
         TransDetailTempRxMDCOUNTUNIT.AsString+','+ //countunit integer,
         TransDetailTempRxMDTOSALEBOXID.AsString+','+ //tosaleboxid integer,
         TransDetailTempRxMDTOBUYBOXID.AsString+','+ //tobuyboxid integer,
         TransDetailTempRxMDFROMRACKID.AsString+')'; //reserverackid integer
      InUpDelCDS.Execute;
      TransDetailTempRxMD.Next;
     end;//while
   except on E: Exception do
    raise Exception.Create('Неправильный ввод напитка-'+#13+TransDetailTempRxMDPRINTMARK.AsString+'Исх. сообщение> '+E.Message);
   end; //try3

   SocketConnection.AppServer.DBCommit;
  except on E: Exception do
   begin
    SocketConnection.AppServer.DBRollback;
    MessageDlg('Ошибка !' + #13+ ' ' + E.Message,mtError,[mbOk],0);
    exit;
   end;//on
  end; //try1

 TransportationIDFiltercxMEEnter(self);
 TransportationIDFiltercxME.Text:=NewTransportationId;
 PresentFiltercxDEPropertiesCloseUp(self);
 CancelBBClick(Sender);
end;

procedure TfTransportation.TransDetailTempRxMDAfterPost(DataSet: TDataSet);
begin
 FromStorageTempcxLCB.Enabled:=TransDetailTempRxMD.IsEmpty;
 ToStorageTempcxLCB.Enabled:=TransDetailTempRxMD.IsEmpty;
end;

procedure TfTransportation.FromStorageTempcxLCBPropertiesEditValueChanged(
  Sender: TObject);
begin
 if ((FromStorageTempcxLCB.EditValue=50) and (ToStorageTempcxLCB.EditValue=12)) then
  AutoCompileTranscxCB.Checked:=true
 else
  AutoCompileTranscxCB.Checked:=false;
end;

procedure TfTransportation.RemoveTransportationDetailMIClick(
  Sender: TObject);
begin
 TransDetailTempRxMD.Delete;
end;

procedure TfTransportation.PrintTransportationMIClick(Sender: TObject);
var tempstr:string;
begin
 tempstr:='order by fromrackname,printmark';
 TransportationPrintCDS.Params[0].AsInteger:=TransportationCDSTRANSPORTATIONID.AsInteger;
 if ((TransportationCDSFROMSTORAGETYPEID.AsInteger=1) and
     (TransportationCDSFROMSTORAGETYPEID.AsInteger=TransportationCDSTOSTORAGETYPEID.AsInteger) and
     (TransportationCDSFROMSTORAGEID.AsInteger<>TransportationCDSTOSTORAGEID.AsInteger) and
     (MessageDlg('Сортировать по ячейке?',mtConfirmation,[mbYes,mbNo],0)=mrNo)) then
  tempstr:='order by printmark';
 TransportationPrintCDS.CommandText:=
  'select * from buytrans_transprint(:transportationid) '+tempstr;
 fMain.RefreshCDS(TransportationPrintCDS);
 TransportationfrxReport.PrepareReport;
 TransportationfrxReport.ShowReport;
end;

procedure TfTransportation.CreateSaleMIClick(Sender: TObject);
var retvalue:string;
begin
 if (not Assigned(fBuyTransTerm)) then
  Application.CreateForm(TfBuyTransTerm, fBuyTransTerm);
 fBuyTransTerm.Tag:=2;
 fBuyTransTerm.ApplayBB.Tag:=TransportationCDSTRANSPORTATIONID.AsInteger;
 if fBuyTransTerm.ShowModal=mrOk then
  fMain.RefreshCDS(TransportationCDS);
end;

procedure TfTransportation.PrintInsideTransportationMIClick(
  Sender: TObject);
begin
 InsideTransportationCDS.Params[0].AsInteger:=TransportationCDSTRANSPORTATIONID.AsInteger;
 fMain.RefreshCDS(InsideTransportationCDS);

 InsideTransportationfrxReport.PrepareReport;
 InsideTransportationfrxReport.ShowReport;
end;

procedure TfTransportation.EgaisMIClick(Sender: TObject);
begin
 if TransportationCDS.IsEmpty then
  exit;

 if MessageDlg('Вы дейстыительно хотите отправить накладную в ЕГАИС? '+#10#13+' Дальнейшее редактирование будет запрещено.', mtConfirmation, [mbYes, mbNo] , 0)<> mrYes then
  exit;

 with fMain do
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'execute procedure buytrans_transsendtoegais('+TransportationCDSTRANSPORTATIONID.AsString+')';
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDlg('Ошибка при отправке накладной в ЕГАИС. Исх. сообщение> '+E.Message, mtError, [mbOk] , 0);
    exit;
   end;//on
  end;//try..except}
 fMain.RefreshCDS(TransportationCDS);
end;

procedure TfTransportation.CollectedMIClick(Sender: TObject);
begin
 if TransportationCDS.IsEmpty then
  exit;

 if MessageDlg('Вы дейстыительно хотите изменить статус накладной? '+#10#13+' Дальнейшее редактирование будет запрещено.', mtConfirmation, [mbYes, mbNo] , 0)<> mrYes then
  exit;

 with fMain do
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'update transportation tr set tr.iscollected=abs(tr.iscollected-1) where tr.id='+TransportationCDSTRANSPORTATIONID.AsString;
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDlg('Ошибка при удалении накладной. Исх. сообщение> '+E.Message, mtError, [mbOk] , 0);
    exit;
   end;//on
  end;//try..except}
 fMain.RefreshCDS(TransportationCDS);
end;

procedure TfTransportation.ChageDateMIClick(Sender: TObject);
begin
 if TransportationCDS.IsEmpty then
  exit;

 if MessageDlg('Вы дейстыительно хотите изменить дату накладной?', mtConfirmation, [mbYes, mbNo] , 0)<> mrYes then
  exit;

 with fMain do
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'update transportation tr set tr.present=tr.present+'+TransportationCDSFLAGCHANGEDATE.AsString+' where tr.id='+TransportationCDSTRANSPORTATIONID.AsString;
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDlg('Ошибка при удалении накладной. Исх. сообщение> '+E.Message, mtError, [mbOk] , 0);
    exit;
   end;//on
  end;//try..except}
 fMain.RefreshCDS(TransportationCDS);
end;

procedure TfTransportation.EditPriceTransportationDetailMIClick(
  Sender: TObject);
begin
 if (not Assigned(fTransportationEditPrice)) then
  Application.CreateForm(TfTransportationEditPrice, fTransportationEditPrice);
 fTransportationEditPrice.fTransportationLink := self;
 fTransportationEditPrice.Tag:=0;
 fTransportationEditPrice.ShowModal;
end;

procedure TfTransportation.EgaisErrorMIClick(Sender: TObject);
var msgtxt:string;
begin
 with fMain do
  try
   AnyCommandCDS.Close;
   AnyCommandCDS.CommandText:=
    'select * from buytrans_transegaiserror('+TransportationCDSTRANSPORTATIONID.AsString+')';
   AnyCommandCDS.Open;
   while not AnyCommandCDS.Eof do
    begin
     if msgtxt='' then msgtxt:=AnyCommandCDS.FieldByName('RESULTSTR').AsString
                  else msgtxt:=msgtxt+#10#13+AnyCommandCDS.Fields[0].AsString;
     AnyCommandCDS.Next;
    end;
   if AnyCommandCDS.RecordCount>0 then
    MessageDlg(msgtxt, mtError, [mbOk] , 0);
  except on E:Exception do
   begin
    MessageDlg('Ошибка при удалении накладной. Исх. сообщение> '+E.Message, mtError, [mbOk] , 0);
   end;//on
  end;//try..except}
end;

procedure TfTransportation.TransExciseMIClick(Sender: TObject);
begin
 if (not Assigned(fExciseScan)) then
  Application.CreateForm(TfExciseScan, fExciseScan);
 fExciseScan.ViewCDS.Params[0].AsInteger:=1;
 fExciseScan.ViewCDS.Params[1].AsInteger:=TransportationCDSTRANSPORTATIONID.AsInteger;
 fExciseScan.ExciseCodecxME.Enabled:=(TransportationCDSFLAGEXCISESCAN.AsInteger=1);
 fExciseScan.ExcisecxButton.Enabled:=(TransportationCDSFLAGEXCISESCAN.AsInteger=1);
 fExciseScan.ShowModal;
 fMain.RefreshCDS(TransportationCDS);
end;

procedure TfTransportation.ShopBuyEgaisMIClick(Sender: TObject);
begin
 if MessageDlg('Вы дейстыительно хотите выполнить эту операцию?', mtConfirmation, [mbYes, mbNo] , 0)<> mrYes then
  exit;

 try
  fMain.SocketConnection.AppServer.DBStartTransaction;
  fMain.InUpDelCDS.Close;
  fMain.InUpDelCDS.CommandText:=
   'execute procedure buytrans_transegaisbuyr2('+TransportationDetailCDSTRANSPORTATIONDETAILID.AsString+')';
  fMain.InUpDelCDS.Execute;
  fMain.SocketConnection.AppServer.DBCommit;
 except on E:Exception do
  begin
   fMain.SocketConnection.AppServer.DBRollBack;
   MessageDLG(E.Message,mtError,[mbOK],0);
  end;//on
 end;//try..except
end;

procedure TfTransportation.EgaisErrorFixMIClick(Sender: TObject);
begin
 if MessageDlg('Вы дейстыительно хотите выполнить эту операцию?', mtConfirmation, [mbYes, mbNo] , 0)<> mrYes then
  exit;

 try
  fMain.SocketConnection.AppServer.DBStartTransaction;
  fMain.InUpDelCDS.Close;
  fMain.InUpDelCDS.CommandText:=
   'execute procedure buytrans_transegaiserrorfix('+TransportationCDSTRANSPORTATIONID.AsString+')';
  fMain.InUpDelCDS.Execute;
  fMain.SocketConnection.AppServer.DBCommit;
 except on E:Exception do
  begin
   fMain.SocketConnection.AppServer.DBRollBack;
   MessageDLG(E.Message,mtError,[mbOK],0);
  end;//on
 end;//try..except
 fMain.RefreshCDS(TransportationCDS);
end;

procedure TfTransportation.TransportationcxGridDBTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.DisplayTexts[TransportationcxGridDBTVFLAGEXCISESCAN.Index] <> '0') then
   ACanvas.Brush.Color := $00B5E8B9;
end;

procedure TfTransportation.RePriceMIClick(Sender: TObject);
begin
 if MessageDlg('Вы дейстыительно хотите создать переоценку на выбранный документ?'+#10#13+'Дальнейшее редактирование документа будет не возможно.', mtConfirmation, [mbYes, mbNo] , 0)<> mrYes then
  exit;

 try
  fMain.SocketConnection.AppServer.DBStartTransaction;
  fMain.InUpDelCDS.Close;
  fMain.InUpDelCDS.CommandText:=
   'execute procedure buytrans_transreprice('+TransportationCDSTRANSPORTATIONID.AsString+')';
  fMain.InUpDelCDS.Execute;
  fMain.SocketConnection.AppServer.DBCommit;
 except on E:Exception do
  begin
   fMain.SocketConnection.AppServer.DBRollBack;
   MessageDLG(E.Message,mtError,[mbOK],0);
  end;//on
 end;//try..except
 fMain.RefreshCDS(TransportationCDS);
end;

end.
