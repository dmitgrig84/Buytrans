unit uInventoryListTRAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxDropDownEdit, cxCalendar, cxCurrencyEdit,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, Buttons, ExtCtrls, DB, DBClient;

type
  TfInventoryListTRAdd = class(TForm)
    TerminalLabel: TLabel;
    TradeReportStLbl: TLabel;
    CasheOnLbl: TLabel;
    TradeReportDateLbl: TLabel;
    TradeReportPeriodLbl: TLabel;
    Label36: TLabel;
    TerminalcxLCB: TcxLookupComboBox;
    StoragecxLCB: TcxLookupComboBox;
    CasheOncxCE: TcxCurrencyEdit;
    PresentcxDE: TcxDateEdit;
    BegincxDE: TcxDateEdit;
    EndcxDE: TcxDateEdit;
    BottomPanel: TPanel;
    SaveBB: TBitBtn;
    CancelBB: TBitBtn;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SaveBBClick(Sender: TObject);
    procedure TerminalcxLCBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fInventoryListTRAdd: TfInventoryListTRAdd;

implementation

uses uMain,DynamicProvider;

{$R *.dfm}

procedure TfInventoryListTRAdd.FormCreate(Sender: TObject);
var RetVal: OleVariant;
    CompName: string;
    CDS: TClientDataSet;
    DS: TDataSource;
begin
 if (not FindDynamicDataSource(Self, DS, 'TerminalDS', True,fMain.TerminalCDS)) then
  begin
   MessageDlg('Ошибка при создании компонента TerminalDS', mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   TerminalcxLCB.Properties.ListSource := DS;
   TerminalcxLCB.Properties.KeyFieldNames := 'ID';
   TerminalcxLCB.Properties.ListFieldNames := 'NAME';
  end;

 RetVal := 1;
 CompName := 'InventoryListStorage';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (FindDynamicClientDataSet(Self, CDS, CompName + 'CDS', True, fMain.SocketConnection, CompName + 'DSP')
  and FindDynamicDataSource(Self, DS, CompName + 'DS', True, CDS) and RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   CDS.CommandText :=
    'select * from  buytrans_inventoryliststorage(:terminalid)';
   StoragecxLCB.Properties.ListSource := DS;
   StoragecxLCB.Properties.KeyFieldNames := 'ID';
   StoragecxLCB.Properties.ListFieldNames := 'NAME';
  end;

 PresentcxDE.Date := Date;
 BegincxDE.Date := Date;
 EndcxDE.Date := Date;
end;

procedure TfInventoryListTRAdd.FormActivate(Sender: TObject);
begin
 fMain.RefreshCDS(TClientDataSet(TerminalcxLCB.Properties.ListSource.Dataset));
end;

procedure TfInventoryListTRAdd.SaveBBClick(Sender: TObject);
var reminventoryid : String;
begin
 if TerminalcxLCB.Text = '' then
  begin
   MessageDLG('Не выбрано подразделение.', mtError, [mbOK], 0);
   exit;
  end;

 if StoragecxLCB.Text = '' then
  begin
   MessageDLG('Не выбрана торговая точка.', mtError, [mbOK], 0);
   exit;
  end;

 if PresentcxDE.Text = '' then
  begin
   MessageDLG('Не задана дата документа.', mtError, [mbOK], 0);
   exit;
  end;

 if BegincxDE.Text = '' then
  begin
   MessageDLG('Не задана начальная дата товарного отчета.', mtError, [mbOK], 0);
   exit;
  end;

 if EndcxDE.Text = '' then
  begin
   MessageDLG('Не задана конечная дата товарного отчета.', mtError, [mbOK], 0);
   exit;
  end;

  if CasheOncxCE.Text = '' then
  begin
   MessageDLG('Не задана сумма остатка.', mtError, [mbOK], 0);
   exit;
  end;

 reminventoryid := 'null';

 fMain.SocketConnection.AppServer.DBStartTransaction;
 try
  fMain.InUpDelCDS.Close;
  fMain.InUpDelCDS.CommandText :=
    'insert into tradereport(terminalid, storageid, present, inventorylistid, sincedate, tilldate, casheon, reminventoryid) ' +
    'values(' + IntToStr(TerminalcxLCB.EditValue) + ',' +
                IntToStr(StoragecxLCB.EditValue) + ',' +
                #39 + DateToStr(PresentcxDE.Date) + #39 + ',' +
                IntToStr(Self.Tag) + ',' +
                #39 + DateToStr(BegincxDE.Date) + #39 + ',' +
                #39 + DateToStr(EndcxDE.Date) + #39 + ',' +
                FloatToStr(Round(CasheOncxCE.Value * 1000)/1000) + ',' +
                reminventoryid + ')';
  fMain.InUpDelCDS.Execute;
  fMain.SocketConnection.AppServer.DBCommit;
  Self.Close;
 except on E: Exception do
  begin
   fMain.SocketConnection.AppServer.DBRollBack;
   MessageDLG('Ошибка:' + #13 + E.Message, mtError, [mbOK], 0);
   exit;
  end; //on
 end; //try
end;

procedure TfInventoryListTRAdd.TerminalcxLCBPropertiesEditValueChanged(
  Sender: TObject);
begin
 if (TerminalcxLCB.EditValue <> null) then
  begin
   TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet).Params[0].AsInteger := TerminalcxLCB.EditValue;
   fMain.RefreshCDS(TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet));
  end;
end;

end.
