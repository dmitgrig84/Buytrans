unit uVetisStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxSplitter, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, RXCtrls, ExtCtrls, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, DBClient,uBuy, cxImage, ImgList,
  cxImageComboBox, cxCurrencyEdit, cxGridBandedTableView,
  cxGridDBBandedTableView;

type
  TfVetisStock = class(TForm)
    TopPanel: TPanel;
    Panel20: TPanel;
    RefreshcxButton: TcxButton;
    StockcxGrid: TcxGrid;
    StockcxGridDBTV: TcxGridDBTableView;
    StockcxGL: TcxGridLevel;
    VetisConnectcxLCB: TcxLookupComboBox;
    StockCDS: TClientDataSet;
    StockDS: TDataSource;
    VsdPM: TPopupMenu;
    RequestFromVetiscxButton: TcxButton;
    LogcxButton: TcxButton;
    VsdMI: TMenuItem;
    StockCDSID: TIntegerField;
    StockCDSUUID: TStringField;
    StockCDSGUID: TStringField;
    StockCDSENTRYNUMBER: TStringField;
    StockCDSVETISVSDUUID: TStringField;
    StockCDSVETISVOLUME: TFloatField;
    StockCDSVETISIDENTIFIERID: TIntegerField;
    StockCDSVETISVSDID: TIntegerField;
    StockCDSVETISCONNECTID: TIntegerField;
    StockCDSPRODUCTITEMGUID: TStringField;
    StockCDSVETISPRODUCTID: TIntegerField;
    StockCDSPRODUCTITEMNAME: TStringField;
    StockcxGridDBTVID: TcxGridDBColumn;
    StockcxGridDBTVVETISCONNECTID: TcxGridDBColumn;
    StockcxGridDBTVVETISIDENTIFIERID: TcxGridDBColumn;
    StockcxGridDBTVUUID: TcxGridDBColumn;
    StockcxGridDBTVGUID: TcxGridDBColumn;
    StockcxGridDBTVENTRYNUMBER: TcxGridDBColumn;
    StockcxGridDBTVVETISVSDUUID: TcxGridDBColumn;
    StockcxGridDBTVVETISVSDID: TcxGridDBColumn;
    StockcxGridDBTVPRODUCTITEMGUID: TcxGridDBColumn;
    StockcxGridDBTVVETISPRODUCTID: TcxGridDBColumn;
    StockcxGridDBTVPRODUCTITEMNAME: TcxGridDBColumn;
    StockcxGridDBTVVETISVOLUME: TcxGridDBColumn;
    ProductMI: TMenuItem;
    StockCDSUNITNAME: TStringField;
    StockcxGridDBTVUNITNAME: TcxGridDBColumn;
    StockCDSDRINKKINDID: TIntegerField;
    StockCDSDRINKID: TIntegerField;
    StockCDSPRINTMARK: TStringField;
    StockCDSHOSTVOLUME: TFloatField;
    StockcxGridDBTVHOSTVOLUME: TcxGridDBColumn;
    StockcxGridDBTVPRINTMARK: TcxGridDBColumn;
    StockcxGridDBTVDRINKID: TcxGridDBColumn;
    StockcxGridDBTVDRINKKINDID: TcxGridDBColumn;
    StockCDSDELTAVOLUME: TFloatField;
    StockcxGridDBTVDELTAVOLUME: TcxGridDBColumn;
    StockCDSKEYID: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure RefreshcxButtonClick(Sender: TObject);
    procedure StockCDSBeforeOpen(DataSet: TDataSet);
    procedure VsdPMPopup(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RequestFromVetiscxButtonClick(Sender: TObject);
    procedure LogcxButtonClick(Sender: TObject);
    procedure VsdMIClick(Sender: TObject);
    procedure ProductMIClick(Sender: TObject);
  private
    { Private declarations }
  public
   fBuyLink:TfBuy;

  end;

var
  fVetisStock: TfVetisStock;

implementation

uses uMain,DynamicProvider, uDistributionEdit, uDrinkEdit, uLogViewer,
  uXmlViewer;

{$R *.dfm}


procedure TfVetisStock.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;

begin
 RetVal:=1;
 CompName:='VetisConnect';
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
    'select * from buytrans_vetisconnect';
   VetisConnectcxLCB.Properties.ListSource:=DS;
   VetisConnectcxLCB.Properties.KeyFieldNames:='VETISCONNECTID';
   VetisConnectcxLCB.Properties.ListFieldNames:='VETISCONNECTNAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;
  
 RetVal:=1;
 CompName:='VetisStock';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   StockCDS.ProviderName:=CompName+'DSP';
   StockCDS.RemoteServer:=fMain.SocketConnection;
   StockCDS.CommandText:='select * from buytrans_vetisstockview(:vcid)';
  end;

 fMain.RefreshCDS(TClientDataSet(VetisConnectcxLCB.Properties.ListSource.DataSet));
 if TClientDataSet(VetisConnectcxLCB.Properties.ListSource.DataSet).RecordCount=1 then
  VetisConnectcxLCB.EditValue:=TClientDataSet(VetisConnectcxLCB.Properties.ListSource.DataSet).Fields[0].AsInteger;
end;

procedure TfVetisStock.RefreshcxButtonClick(Sender: TObject);
begin
 if VetisConnectcxLCB.Text<>'' then
  fMain.RefreshCDS(StockCDS)                                  
 else
  MessageDlg('Не выбрана площадка ХС.',mtError,[mbOk],0);
end;

procedure TfVetisStock.StockCDSBeforeOpen(DataSet: TDataSet);
begin
 StockCDS.Params[0].AsInteger:=VetisConnectcxLCB.EditValue;
end;

procedure TfVetisStock.VsdPMPopup(Sender: TObject);
var menuItem :TMenuItem;
    am:array of TNotifyEvent;
begin
 VsdMI.Visible:=StockCDSVETISVSDID.IsNull;
 ProductMI.Visible:=(not VsdMI.Visible) and StockCDSVETISPRODUCTID.IsNull;
end;

procedure TfVetisStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfVetisStock.RequestFromVetiscxButtonClick(Sender: TObject);
begin
 if VetisConnectcxLCB.Text<>'' then
  begin
   if MessageDlg('Запросить актуальный список записей журнала в ВЕТИС? ', mtConfirmation, [mbYes, mbNo] , 0)<> mrYes then
    exit;

   fMain.RequestFromVetis(VetisConnectcxLCB.EditValue,13,'vcid='+IntToStr(VetisConnectcxLCB.EditValue));
   fMain.RefreshCDS(StockCDS);
  end
 else
  MessageDlg('Не выбрана площадка ХС.',mtError,[mbOk],0);
end;

procedure TfVetisStock.LogcxButtonClick(Sender: TObject);
begin
 if (not Assigned(fLogViewer)) then
  Application.CreateForm(TfLogViewer, fLogViewer);

 if (not fLogViewer.Active) then
  fLogViewer.Show;
end;

procedure TfVetisStock.VsdMIClick(Sender: TObject);
begin
 fMain.RequestFromVetis(StockCDSVETISCONNECTID.AsInteger,14,'vsduuid='+StockCDSVETISVSDUUID.AsString);
 fMain.RefreshCDS(StockCDS);
end;

procedure TfVetisStock.ProductMIClick(Sender: TObject);
begin
 fMain.RequestFromVetis(StockCDSVETISCONNECTID.AsInteger,5,'guid='+StockCDSPRODUCTITEMGUID.AsString);
 fMain.RefreshCDS(StockCDS);
end;

end.
