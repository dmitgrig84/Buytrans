unit uNotification;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCurrencyEdit, cxImageComboBox, Menus, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ExtCtrls, cxSplitter, DBClient,
  cxCheckBox, ImgList, frxClass, frxDBSet, frxExportPDF;

type
  TfNotification = class(TForm)
    cxSplit: TcxSplitter;
    NotificationDetailPanel: TPanel;
    NotificationDetailcxGrid: TcxGrid;
    NotificationDetailcxGridDBTableView: TcxGridDBTableView;
    NotificationDetailcxGridLevel: TcxGridLevel;
    NotificationcxGrid: TcxGrid;
    NotificationcxGridDBTableView: TcxGridDBTableView;
    NotificationcxGridLevel: TcxGridLevel;
    NotificationSearchPanel: TPanel;
    RefreshNotificationBB: TcxButton;
    NotificationDatecxDE: TcxDateEdit;
    NotificationCDS: TClientDataSet;
    NotificationDS: TDataSource;
    NotificationDetailCDS: TClientDataSet;
    NotificationDetailDS: TDataSource;
    NotificationCDSID: TIntegerField;
    NotificationCDSPRESENT: TDateTimeField;
    NotificationCDSFIRMID: TIntegerField;
    NotificationCDSFIRMNAME: TStringField;
    NotificationCDSTERMINALID: TIntegerField;
    NotificationCDSTERMINALNAME: TStringField;
    NotificationcxGridDBTableViewID: TcxGridDBColumn;
    NotificationcxGridDBTableViewPRESENT: TcxGridDBColumn;
    NotificationcxGridDBTableViewFIRMID: TcxGridDBColumn;
    NotificationcxGridDBTableViewFIRMNAME: TcxGridDBColumn;
    NotificationcxGridDBTableViewTERMINALID: TcxGridDBColumn;
    NotificationcxGridDBTableViewTERMINALNAME: TcxGridDBColumn;
    AddNotificationcxButton: TcxButton;
    RightSearchPanel: TPanel;
    NotificationDetailCDSSQNNO: TIntegerField;
    NotificationDetailCDSSALEPRESENT: TDateTimeField;
    NotificationDetailCDSCLIENTREGID: TStringField;
    NotificationDetailCDSWBREGID: TStringField;
    NotificationDetailCDSEGAISFIXNUMBER: TStringField;
    NotificationDetailcxGridDBTableViewSQNNO: TcxGridDBColumn;
    NotificationDetailcxGridDBTableViewSALEPRESENT: TcxGridDBColumn;
    NotificationDetailcxGridDBTableViewCLIENTREGID: TcxGridDBColumn;
    NotificationDetailcxGridDBTableViewWBREGID: TcxGridDBColumn;
    NotificationDetailcxGridDBTableViewEGAISFIXNUMBER: TcxGridDBColumn;
    NotificationPM: TPopupMenu;
    IL: TImageList;
    PrintMI: TMenuItem;
    NotificationfrxReport: TfrxReport;
    NotificationfrxDBD: TfrxDBDataset;
    NotificationPrintCDS: TClientDataSet;
    NotificationPrintDS: TDataSource;
    NotificationPrintCDSOGNAME: TStringField;
    NotificationPrintCDSOGSHORTFORM: TStringField;
    NotificationPrintCDSOGFORM: TStringField;
    NotificationPrintCDSOGADDRESS: TStringField;
    NotificationPrintCDSOGPHONE: TStringField;
    NotificationPrintCDSNOTIFYPRESENT: TDateTimeField;
    NotificationPrintCDSNOTIFYFIRMID: TIntegerField;
    NotificationPrintCDSNOTIFYFIRMNAME: TStringField;
    NotificationPrintCDSOPERATIONDATE: TDateTimeField;
    NotificationPrintCDSOPERATIONNUMBER: TIntegerField;
    NotificationPrintCDSCLIENTREGID: TStringField;
    NotificationPrintCDSEGAISFIXNUMBER: TStringField;
    NotificationDetailCDSID: TIntegerField;
    NotificationPrintCDSWBREGID: TStringField;
    NotificationPrintCDSRESPONSIBLE: TStringField;
    NotificationPrintCDSOGINN: TStringField;
    NotificationPrintCDSOGKPP: TStringField;
    NotificationPrintCDSOGDISCOUNTNO: TStringField;
    NotificationPrintCDSOGBANKNAME: TStringField;
    NotificationPrintCDSOGBANKKS: TStringField;
    NotificationPrintCDSOGOGRN: TStringField;
    NotificationPrintCDSOGBIK: TStringField;
    NotificationPrintCDSPOSTNAME: TStringField;
    NotificationPrintCDSPOSTFIO: TStringField;
    NotificationPrintCDSLOGOTYPEFIRM: TBlobField;
    NotificationCDSSEND: TSmallintField;
    NotificationcxGridDBTableViewSEND: TcxGridDBColumn;
    PreviewMI: TMenuItem;
    NotificationCDSISPRINT: TSmallintField;
    NotificationcxGridDBTableViewISPRINT: TcxGridDBColumn;
    NotificationPrintCDSFAXIMILE: TBlobField;
    FirmIDFiltercxME: TcxMaskEdit;
    FirmNameFiltercxTE: TcxTextEdit;
    frxPDFExport: TfrxPDFExport;
    NotificationIDFiltercxME: TcxMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RefreshNotificationBBClick(Sender: TObject);
    procedure NotificationDSDataChange(Sender: TObject; Field: TField);
    procedure AddNotificationcxButtonClick(Sender: TObject);
    procedure PrintMIClick(Sender: TObject);
    procedure PreviewMIClick(Sender: TObject);
    procedure NotificationcxGridDBTableViewCustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure NotificationDatecxDEPropertiesChange(Sender: TObject);
    procedure FirmIDFiltercxMEEnter(Sender: TObject);
    procedure FirmIDFiltercxMEKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    LogoTypeFirm:TBitmap;
  end;

var
  fNotification: TfNotification;

implementation

uses uMain, uNotificationAdd;

{$R *.dfm}

procedure TfNotification.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TfNotification.FormCreate(Sender: TObject);
var RetVal: OleVariant;
    CompName: string;
    CDS: TClientDataSet;
    DS: TDataSource;
begin
 fMain.FloatToBcd(self);

 RetVal := 1;
 CompName := 'Notification';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   NotificationCDS.Close;
   NotificationCDS.CommandText := 'select * from buytrans_notificationview(:present, :firmid, :firmname, :notificationid)';
   NotificationCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'NotificationDetail';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   NotificationDetailCDS.Close;
   NotificationDetailCDS.CommandText := 'select * from buytrans_notificationdetailview(:notificationid)';
   NotificationDetailCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'NotificationPrint';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   NotificationPrintCDS.Close;
   NotificationPrintCDS.CommandText := 'select * from buytrans_notificationprint(:notificationid)';
   NotificationPrintCDS.RemoteServer := fMain.SocketConnection;
  end;

 NotificationDatecxDE.Date := Date;

 RefreshNotificationBBClick(Self);
end;

procedure TfNotification.RefreshNotificationBBClick(Sender: TObject);
begin
 with NotificationCDS do
  begin
   Close;
   Params[0].Clear;
   Params[1].Clear;
   Params[2].Clear;
   Params[3].Clear;

   if NotificationDatecxDE.Text<>'' then
    Params[0].AsDateTime:=NotificationDatecxDE.Date;
   if FirmIDFiltercxME.Text<>'' then
    Params[1].AsInteger:=FirmIDFiltercxME.EditValue;
   if FirmNameFiltercxTE.Text<>'' then
    Params[2].AsString:=AnsiUpperCase(FirmNameFiltercxTE.Text);
   if NotificationIDFiltercxME.Text<>'' then
    Params[3].AsInteger:=NotificationIDFiltercxME.EditValue;

   Open;
  end;
end;

procedure TfNotification.NotificationDSDataChange(Sender: TObject;
  Field: TField);
begin
 NotificationDetailCDS.Close;

 if (not NotificationCDS.Active) or (NotificationCDS.IsEmpty) then
  exit;
 with NotificationDetailCDS do
 begin
  DisableControls;
  Params[0].AsInteger := NotificationCDSID.AsInteger;
  try
   Open;
  finally
   EnableControls;
  end;  //try..finally
 end;   //with
end;

procedure TfNotification.AddNotificationcxButtonClick(Sender: TObject);
begin
 if (not Assigned(fNotificationAdd)) then
   Application.CreateForm(TfNotificationAdd, fNotificationAdd);
 fNotificationAdd.Tag := 0;
 fNotificationAdd.fNotificationLink := Self;
 fNotificationAdd.ShowModal;
end;

procedure TfNotification.PrintMIClick(Sender: TObject);
begin
 NotificationPrintCDS.Close;
 NotificationPrintCDS.Params[0].AsInteger := NotificationCDSID.AsInteger;
 NotificationPrintCDS.Open;

 if NotificationPrintCDS.RecordCount=0 then
   begin
    MessageDLG('Не верно заданы исходные парметры.',mtError,[mbOK],0);
    exit;
   end;

 if not(NotificationPrintCDS.IsEmpty) then
  begin
   NotificationfrxReport.PrepareReport;
   NotificationfrxReport.Print;
  end;

 try
  fMain.SocketConnection.AppServer.DBStartTransaction;
  fMain.InUpDelCDS.Close;
  fMain.InUpDelCDS.CommandText :=
    'update notification nf set nf.isprint = 1 where nf.id = ' + NotificationCDSID.AsString;
  fMain.InUpDelCDS.Execute;
  fMain.SocketConnection.AppServer.DBCommit;

 except on E:Exception do
  begin
   ShowMessage('Ошибка при записи новой инвентаризации. Исходное сообщение> '+E.Message);
   fMain.SocketConnection.AppServer.DBRollBack;
  end; //on E:Exception
 end; //try..except
end;

procedure TfNotification.PreviewMIClick(Sender: TObject);
begin
 NotificationPrintCDS.Close;
 NotificationPrintCDS.Params[0].AsInteger := NotificationCDSID.AsInteger;
 NotificationPrintCDS.Open;

 if NotificationPrintCDS.RecordCount=0 then
   begin
    MessageDLG('Не верно заданы исходные парметры.',mtError,[mbOK],0);
    exit;
   end;

 if not(NotificationPrintCDS.IsEmpty) then
  begin
   NotificationfrxReport.PrepareReport;
   NotificationfrxReport.ShowReport;
  end;
end;

procedure TfNotification.NotificationcxGridDBTableViewCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 if AViewInfo.Column.Name=NotificationcxGridDBTableViewPRESENT.Name then
  begin
   NotificationDatecxDE.Left:=AViewInfo.RealBounds.Left+2;
   NotificationDatecxDE.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left-1;
  end;

 if AViewInfo.Column.Name=NotificationcxGridDBTableViewFIRMID.Name then
  begin
   FirmIDFiltercxME.Left:=AViewInfo.RealBounds.Left+2;
   FirmIDFiltercxME.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left-1;
  end;

 if AViewInfo.Column.Name=NotificationcxGridDBTableViewFIRMNAME.Name then
  begin
   FirmNameFiltercxTE.Left:=AViewInfo.RealBounds.Left+2;
   FirmNameFiltercxTE.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left-1;
  end;

 if AViewInfo.Column.Name=NotificationcxGridDBTableViewID.Name then
  begin
   NotificationIDFiltercxME.Left:=AViewInfo.RealBounds.Left+2;
   NotificationIDFiltercxME.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left-1;
  end;
end;

procedure TfNotification.NotificationDatecxDEPropertiesChange(
  Sender: TObject);
begin
 RefreshNotificationBBClick(Self);
end;

procedure TfNotification.FirmIDFiltercxMEEnter(Sender: TObject);
begin
 if (Sender as TComponent).Name<>FirmIDFiltercxME.Name then
  FirmIDFiltercxME.Clear;
 if (Sender as TComponent).Name<>FirmNameFiltercxTE.Name then
  FirmNameFiltercxTE.Clear;
 if (Sender as TComponent).Name<>NotificationDatecxDE.Name then
  NotificationDatecxDE.Clear;
 if (Sender as TComponent).Name<>NotificationIDFiltercxME.Name then
  NotificationIDFiltercxME.Clear;
end;

procedure TfNotification.FirmIDFiltercxMEKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then
  RefreshNotificationBBClick(self);
end;

end.
