unit uNotificationAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, StdCtrls, ExtCtrls,
  cxCheckBox, Buttons, uNotification, DBClient, DB, DynamicProvider;

type
  TfNotificationAdd = class(TForm)
    MainPanel: TPanel;
    FirmIDLbl: TLabel;
    FirmNameLbl: TLabel;
    ContractorIDcxTE: TcxTextEdit;
    ContractorNamecxLCB: TcxLookupComboBox;
    NewcxCB: TcxCheckBox;
    AllClientscxCB: TcxCheckBox;
    ApplayBB: TBitBtn;
    CancelBB: TBitBtn;
    BottomPanel: TPanel;
    procedure CancelBBClick(Sender: TObject);
    procedure ApplayBBClick(Sender: TObject);
    procedure ContractorIDcxTEKeyPress(Sender: TObject; var Key: Char);
    procedure ContractorNamecxLCBKeyPress(Sender: TObject; var Key: Char);
    procedure AllClientscxCBClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
   fNotificationLink: TfNotification;
    { Public declarations }
  end;

var
  fNotificationAdd: TfNotificationAdd;

implementation

uses uMain;

{$R *.dfm}

procedure TfNotificationAdd.CancelBBClick(Sender: TObject);
begin
 Close;
end;

procedure TfNotificationAdd.ApplayBBClick(Sender: TObject);
var firmid:string;
begin
 if MessageDlg('Создать уведомления на ' + DateToStr(Date) + '?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  exit;

 if (ContractorIdcxTE.Text = '') and (not AllClientscxCB.Checked) then
  begin
   MessageDLG('Не выбран клиент.', mtInformation, [mbOK], 0);
   exit;
  end;

 if AllClientscxCB.Checked then
  firmid := '-1'
 else
  firmid := ContractorIdcxTE.Text;

 with fMain do
  begin
   try
    SocketConnection.AppServer.DBStartTransaction;

    InUpDelCDS.Close;
    InUpDelCDS.CommandText := 'execute procedure buytrans_notification_add(' + IntToStr(NewcxCB.EditValue) + ',' + firmid + ')';
    InUpDelCDS.Execute;

    SocketConnection.AppServer.DBCommit;

    fNotificationLink.RefreshNotificationBBClick(Self);
    fNotificationAdd.Close;
    fNotificationAdd.ModalResult := mrOk;

   except on E:Exception do
    begin
     ShowMessage('Ошибка. Исходное сообщение> '+E.Message);
     SocketConnection.AppServer.DBRollBack;
    end; //on E:Exception
   end; //try
  end; //with
end;

procedure TfNotificationAdd.ContractorIDcxTEKeyPress(Sender: TObject;
  var Key: Char);
var CDS: TClientDataSet;
begin
 if (Sender as TcxTextEdit).Text = '' then
  exit;

 if Key = #13 then
  begin
   try
    CDS := TClientDataSet(ContractorNamecxLCB.Properties.ListSource.DataSet);
    CDS.DisableControls;
    CDS.Close;
    CDS.Params[0].AsInteger := StrToInt(ContractorIdcxTE.Text);
    CDS.Params[1].Clear;
    CDS.Open;
   finally
    CDS.EnableControls;
   end;

   if CDS.Active and (CDS.RecordCount > 0) then
    ContractorNamecxLCB.Text := CDS.FieldByName('FIRMNAME').AsString
   else
    MessageDLG('Контрагент с указанным кодом не найден.', mtInformation, [mbOK], 0);
  end;
end;

procedure TfNotificationAdd.ContractorNamecxLCBKeyPress(Sender: TObject;
  var Key: Char);
var CDS: TClientDataSet;
begin
 if ContractorNamecxLCB.Text = '' then
  begin
   ContractorNamecxLCB.Properties.ListSource.DataSet.Close;
   exit;
  end;

 if Key = #13 then
  begin
   try
    CDS := TClientDataSet(ContractorNamecxLCB.Properties.ListSource.DataSet);
    CDS.DisableControls;
    CDS.Close;
    CDS.Params[0].Clear;
    CDS.Params[1].AsString := AnsiUpperCase(ContractorNamecxLCB.Text);
    CDS.Open;
   finally
    CDS.EnableControls;
   end;

   if CDS.RecordCount > 0 then
    ContractorNamecxLCB.Text := CDS.FieldByName('FIRMNAME').AsString;
  end;
end;


procedure TfNotificationAdd.AllClientscxCBClick(Sender: TObject);
begin
 if AllClientscxCB.Checked then
  begin
   ContractorIDcxTE.Clear;
   ContractorIDcxTE.Enabled := False;
   ContractorNamecxLCB.Clear;
   ContractorNamecxLCB.Enabled := False;
  end
 else
  begin
   ContractorIDcxTE.Enabled := True;
   ContractorNamecxLCB.Enabled := True;
  end;
end;

procedure TfNotificationAdd.FormCreate(Sender: TObject);
var RetVal: OleVariant;
    CompName: string;
    CDS: TClientDataSet;
    DS: TDataSource;
begin
 RetVal := 1;
 CompName := 'ContractorDecrease';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (FindDynamicClientDataSet(self, CDS, CompName + 'CDS', true, fMain.SocketConnection, CompName + 'DSP')
  and FindDynamicDataSource(self, DS, CompName + 'DS', true, CDS) and RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   CDS.CommandText :=
    'select firmid, cast(firmname as varchar(96)) firmname, commonaddress '+
    'from buytrans_notificationcontractor(:contractorid, :contractorname)';
   CDS.RemoteServer:=fMain.SocketConnection;
   ContractorNamecxLCB.Properties.ListSource := DS;
   ContractorNamecxLCB.Properties.KeyFieldNames := 'FIRMID';
   ContractorNamecxLCB.Properties.ListFieldNames := 'FIRMNAME;COMMONADDRESS';
  end;
end;

end.
