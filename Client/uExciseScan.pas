unit uExciseScan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLabel, cxTextEdit, cxMaskEdit, StdCtrls,
  cxButtons, ExtCtrls, DBClient;

type
  TfExciseScan = class(TForm)
    ViewcxGrid: TcxGrid;
    ViewcxGridDBTV: TcxGridDBTableView;
    ViewcxGridL: TcxGridLevel;
    PM: TPopupMenu;
    DeleteMI: TMenuItem;
    ViewCDS: TClientDataSet;
    ViewDS: TDataSource;
    TopPanel: TPanel;
    ExciseCodecxME: TcxMaskEdit;
    ViewCDSOPERATIONDETAILID: TIntegerField;
    ViewCDSDRINKKINDID: TIntegerField;
    ViewCDSDRINKID: TIntegerField;
    ViewCDSPRINTMARK: TStringField;
    ViewCDSCOUNTUNIT: TIntegerField;
    ViewCDSEXCISEUNIT: TIntegerField;
    ViewcxGridDBTVOPERATIONDETAILID: TcxGridDBColumn;
    ViewcxGridDBTVDRINKKINDID: TcxGridDBColumn;
    ViewcxGridDBTVDRINKID: TcxGridDBColumn;
    ViewcxGridDBTVPRINTMARK: TcxGridDBColumn;
    ViewcxGridDBTVCOUNTUNIT: TcxGridDBColumn;
    ViewcxGridDBTVEXCISEUNIT: TcxGridDBColumn;
    ExcisecxButton: TcxButton;
    ViewCDSCASHEUNIT: TIntegerField;
    ViewcxGridDBTVCASHEUNIT: TcxGridDBColumn;
    ViewCDSEXCISECASHEUNIT: TIntegerField;
    ViewcxGridDBTVEXCISECASHEUNIT: TcxGridDBColumn;
    RefreshcxButton: TcxButton;
    procedure TopPanelResize(Sender: TObject);
    procedure ExciseCodecxMEKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExcisecxButtonClick(Sender: TObject);
    procedure RefreshcxButtonClick(Sender: TObject);
    procedure DeleteMIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fExciseScan: TfExciseScan;

implementation

uses uMain;

{$R *.dfm}

procedure TfExciseScan.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
begin
 RetVal:=1;
 CompName:='ExciseScanView';
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
   ViewCDS.CommandText:='select * from buytrans_excisescanview(:operationtypeid,:operationid)';
  end;
end;

procedure TfExciseScan.FormActivate(Sender: TObject);
begin
 fMain.RefreshCDS(ViewCDS);
 if ExciseCodecxME.Enabled then
  ExciseCodecxME.SetFocus;
end;

procedure TfExciseScan.TopPanelResize(Sender: TObject);
begin
 ExciseCodecxME.Width:=TopPanel.Width-ExciseCodecxME.Left-10;
end;

procedure TfExciseScan.ExciseCodecxMEKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then
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
     end;
    end;//try..except
   fMain.RefreshCDS(ViewCDS);
   ExciseCodecxME.Clear;
   if ExciseCodecxME.Enabled then
    ExciseCodecxME.SetFocus;
  end;
end;

procedure TfExciseScan.ExcisecxButtonClick(Sender: TObject);
begin
 try
  fMain.ExecCmdTxtWithTrans('execute procedure buytrans_excisescanauto('+ViewCDS.Params[0].AsString+','+ViewCDS.Params[1].AsString+')');
 finally
  fMain.RefreshCDS(ViewCDS);
 end;
end;

procedure TfExciseScan.RefreshcxButtonClick(Sender: TObject);
begin
 fMain.RefreshCDS(ViewCDS);
end;

procedure TfExciseScan.DeleteMIClick(Sender: TObject);
begin
 try
  fMain.ExecCmdTxtWithTrans('execute procedure buytrans_excisescandel('+ViewCDS.Params[0].AsString+','+ViewCDSOPERATIONDETAILID.AsString+')');
 finally
  fMain.RefreshCDS(ViewCDS);
 end;
end;

end.
