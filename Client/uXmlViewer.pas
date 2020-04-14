unit uXmlViewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit, DBTables,DB,
  ExtCtrls, Menus, StdCtrls, cxButtons, cxRadioGroup, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, DBClient,
  cxSplitter, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfXmlViewer = class(TForm)
    ResultcxMemo: TcxMemo;
    BottomPanel: TPanel;
    UTF8cxRB: TcxRadioButton;
    AnsicxRB: TcxRadioButton;
    XmlcxGridDBTV: TcxGridDBTableView;
    XmlcxGridLevel: TcxGridLevel;
    XmlcxGrid: TcxGrid;
    cxSplitter: TcxSplitter;
    XmlCDS: TClientDataSet;
    XmlCDSXMLFILE: TBlobField;
    XmlDS: TDataSource;
    XmlCDSID: TIntegerField;
    XmlCDSCONNECTID: TIntegerField;
    XmlCDSFLAGINOUT: TSmallintField;
    XmlCDSFLAGINOUTNAME: TStringField;
    XmlCDSPATHNAME: TStringField;
    XmlCDSDOCUMENTSTYPEID: TIntegerField;
    XmlCDSDOCUMENTSTYPENAME: TStringField;
    XmlCDSHOSTDOCUMENTSRECORDID: TIntegerField;
    XmlCDSHOSTDOCUMENTSTABLENAME: TStringField;
    XmlCDSREPLYID: TStringField;
    XmlCDSSTATUS: TIntegerField;
    XmlCDSSTATUSNAME: TStringField;
    XmlCDSWHOINSERT: TStringField;
    XmlCDSWHENINSERT: TDateTimeField;
    XmlCDSWHENREPLYID: TDateTimeField;
    XmlCDSWHENSTATUS: TDateTimeField;
    XmlcxGridDBTVID: TcxGridDBColumn;
    XmlcxGridDBTVCONNECTID: TcxGridDBColumn;
    XmlcxGridDBTVFLAGINOUT: TcxGridDBColumn;
    XmlcxGridDBTVFLAGINOUTNAME: TcxGridDBColumn;
    XmlcxGridDBTVPATHNAME: TcxGridDBColumn;
    XmlcxGridDBTVDOCUMENTSTYPEID: TcxGridDBColumn;
    XmlcxGridDBTVDOCUMENTSTYPENAME: TcxGridDBColumn;
    XmlcxGridDBTVHOSTDOCUMENTSRECORDID: TcxGridDBColumn;
    XmlcxGridDBTVHOSTDOCUMENTSTABLENAME: TcxGridDBColumn;
    XmlcxGridDBTVREPLYID: TcxGridDBColumn;
    XmlcxGridDBTVSTATUS: TcxGridDBColumn;
    XmlcxGridDBTVSTATUSNAME: TcxGridDBColumn;
    XmlcxGridDBTVXMLFILE: TcxGridDBColumn;
    XmlcxGridDBTVWHOINSERT: TcxGridDBColumn;
    XmlcxGridDBTVWHENINSERT: TcxGridDBColumn;
    XmlcxGridDBTVWHENREPLYID: TcxGridDBColumn;
    XmlcxGridDBTVWHENSTATUS: TcxGridDBColumn;
    procedure UTF8cxRBClick(Sender: TObject);
    procedure AnsicxRBClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure XmlDSDataChange(Sender: TObject; Field: TField);
    procedure XmlCDSBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fXmlViewer: TfXmlViewer;

implementation

uses uMain;

{$R *.dfm}

procedure TfXmlViewer.UTF8cxRBClick(Sender: TObject);
begin
  ResultcxMemo.Lines.Text:=UTF8ToAnsi(ResultcxMemo.Lines.Text);
end;

procedure TfXmlViewer.AnsicxRBClick(Sender: TObject);
begin
  ResultcxMemo.Lines.Text:=AnsiToUTF8(ResultcxMemo.Lines.Text);
end;

procedure TfXmlViewer.FormActivate(Sender: TObject);
begin
 fMain.RefreshCDS(XmlCDS);
end;

procedure TfXmlViewer.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
begin
 RetVal:=1;
 CompName:='XmlViewer';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   XmlCDS.ProviderName:=CompName+'DSP';
   XmlCDS.RemoteServer:=fMain.SocketConnection;
   XmlCDS.CommandText:='select distinct * from buytrans_xmlviewer(:operationtypeid,:operationid)';
  end;
end;

procedure TfXmlViewer.XmlDSDataChange(Sender: TObject;
  Field: TField);
begin
 ResultcxMemo.Clear;
 if (not XmlCDS.IsEmpty) then
  ResultcxMemo.Lines.LoadFromStream(XmlCDS.CreateBlobStream(XmlCDSXMLFILE,bmRead));
 if UTF8cxRB.Checked then UTF8cxRBClick(Sender)
                     else AnsicxRBClick(Sender);
end;

procedure TfXmlViewer.XmlCDSBeforeOpen(DataSet: TDataSet);
begin
 XmlCDS.Params[0].AsInteger:=Self.Tag;
 XmlCDS.Params[1].AsInteger:=XmlCDS.Tag;
end;



end.
