unit uAutoTransportation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxSpinEdit,
  ExtCtrls, DBClient, cxDropDownEdit, cxCalendar, DateUtils;

type
  TfAutoTrans = class(TForm)
    SetupPanel: TPanel;
    Panel2: TPanel;
    DaySE: TcxSpinEdit;
    cxLabel1: TcxLabel;
    OpenButton: TcxButton;
    MainGridDBTV: TcxGridDBTableView;
    MainGridLevel1: TcxGridLevel;
    MainGrid: TcxGrid;
    AutoTransCDS: TClientDataSet;
    AutoTransDS: TDataSource;
    AutoTransCDSDRINKID: TIntegerField;
    AutoTransCDSNAME: TStringField;
    AutoTransCDSSBOTTLECOUNT: TIntegerField;
    AutoTransCDSRBOTTLECOUNT: TIntegerField;
    AutoTransCDSCBOTTLECOUNT: TIntegerField;
    AutoTransCDSINBOTTLECOUNT: TIntegerField;
    AutoTransCDSOUTBOTTLECOUNT: TIntegerField;
    AutoTransCDSCOUNTRACK: TIntegerField;
    AutoTransCDSMINRACK: TIntegerField;
    AutoTransCDSBOXCAPACITY: TIntegerField;
    MainGridDBTVDRINKID: TcxGridDBColumn;
    MainGridDBTVNAME: TcxGridDBColumn;
    MainGridDBTVSBOTTLECOUNT: TcxGridDBColumn;
    MainGridDBTVRBOTTLECOUNT: TcxGridDBColumn;
    MainGridDBTVCBOTTLECOUNT: TcxGridDBColumn;
    MainGridDBTVINBOTTLECOUNT: TcxGridDBColumn;
    MainGridDBTVOUTBOTTLECOUNT: TcxGridDBColumn;
    MainGridDBTVCOUNTRACK: TcxGridDBColumn;
    MainGridDBTVMINRACK: TcxGridDBColumn;
    MainGridDBTVBOXCAPACITY: TcxGridDBColumn;
    pmAutoTrans: TPopupMenu;
    miCreateTrans: TMenuItem;
    AutoTransCDSmaxtrans: TIntegerField;
    MainGridDBTVmaxtrans: TcxGridDBColumn;
    AutoTransCDSvbottlecount: TIntegerField;
    MainGridDBTVvbottlecount: TcxGridDBColumn;
    CheckerButton: TcxButton;
    AutoTransCDSzbottlecount: TIntegerField;
    MainGridDBTVzbottlecount: TcxGridDBColumn;
    cbTerminal: TComboBox;
    cxLabel2: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure OpenButtonClick(Sender: TObject);
    procedure miCreateTransClick(Sender: TObject);
    procedure AutoTransCDSBeforeDelete(DataSet: TDataSet);
    procedure CheckerButtonClick(Sender: TObject);
    procedure MainGridDBTVStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbTerminalChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAutoTrans: TfAutoTrans;

implementation

uses uMain, DynamicProvider;

{$R *.dfm}

procedure TfAutoTrans.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
 RetVal:=1;
 CompName:='AutoTrans';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   AutoTransCDS.Close;
   AutoTransCDS.CommandText:=
    'select * from buytrans_autotrans_2(:terminalid,:daycount)';
   AutoTransCDS.RemoteServer:=fMain.SocketConnection;
  end;
end;

procedure TfAutoTrans.OpenButtonClick(Sender: TObject);
begin
AutoTransCDS.Close;
AutoTransCDS.Params[0].AsInteger := cbTerminal.Tag;
AutoTransCDS.Params[1].AsInteger := DaySE.Value;
AutoTransCDS.Open;
end;

procedure TfAutoTrans.miCreateTransClick(Sender: TObject);
var ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
   SavePlace: TBookmark;
begin
 if MainGridDBTV.DataController.GetSelectedCount>0 then
  if MessageDlg('Создать перемещения',mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
   exit;
 MainGridDBTV.DataController.DeleteSelection;
 fMain.RefreshCDS(AutoTransCDS);
end;

procedure TfAutoTrans.AutoTransCDSBeforeDelete(DataSet: TDataSet);
begin
 with fMain do
  try
   InUpDelCDS.Close;
   if CheckerButton.Tag = 0 then
    InUpDelCDS.CommandText:=
    'execute procedure BUYTRANS_AUTOTRANSDETAIL_2 ('+AutoTransCDS.Params[0].AsString+','+AutoTransCDSDRINKID.AsString+',null,'+
    IntToStr(AutoTransCDSINBOTTLECOUNT.AsInteger+AutoTransCDSOUTBOTTLECOUNT.AsInteger)+','+
    AutoTransCDSmaxtrans.AsString+')'
   else
    InUpDelCDS.CommandText:=
    'execute procedure BUYTRANS_AUTOTRANSDETAIL_2 ('+AutoTransCDS.Params[0].AsString+','+AutoTransCDSDRINKID.AsString+','+
    AutoTransCDSBOXCAPACITY.AsString+','+
    IntToStr(AutoTransCDSINBOTTLECOUNT.AsInteger+AutoTransCDSOUTBOTTLECOUNT.AsInteger)+','+
    AutoTransCDSmaxtrans.AsString+')';
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDlg('Ошибка. Исх. сообщение> '+E.Message, mtError, [mbOk] , 0);
    exit;
   end;//on
  end;//try..except}
end;

procedure TfAutoTrans.CheckerButtonClick(Sender: TObject);
begin
  AutoTransCDS.Close;
  CheckerButton.Tag := (CheckerButton.Tag + 1) mod 2;
  if CheckerButton.Tag = 1 then
    begin
    cxLabel1.Caption := 'Заказы вперед на:';
    DaySE.Value := 1;
    SetupPanel.Color := clGreen;
    SetupPanel.Caption := 'РЕЖИМ ЗАКАЗА';
    AutoTransCDS.CommandText:=
    'select * from buytrans_autotrans_2(:terminal,:daycount)';
    end
  else
    begin
    cxLabel1.Caption := 'Кол-во дней запаса:';
    DaySE.Value := 1;
    SetupPanel.Color := clRed;
    SetupPanel.Caption := 'РЕЖИМ ПРОГНОЗА';
    AutoTransCDS.CommandText:=
    'select * from buytrans_autotrans_3(:terminal,:daycount)';
    end;
end;

procedure TfAutoTrans.MainGridDBTVStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
if ARecord.Level = MainGridDBTV.GroupedColumnCount then
  if ARecord.Values[MainGridDBTVINBOTTLECOUNT.Index] >
  ARecord.Values[MainGridDBTVMINRACK.Index]/2  then
    begin
    AStyle := TcxStyle.Create(Sender);
    AStyle.Color := clYellow;
    end
end;

procedure TfAutoTrans.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfAutoTrans.cbTerminalChange(Sender: TObject);
begin
AutoTransCDS.Close;
if cbTerminal.ItemIndex = 0 then
  cbTerminal.Tag := 22
else
  if cbTerminal.ItemIndex = 1 then
    cbTerminal.Tag := 21
  else
    cbTerminal.Tag := 24;
end;

end.
