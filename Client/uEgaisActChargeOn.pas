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
    ExciseCodecxME: TcxMaskEdit;
    Label1: TLabel;
    PM: TPopupMenu;
    DeleteMI: TMenuItem;
    DetailCDSRETAILSALEID: TIntegerField;
    DetailCDSEXISTSDKID: TIntegerField;
    DetailcxGridDBTVID: TcxGridDBColumn;
    DetailcxGridDBTVEXCISECODE: TcxGridDBColumn;
    DetailcxGridDBTVSTRLENEXCISE: TcxGridDBColumn;
    DetailcxGridDBTVALCCODE: TcxGridDBColumn;
    DetailcxGridDBTVRETAILSALEID: TcxGridDBColumn;
    DetailcxGridDBTVEXISTSDKID: TcxGridDBColumn;
    CopyMI: TMenuItem;
    DetailCDSINFORMREG: TStringField;
    DetailcxGridDBTVINFORMREG: TcxGridDBColumn;
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
    procedure PMPopup(Sender: TObject);
    procedure CopyMIClick(Sender: TObject);
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
 cmdtxt:=''; ViewCDS.First;
 while not ViewCDS.Eof do
  begin
   cmdtxt:=cmdtxt+','+#39+ViewCDSPARAMVALUE.AsString+#39;
   ViewCDS.Next;
  end;

 try
  fMain.ExecCmdTxtWithTrans('execute procedure buytrans_egaisaco_dkup('+copy(cmdtxt,2,length(cmdtxt))+')');
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
  fMain.ExecCmdTxtWithTrans('execute procedure buytrans_egaisaco_excisein('+ViewCDS.Params[0].AsString+')');
 finally
  fMain.RefreshCDS(ViewCDS);
 end;
end;

procedure TfEgaisActChargeOn.SendDKToEgaiscxButtonClick(Sender: TObject);
begin
 try
  if fMain.ExecCmdTxtWithTrans('execute procedure buytrans_egaisaco_send('+ViewCDS.Params[0].AsString+')') then
   MessageDlg('Успешно. Смотрите результат выполнения.',mtInformation,[mbOk],0);
 finally
  fMain.RefreshCDS(ViewCDS);
 end;
end;

procedure TfEgaisActChargeOn.ExciseCodecxMEKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then
  begin
   try
    fMain.ExecCmdTxtWithTrans('execute procedure buytrans_excisescanadd(8,'+
                              ViewCDS.Params[0].AsString+','+
                              #39+ExciseCodecxME.Text+#39+')');
   finally
    fMain.RefreshCDS(ViewCDS);
    ExciseCodecxME.Clear;
    ExciseCodecxME.SetFocus;
   end;
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
 SendDKToEgaiscxButton.Enabled:=not DetailCDS.IsEmpty;
end;

procedure TfEgaisActChargeOn.DeleteMIClick(Sender: TObject);
var ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
begin
 with DetailcxGridDBTV.DataController do
  begin
   BeginUpdate;
   try
    if GetSelectedCount > 0 then
     begin
      try
       fMain.SocketConnection.AppServer.DBStartTransaction;
       for i:= 0 to GetSelectedCount - 1 do
        begin
         ARowIndex := GetSelectedRowIndex(I);
         ARowInfo := GetRowInfo(ARowIndex);
         if ARowInfo.Level < Groups.GroupingItemCount then
          Continue
         else
          begin
           fMain.InUpDelCDS.Close;
           fMain.InUpDelCDS.CommandText:='execute procedure buytrans_egaisaco_excisedel('+ViewCDS.Params[0].AsString+','+#39+Values[ARowInfo.RecordIndex, DetailcxGridDBTVEXCISECODE.Index]+#39+')';
           fMain.InUpDelCDS.Execute;
          end;
        end; // for
       fMain.SocketConnection.Appserver.DBCommit;
       ClearSelection;
      except on E:Exception do
       begin
        fMain.SocketConnection.AppServer.DBRollBack;
        MessageDlg('Ошибка: '+E.Message+fMain.InUpDelCDS.CommandText,mtError,[mbOk],0);
        exit;
       end; //on E:Exception
      end;
     end;//if GetSelectedCount > 0 then
   finally
    EndUpdate;
    fMain.RefreshCDS(ViewCDS);
   end;
  end;//with
end;

procedure TfEgaisActChargeOn.PMPopup(Sender: TObject);
begin
 DeleteMI.Visible:= not DetailCDS.IsEmpty;
end;

procedure TfEgaisActChargeOn.CopyMIClick(Sender: TObject);
begin
 ((((Sender as TMenuItem).Parent.Owner as TPopupMenu).PopupComponent as TcxGrid).Views[0] as TcxGridDBTableView).CopyToClipboard(false);
end;

end.
