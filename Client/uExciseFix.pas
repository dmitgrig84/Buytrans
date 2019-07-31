unit uExciseFix;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLabel, cxTextEdit, cxMaskEdit, StdCtrls,
  cxButtons, ExtCtrls, DBClient, cxSplitter;

type
  TfExciseFix = class(TForm)
    ViewcxGrid: TcxGrid;
    ViewcxGridDBTV: TcxGridDBTableView;
    ViewcxGridLevel: TcxGridLevel;
    ViewCDS: TClientDataSet;
    ViewDS: TDataSource;
    TopPanel: TPanel;
    ExciseCodecxME: TcxMaskEdit;
    ExcisecxButton: TcxButton;
    DetailcxGrid: TcxGrid;
    DetailcxGridDBTV: TcxGridDBTableView;
    DetailcxGridLevel: TcxGridLevel;
    cxSplitter: TcxSplitter;
    ViewCDSEGAISACTFIXBARCODEID: TIntegerField;
    ViewCDSPRESENT: TDateTimeField;
    ViewCDSEGAISACTFIXBARCODESTATUSID: TIntegerField;
    ViewCDSCOMMENTARY: TStringField;
    ViewCDSEGAISREGID: TStringField;
    ViewCDSISACTIVE: TIntegerField;
    ViewCDSISFIXATION: TIntegerField;
    ViewCDSISACTIVENAME: TStringField;
    ViewCDSISFIXATIONNAME: TStringField;
    ViewcxGridDBTVEGAISACTFIXBARCODEID: TcxGridDBColumn;
    ViewcxGridDBTVPRESENT: TcxGridDBColumn;
    ViewcxGridDBTVEGAISACTFIXBARCODESTATUSID: TcxGridDBColumn;
    ViewcxGridDBTVCOMMENTARY: TcxGridDBColumn;
    ViewcxGridDBTVEGAISREGID: TcxGridDBColumn;
    ViewcxGridDBTVISACTIVE: TcxGridDBColumn;
    ViewcxGridDBTVISACTIVENAME: TcxGridDBColumn;
    ViewcxGridDBTVISFIXATION: TcxGridDBColumn;
    ViewcxGridDBTVISFIXATIONNAME: TcxGridDBColumn;
    ViewcxGridDBTVEGAISACTFIXBARCODESTATUSNAME: TcxGridDBColumn;
    ViewCDSEGAISACTFIXBARCODESTATUSNAME: TStringField;
    DetailCDS: TClientDataSet;
    DetailDS: TDataSource;
    DetailCDSID: TIntegerField;
    DetailCDSEXCISECODE: TStringField;
    DetailCDSDRINKKINDID: TIntegerField;
    DetailcxGridDBTVID: TcxGridDBColumn;
    DetailcxGridDBTVEXCISECODE: TcxGridDBColumn;
    DetailcxGridDBTVDRINKKINDID: TcxGridDBColumn;
    procedure TopPanelResize(Sender: TObject);
    procedure ExciseCodecxMEKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExcisecxButtonClick(Sender: TObject);
    procedure DetailCDSBeforeOpen(DataSet: TDataSet);
    procedure ViewDSDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fExciseFix: TfExciseFix;

implementation

uses uMain;

{$R *.dfm}

procedure TfExciseFix.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
begin
 RetVal:=1;
 CompName:='ExciseFixView';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   ViewCDS.ProviderName:=CompName+'DSP';
   ViewCDS.RemoteServer:=fMain.SocketConnection;
   ViewCDS.CommandText:='select * from buytrans_exciseactfixview(:drinkkindid)';
  end;

 RetVal:=1;
 CompName:='ExciseFixDetail';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   DetailCDS.ProviderName:=CompName+'DSP';
   DetailCDS.RemoteServer:=fMain.SocketConnection;
   DetailCDS.CommandText:='select * from buytrans_exciseactfixdetail(:egaisactfixbarcodeid,:drinkkindid)';
  end;

end;

procedure TfExciseFix.FormActivate(Sender: TObject);
begin
 fMain.RefreshCDS(ViewCDS);
 ExciseCodecxME.SetFocus;
end;

procedure TfExciseFix.TopPanelResize(Sender: TObject);
begin
 ExciseCodecxME.Width:=TopPanel.Width-ExciseCodecxME.Left-10;
end;

procedure TfExciseFix.ExciseCodecxMEKeyPress(Sender: TObject;
  var Key: Char);
begin
 {if Key=#13 then
  begin
   with fMain do
    try
     InUpDelCDS.Close;
     InUpDelCDS.CommandText:='execute procedure buytrans_excisescanadd('+
      ViewCDS.Params[0].AsString+','+
      ViewCDS.Params[1].AsString+','+
      #39+ExciseCodecxME.Text+#39+')';
     SocketConnection.AppServer.DBStartTransaction;
     InUpDelCDS.Execute;
     SocketConnection.Appserver.DBCommit;
    except on E:Exception do
     begin
      MessageDlg('Ошибка: '+E.Message,mtError,[mbOk],0);
      SocketConnection.AppServer.DBRollBack;
      exit;
     end;
    end;//try..except
   fMain.RefreshCDS(ViewCDS);
   ExciseCodecxME.Clear;
   ExciseCodecxME.SetFocus;
  end; }
end;

procedure TfExciseFix.ExcisecxButtonClick(Sender: TObject);
begin
 fMain.RefreshCDS(ViewCDS);
end;

procedure TfExciseFix.DetailCDSBeforeOpen(DataSet: TDataSet);
begin
  TClientDataSet(DataSet).Params[0].AsInteger:=ViewCDSEGAISACTFIXBARCODEID.AsInteger;
  TClientDataSet(DataSet).Params[1].AsInteger:=ViewCDS.Params[0].AsInteger;
end;

procedure TfExciseFix.ViewDSDataChange(Sender: TObject; Field: TField);
begin
 fMain.RefreshCDS(DetailCDS);
end;

end.
