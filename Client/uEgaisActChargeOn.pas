unit uEgaisActChargeOn;

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
  TfEgaisActChargeOn = class(TForm)
    ViewcxGrid: TcxGrid;
    ViewcxGridDBTV: TcxGridDBTableView;
    ViewcxGridLevel: TcxGridLevel;
    ViewCDS: TClientDataSet;
    ViewDS: TDataSource;
    TopPanel: TPanel;
    DetailcxGrid: TcxGrid;
    DetailcxGridDBTV: TcxGridDBTableView;
    DetailcxGridLevel: TcxGridLevel;
    cxSplitter: TcxSplitter;
    DetailCDS: TClientDataSet;
    DetailDS: TDataSource;
    DetailCDSID: TIntegerField;
    DetailCDSEXCISECODE: TStringField;
    SaveDKInfocxButton: TcxButton;
    GetExcisecxButton: TcxButton;
    SendDKToEgaiscxButton: TcxButton;
    ViewCDSORDERBYID: TIntegerField;
    ViewCDSPARAMNAME: TStringField;
    ViewCDSPARAMVALUE: TStringField;
    ViewcxGridDBTVORDERBYID: TcxGridDBColumn;
    ViewcxGridDBTVPARAMNAME: TcxGridDBColumn;
    ViewcxGridDBTVPARAMVALUE: TcxGridDBColumn;
    DetailCDSSTRLENEXCISE: TIntegerField;
    DetailCDSALCCODE: TStringField;
    DetailcxGridDBTVID: TcxGridDBColumn;
    DetailcxGridDBTVEXCISECODE: TcxGridDBColumn;
    DetailcxGridDBTVSTRLENEXCISE: TcxGridDBColumn;
    DetailcxGridDBTVALCCODE: TcxGridDBColumn;
    ExciseCodecxME: TcxMaskEdit;
    Label1: TLabel;
    PM: TPopupMenu;
    DeleteMI: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SaveDKInfocxButtonClick(Sender: TObject);
    procedure DetailCDSBeforeOpen(DataSet: TDataSet);
    procedure ViewDSDataChange(Sender: TObject; Field: TField);
    procedure GetExcisecxButtonClick(Sender: TObject);
    procedure SendDKToEgaiscxButtonClick(Sender: TObject);
    procedure ExciseCodecxMEKeyPress(Sender: TObject; var Key: Char);
    procedure ViewCDSAfterOpen(DataSet: TDataSet);
    procedure ViewCDSAfterPost(DataSet: TDataSet);
    procedure DetailCDSAfterOpen(DataSet: TDataSet);
    procedure DeleteMIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEgaisActChargeOn: TfEgaisActChargeOn;

implementation

uses uMain;

{$R *.dfm}

procedure TfEgaisActChargeOn.FormCreate(Sender: TObject);
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
   ViewCDS.CommandText:='select * from buytrans_egaisaco_dk(:drinkkindid)';
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
   DetailCDS.CommandText:='select * from buytrans_egaisaco_excise(:drinkkindid)';
  end;

end;

procedure TfEgaisActChargeOn.FormActivate(Sender: TObject);
begin
 fMain.RefreshCDS(ViewCDS);
end;

procedure TfEgaisActChargeOn.SaveDKInfocxButtonClick(Sender: TObject);
var cmdtxt:string;
begin
 if (not ViewCDS.Modified) then
  begin
   MessageDlg('Данные по партии не менялись.',mtError,[mbOk],0);
   exit;
  end;

 cmdtxt:='';
 while not ViewCDS.Eof do
  begin
   cmdtxt:=cmdtxt+','+#39+ViewCDSPARAMVALUE.AsString+#39;
   ViewCDS.Next;
  end;

 try
  with fMain do
   try
    InUpDelCDS.Close;
    InUpDelCDS.CommandText:='execute procedure buytrans_egaisaco_dkup('+copy(cmdtxt,2,length(cmdtxt))+')';
    SocketConnection.AppServer.DBStartTransaction;
    InUpDelCDS.Execute;
    SocketConnection.Appserver.DBCommit;
   except on E:Exception do
    begin
     MessageDlg('Ошибка: '+E.Message+InUpDelCDS.CommandText,mtError,[mbOk],0);
     SocketConnection.AppServer.DBRollBack;
     exit;
    end;
   end;//try..except
  finally
   fMain.RefreshCDS(ViewCDS);
  end;
end;

procedure TfEgaisActChargeOn.DetailCDSBeforeOpen(DataSet: TDataSet);
begin
  TClientDataSet(DataSet).Params[0].AsInteger:=ViewCDS.Params[0].AsInteger
end;

procedure TfEgaisActChargeOn.ViewDSDataChange(Sender: TObject; Field: TField);
begin
 fMain.RefreshCDS(DetailCDS);
end;

procedure TfEgaisActChargeOn.GetExcisecxButtonClick(Sender: TObject);
begin
 try
  with fMain do
   try
    InUpDelCDS.Close;
    InUpDelCDS.CommandText:='execute procedure buytrans_egaisaco_inv('+ViewCDS.Params[0].AsString+')';
    SocketConnection.AppServer.DBStartTransaction;
    InUpDelCDS.Execute;
    SocketConnection.Appserver.DBCommit;
   except on E:Exception do
    begin
     MessageDlg('Ошибка: '+E.Message+InUpDelCDS.CommandText,mtError,[mbOk],0);
     SocketConnection.AppServer.DBRollBack;
     exit;
    end;
   end;//try..except
  finally
   fMain.RefreshCDS(ViewCDS);
  end;
end;

procedure TfEgaisActChargeOn.SendDKToEgaiscxButtonClick(Sender: TObject);
begin
 try
  with fMain do
   try
    InUpDelCDS.Close;
    InUpDelCDS.CommandText:='execute procedure buytrans_egaisaco_send('+ViewCDS.Params[0].AsString+')';
    SocketConnection.AppServer.DBStartTransaction;
    InUpDelCDS.Execute;
    SocketConnection.Appserver.DBCommit;
   except on E:Exception do
    begin
     MessageDlg('Ошибка: '+E.Message+InUpDelCDS.CommandText,mtError,[mbOk],0);
     SocketConnection.AppServer.DBRollBack;
     exit;
    end;
   end;//try..except
  finally
   fMain.RefreshCDS(ViewCDS);
  end;
end;

procedure TfEgaisActChargeOn.ExciseCodecxMEKeyPress(Sender: TObject;
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
      exit;
     end;
    end;//try..except
   fMain.RefreshCDS(ViewCDS);
   ExciseCodecxME.Clear;
   ExciseCodecxME.SetFocus;
  end; 
end;

procedure TfEgaisActChargeOn.ViewCDSAfterOpen(DataSet: TDataSet);
begin
 SaveDKInfocxButton.Enabled:=false;
end;

procedure TfEgaisActChargeOn.ViewCDSAfterPost(DataSet: TDataSet);
begin
 SaveDKInfocxButton.Enabled:=true;
end;

procedure TfEgaisActChargeOn.DetailCDSAfterOpen(DataSet: TDataSet);
begin
 GetExcisecxButton.Enabled:=DetailCDS.IsEmpty;
end;

procedure TfEgaisActChargeOn.DeleteMIClick(Sender: TObject);
begin
 try
  with fMain do
   try
    InUpDelCDS.Close;
    InUpDelCDS.CommandText:='execute procedure buytrans_egaisaco_excisedel('+ViewCDS.Params[0].AsString+','+#39+DetailCDSEXCISECODE.AsString+#39+')';
    SocketConnection.AppServer.DBStartTransaction;
    InUpDelCDS.Execute;
    SocketConnection.Appserver.DBCommit;
   except on E:Exception do
    begin
     MessageDlg('Ошибка: '+E.Message+InUpDelCDS.CommandText,mtError,[mbOk],0);
     SocketConnection.AppServer.DBRollBack;
     exit;
    end;
   end;//try..except
  finally
   fMain.RefreshCDS(ViewCDS);
  end;
end;

end.
