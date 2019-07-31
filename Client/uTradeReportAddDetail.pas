unit uTradeReportAddDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uInventoryList, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, StdCtrls, cxButtons, ExtCtrls, cxControls,
  cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxCalendar,
  cxCurrencyEdit, DB, DBClient;

type
  TfTradeReportAddDetail = class(TForm)
    BottomPanel: TPanel;
    TRDetailCancelcxButton: TcxButton;
    TRDetailSavecxButton: TcxButton;
    TRDetailDatecxDE: TcxDateEdit;
    TRDetailDateLbl: TLabel;
    TRDetailNumberLbl: TLabel;
    TRDetailNumbercxTE: TcxTextEdit;
    TRDetailTypecxLCB: TcxLookupComboBox;
    TRDetailTypeLbl: TLabel;
    TRDetailOperationSumLbl: TLabel;
    TRDetailOperationSumcxCE: TcxCurrencyEdit;
    procedure TRDetailCancelcxButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TRDetailSavecxButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    fInventoryListLink: TfInventoryList;
  end;

var
  fTradeReportAddDetail: TfTradeReportAddDetail;

implementation

uses DynamicProvider, uMain;

{$R *.dfm}

procedure TfTradeReportAddDetail.TRDetailCancelcxButtonClick(Sender: TObject);
begin
 Close;
end;

procedure TfTradeReportAddDetail.FormCreate(Sender: TObject);
var RetVal: OleVariant;
    CompName: string;
    CDS: TClientDataSet;
    DS: TDataSource;
begin
 RetVal := 1;
 CompName := 'TradeReportDetailType';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (FindDynamicClientDataSet(Self ,CDS, CompName + 'CDS', True, fMain.SocketConnection, CompName + 'DSP')
  and FindDynamicDataSource(Self, DS, CompName + 'DS', True, CDS) and RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName ,mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   CDS.CommandText :=
    'select td.id, td.operationname ' +
    'from tradereportdetailtype td';
   TRDetailTypecxLCB.Properties.ListSource := DS;
   TRDetailTypecxLCB.Properties.KeyFieldNames := 'ID';
   TRDetailTypecxLCB.Properties.ListFieldNames := 'OPERATIONNAME';
   CDS.RemoteServer := fMain.SocketConnection;
  end;
 fMain.RefreshCDS(TClientDataSet(TRDetailTypecxLCB.Properties.ListSource.DataSet))
end;

procedure TfTradeReportAddDetail.TRDetailSavecxButtonClick(
  Sender: TObject);
begin
 if TRDetailNumbercxTE.Text = '' then
  begin
   ShowMessage('Не заполнен номер операции.');
   exit;
  end; //if

 if TRDetailDatecxDE.Text = '' then
  begin
   ShowMessage('Не заполнена дата операции');
   exit;
  end; //if

 if TRDetailOperationSumcxCE.Text = '' then
  begin
   ShowMessage('Не заполнена сумма операции');
   exit;
  end; //if

  if TRDetailTypecxLCB.EditValue < 1 then
  begin
   MessageDLG('Не выбран тип операции', mtError, [mbOK], 0);
   exit;
  end;

 with fMain do
  begin
   try
    SocketConnection.AppServer.DBStartTransaction;
    InUpDelCDS.Close;
    InUpDelCDS.CommandText :=
        'insert into tradereportdetail(operationdate, operationnumber, tradereportid, tradereportdetailtypeid, operationsum, ismanual, operationname) ' +
        'values(' + #39 + DateTimeToStr(TRDetailDatecxDE.Date)    + #39 + ','
                  + #39 + TRDetailNumbercxTE.Text                 + #39 + ','
                  + fInventoryListLink.TradeReportCDSID.AsString  + ','
                  + IntToStr(TRDetailTypecxLCB.EditValue)         + ','
                  + FloatToStr(TRDetailOperationSumcxCE.Value)    + ', 1,'
                  + #39 + TRDetailTypecxLCB.Text                  + #39 + ')';

    InUpDelCDS.Execute;
    SocketConnection.AppServer.DBCommit;

   except on E:Exception do
    begin
     ShowMessage('Ошибка при записи новой операции в товарный отчет. Исходное сообщение> ' + E.Message);
     SocketConnection.AppServer.DBRollBack;
    end; //on E:Exception
   end; //try..except
  end; // with

 fMain.RefreshCDS(fInventoryListLink.TradeReportDetailCDS);
 TRDetailCancelcxButtonClick(Self);
end;

procedure TfTradeReportAddDetail.FormActivate(Sender: TObject);
begin
 TRDetailDatecxDE.Clear;
 TRDetailNumbercxTE.Clear;
 TRDetailTypecxLCB.Clear;
 TRDetailOperationSumcxCE.Clear;
end;

end.
