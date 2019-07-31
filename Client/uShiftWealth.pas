unit uShiftWealth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxImageComboBox, Menus, cxContainer, DBClient, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Buttons, StdCtrls, cxButtons,
  cxSplitter, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ExtCtrls,
  frxClass, frxDBSet, frxExportXLS, ImgList, cxButtonEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Gauges, cxShellBrowserDialog, CPort;

type
  TfShiftWealth = class(TForm)
    CentralPanel: TPanel;
    CentralLeftPanel: TPanel;
    ShiftFromcxGrid: TcxGrid;
    ShiftFromcxGridDBTV: TcxGridDBTableView;
    ShiftFromcxGridLevel: TcxGridLevel;
    CentralRightPanel: TPanel;
    ShiftTocxGrid: TcxGrid;
    ShiftTocxGridDBTV: TcxGridDBTableView;
    ShiftTocxGL: TcxGridLevel;
    Panel7: TPanel;
    cxSplitter2: TcxSplitter;
    TopPanel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    LeftTopPanel: TPanel;
    ShiftFromCDS: TClientDataSet;
    ShiftFromDS: TDataSource;
    ShiftFromCDSNEWPRESENT: TDateTimeField;
    ShiftFromCDSSQNNO: TIntegerField;
    ShiftFromCDSDRINKID: TIntegerField;
    ShiftFromCDSDRINKKINDID: TIntegerField;
    ShiftFromCDSDRINKNAME: TStringField;
    ShiftFromCDSRGNUMBER: TStringField;
    ShiftFromCDSFIRMNAME: TStringField;
    ShiftFromCDSADDRESS: TStringField;
    ShiftFromcxGridDBTVNEWPRESENT: TcxGridDBColumn;
    ShiftFromcxGridDBTVSQNNO: TcxGridDBColumn;
    ShiftFromcxGridDBTVDRINKID: TcxGridDBColumn;
    ShiftFromcxGridDBTVDRINKKINDID: TcxGridDBColumn;
    ShiftFromcxGridDBTVDRINKNAME: TcxGridDBColumn;
    ShiftFromcxGridDBTVRGNUMBER: TcxGridDBColumn;
    ShiftFromcxGridDBTVFIRMNAME: TcxGridDBColumn;
    ShiftFromcxGridDBTVADDRESS: TcxGridDBColumn;
    Panel1: TPanel;
    ListShiftTocxCB: TcxComboBox;
    ShiftToCDS: TClientDataSet;
    ShiftToDS: TDataSource;
    ShiftHistorycxGrid: TcxGrid;
    ShiftHistorycxGridDBTV: TcxGridDBTableView;
    ShiftHistorycxGridLevel: TcxGridLevel;
    ShiftFromPM: TPopupMenu;
    ShowHistoryMI: TMenuItem;
    ShiftFromPanel: TPanel;
    ShiftHistoryPanel: TPanel;
    RightTopPanel: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    ShiftWealthBB: TBitBtn;
    ShiftHistoryCDS: TClientDataSet;
    ShiftHistoryDS: TDataSource;
    ShiftFromCDSISSTORAGE: TSmallintField;
    ShiftFromCDSDISTRIBUTIONID: TIntegerField;
    ShiftFromCDSID: TIntegerField;
    ShiftFromcxGridDBTVID: TcxGridDBColumn;
    ShiftFromcxGridDBTVDISTRIBUTIONID: TcxGridDBColumn;
    ShiftFromcxGridDBTVISSTORAGE: TcxGridDBColumn;
    ShiftHistoryCDSSQNNO: TIntegerField;
    ShiftHistoryCDSPRESENT: TDateTimeField;
    ShiftHistoryCDSWHO: TStringField;
    ShiftHistoryCDSOLDRESPONSIBLE: TStringField;
    ShiftHistoryCDSNEWRESPONSIBLE: TStringField;
    ShiftHistorycxGridDBTVSQNNO: TcxGridDBColumn;
    ShiftHistorycxGridDBTVPRESENT: TcxGridDBColumn;
    ShiftHistorycxGridDBTVWHO: TcxGridDBColumn;
    ShiftHistorycxGridDBTVOLDRESPONSIBLE: TcxGridDBColumn;
    ShiftHistorycxGridDBTVNEWRESPONSIBLE: TcxGridDBColumn;
    ShiftActPrintfrxReport: TfrxReport;
    ShiftActPrintfrxDBD: TfrxDBDataset;
    ShiftActPrintCDS: TClientDataSet;
    ShiftActPrintCDSSQNNO: TIntegerField;
    ShiftActPrintCDSPRESENT: TDateTimeField;
    ShiftHistoryPM: TPopupMenu;
    ShiftActPrintMI: TMenuItem;
    ShiftActPrintCDSNEWRESPONSIBLE: TStringField;
    ShiftActPrintCDSRGNUMBER: TStringField;
    ShiftActPrintCDSDRINKNAME: TStringField;
    ShiftActPrintCDSDRINKPRICE: TFloatField;
    ShiftActPrintCDSOLDRESPONSIBLE: TStringField;
    ShiftFromCDSSSPRICE: TFloatField;
    ShiftFromcxGridDBTVSSPRICE: TcxGridDBColumn;
    frxXLSExport: TfrxXLSExport;
    ReceiveWealthBB: TBitBtn;
    RefreshcxButton: TcxButton;
    ShiftHistoryCDSMAKE: TSmallintField;
    ShiftHistoryCDSSEND: TSmallintField;
    ShiftHistorycxGridDBTVMAKE: TcxGridDBColumn;
    ShiftHistorycxGridDBTVSEND: TcxGridDBColumn;
    ShiftIL: TImageList;
    ShiftFromCDSISMAKEDOC: TSmallintField;
    ShiftFromcxGridDBTVISMAKEDOC: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    ShiftHistoryCDSCAN_RECEIVE: TSmallintField;
    ShiftFromCDSTEEMPLOYEE: TStringField;
    ShiftFromcxGridDBTVTEEMPLOYEE: TcxGridDBColumn;
    ShiftToPM: TPopupMenu;
    N1: TMenuItem;
    WealthListfrxReport: TfrxReport;
    WealthListfrxDBD: TfrxDBDataset;
    WealthListRoomCDS: TClientDataSet;
    WealthListRoomCDSOFFICENAME: TStringField;
    WealthListRoomCDSROOMNAME: TStringField;
    WealthListRoomCDSDRINKNAME: TStringField;
    WealthListRoomCDSRGNUMBER: TStringField;
    WealthListRoomCDSRESPONSIBLE: TStringField;
    WealthListRespCDS: TClientDataSet;
    WealthListRespDBD: TfrxDBDataset;
    WealthListRespCDSOFFICENAME: TStringField;
    WealthListRespCDSROOMNAME: TStringField;
    WealthListRespCDSDRINKNAME: TStringField;
    WealthListRespCDSRGNUMBER: TStringField;
    WealthListRespCDSRESPONSIBLE: TStringField;
    ImportWealthPanel: TPanel;
    Label66: TLabel;
    ImportWealthFileLbl: TLabel;
    ImportWealthGauge: TGauge;
    ImportBonus_TopPanel: TPanel;
    ImportBonus_BottomPanel: TPanel;
    ImportWealthApplyBB: TBitBtn;
    ImportWealthCancelBB: TBitBtn;
    ImportWealthRoomLCB: TcxLookupComboBox;
    ImportWealthFileBE: TcxButtonEdit;
    ImportWealthxButton: TcxButton;
    WealthcxShellBD: TcxShellBrowserDialog;
    PrintBarcodecxButton: TcxButton;
    PrintBarcodePanel: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    PrintBarcodePrintBB: TBitBtn;
    PrintBarcodeCancelBB: TBitBtn;
    RgNumbercxME: TcxMaskEdit;
    WealthNameLbl: TLabel;
    ComPort: TComPort;
    procedure FormCreate(Sender: TObject);
    procedure ListShiftTocxCBPropertiesChange(Sender: TObject);
    procedure ShowHistoryMIClick(Sender: TObject);
    procedure ShiftWealthBBClick(Sender: TObject);
    procedure ShiftFromDSDataChange(Sender: TObject; Field: TField);
    procedure ShiftActPrintMIClick(Sender: TObject);
    procedure RefreshcxButtonClick(Sender: TObject);
    procedure ShiftFromcxGridDBTVCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ShiftHistoryDSDataChange(Sender: TObject; Field: TField);
    procedure ReceiveWealthBBClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ImportWealthFileBEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ImportWealthxButtonClick(Sender: TObject);
    procedure ImportWealthCancelBBClick(Sender: TObject);
    procedure ImportWealthApplyBBClick(Sender: TObject);
    procedure PrintBarcodeCancelBBClick(Sender: TObject);
    procedure PrintBarcodecxButtonClick(Sender: TObject);
    procedure RgNumbercxMEKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fShiftWealth: TfShiftWealth;

implementation

uses uMain, DynamicProvider, ComObj;

{$R *.dfm}

procedure TfShiftWealth.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
 fMain.FloatToBcd(self);

 RetVal := 1;
 CompName := 'ShiftFrom';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   ShiftFromCDS.Close;
   ShiftFromCDS.CommandText :=
    'select * from buytrans_shiftfromview';
   ShiftFromCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'ShiftHistory';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   ShiftHistoryCDS.Close;
   ShiftHistoryCDS.CommandText :=
    'select * from buytrans_shifthistoryview(:drinkkind)';
   ShiftHistoryCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'ShiftActPrint';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   ShiftActPrintCDS.Close;
   ShiftActPrintCDS.CommandText :=
    'select * from buytrans_shiftactprint(:shiftdocid)';
   ShiftActPrintCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'ShiftTo';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  MessageDlg('Ошибка при создании компонента '+CompName, mtError, [mbOk],0)
 else
  begin
   ShiftToCDS.ProviderName := CompName + 'DSP';
   ShiftToCDS.RemoteServer := fMain.SocketConnection;
  end;

  RetVal := 1;
 CompName := 'WealthListRoom';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   WealthListRoomCDS.Close;
   WealthListRoomCDS.CommandText :=
    'select * from buytrans_wealthlistprint(:distributionid) where flagresp = 0';
   WealthListRoomCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'WealthListResp';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   WealthListRespCDS.Close;
   WealthListRespCDS.CommandText :=
    'select * from buytrans_wealthlistprint(:distributionid) where flagresp = 1';
   WealthListRespCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'ImportWealthRoom';
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
   'select f.id firmid, f.name firmname, db.id dbid, db.address address from firm f ' +
      'left join distribution db on db.firmid = f.id ' +
      'left join firmtradeemployee fte on fte.distributionid = db.id and fte.enddate is null ' +
      'left join tradeemployee te on fte.tradeemployeeid = te.id ' +
      'left join citypart cp on te.citypartid = cp.id ' +
      'where f.id in (select w.firmid from wealthroom w)' + // Помещения
      'order by 2, 4';

   ImportWealthRoomLCB.Properties.ListSource := DS;
   ImportWealthRoomLCB.Properties.KeyFieldNames := 'DBID';
   ImportWealthRoomLCB.Properties.ListFieldNames := 'FIRMNAME; ADDRESS';
   CDS.RemoteServer := fMain.SocketConnection;
  end;

 fMain.RefreshCDS(ShiftFromCDS);
end;

procedure TfShiftWealth.ListShiftTocxCBPropertiesChange(Sender: TObject);
var i:integer;
begin
 ShiftToCDS.Close;
 ShiftTocxGridDBTV.ClearItems;
 if ListShiftTocxCB.Text='' then
  exit;
 case ListShiftTocxCB.ItemIndex of

  0:begin // Организации
     ShiftToCDS.CommandText:=
      'select f.id firmid, f.name firmname, db.id dbid, db.address || ' + #39 + ' ' + #39 + ' || db.tradename address from firm f ' +
      'join distribution db on db.firmid = f.id ' +
      'join firmtradeemployee fte on fte.distributionid = db.id and fte.enddate is null ' +
      'join tradeemployee te on fte.tradeemployeeid = te.id ' +
      'join citypart cp on te.citypartid = cp.id ' +
      'join department dp on dp.otherfirmid = f.id ' +
      'where dp.truerozn = 1 ' + // Розница
       'and te.id = 1192 ' + // 79й счет
       'order by 2, 4';

     ShiftToCDS.Open;
     ShiftToCDS.FieldByName('firmid').Visible := False;
     ShiftToCDS.FieldByName('dbid').Visible := False;
     ShiftToCDS.FieldByName('firmname').DisplayLabel := 'Организация';
     ShiftToCDS.FieldByName('address').DisplayLabel := 'Адрес';
     ShiftTocxGridDBTV.DataController.KeyFieldNames:='DBID';
     ShiftTocxGridDBTV.DataController.CreateAllItems;
    end;

  1:begin // Физические лица
     ShiftToCDS.CommandText:=
      'select f.id firmid, f.name firmname, db.id dbid, db.address address, dp.name dpname from firm f ' +
      'join distribution db on db.firmid = f.id ' +
      'join department dp on db.departmentid = dp.id ' +
      'join firmtradeemployee fte on fte.distributionid = db.id and fte.enddate is null ' +
      'join tradeemployee te on fte.tradeemployeeid = te.id ' +
      'join citypart cp on te.citypartid = cp.id ' +
      'where f.id = 11565' + // Физ. лица
       'and cp.id = 58 ' + // 79й счет
       'order by 2, 4';

     ShiftToCDS.Open;
     ShiftToCDS.FieldByName('firmid').Visible := False;
     ShiftToCDS.FieldByName('firmname').Visible := False;
     ShiftToCDS.FieldByName('dbid').Visible := False;
     ShiftToCDS.FieldByName('address').DisplayLabel := 'Сотрудник';
     ShiftToCDS.FieldByName('dpname').DisplayLabel := 'Подразделение';
     ShiftTocxGridDBTV.DataController.KeyFieldNames:='DBID';
     ShiftTocxGridDBTV.DataController.CreateAllItems;
    end;

  2:begin // Помещения, кабинеты
     ShiftToCDS.CommandText:=
      'select f.id firmid, f.name firmname, db.id dbid, db.address address from firm f ' +
      'left join distribution db on db.firmid = f.id ' +
      'left join firmtradeemployee fte on fte.distributionid = db.id and fte.enddate is null ' +
      'left join tradeemployee te on fte.tradeemployeeid = te.id ' +
      'left join citypart cp on te.citypartid = cp.id ' +
      'where f.id in (select w.firmid from wealthroom w)' + // Помещения
      'order by 2, 4';

     ShiftToCDS.Open;
     ShiftToCDS.FieldByName('firmid').Visible := False;
     ShiftToCDS.FieldByName('dbid').Visible := False;
     ShiftToCDS.FieldByName('firmname').DisplayLabel := 'Организация';
     ShiftToCDS.FieldByName('address').DisplayLabel := 'Помещение';
     ShiftTocxGridDBTV.DataController.KeyFieldNames:='DBID';
     ShiftTocxGridDBTV.DataController.CreateAllItems;
    end;

 3:begin // Склады
     ShiftToCDS.CommandText :=
      'select st.id firmid, ' + #39 + 'Склад' + #39 + ' firmname, st.id dbid, st.name address from storage st ' +
      'where st.id = 47';

     ShiftToCDS.Open;
     ShiftToCDS.FieldByName('firmid').Visible := False;
     ShiftToCDS.FieldByName('dbid').Visible := False;
     ShiftToCDS.FieldByName('firmname').Visible := False;
     ShiftToCDS.FieldByName('address').DisplayLabel := 'Склад';
     ShiftTocxGridDBTV.DataController.KeyFieldNames:='DBID';
     ShiftTocxGridDBTV.DataController.CreateAllItems;
    end;
 end;

 for i:=0 to ShiftTocxGridDBTV.ColumnCount-1 do
  if (ShiftTocxGridDBTV.Columns[i].Visible) then
   begin
    ShiftTocxGridDBTV.Columns[i].Summary.FooterKind := skCount;
    ShiftTocxGridDBTV.Columns[i].Summary.GroupFooterKind := skCount;
    break;
   end;

end;

procedure TfShiftWealth.ShowHistoryMIClick(Sender: TObject);
begin
 ShowHistoryMI.Checked  := not ShowHistoryMI.Checked;
 ShiftHistorycxGrid.Visible := ShowHistoryMI.Checked;
 ShiftHistoryPanel.Visible := ShowHistoryMI.Checked;
end;

procedure TfShiftWealth.ShiftWealthBBClick(Sender: TObject);
var i, shiftdocid :integer;
    shifttypefrom, shifttypeto : String;
    ARowIndex: Integer;
    ARowInfo: TcxRowInfo;
begin
 if ShiftTocxGridDBTV.DataController.GetSelectedCount = 0 then
  begin
   MessageDLG('Не выбран новый ответственный для перемещения', mtError, [mbOK], 0);
   exit;
  end;

 if MessageDLG('Переместить выбранные ТМЦ на ответственного "' +  ShiftToCDS.FieldByName('firmname').AsString + ' ' +
               ShiftToCDS.FieldByName('address').AsString + '"?', mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
  exit;

 // Генерируем код документа
 fMain.AnyCommandCDS.Close;
 fMain.AnyCommandCDS.CommandText := 'select GEN_ID(gen_shiftdoc_id, 1) from rdb$database';
 fMain.AnyCommandCDS.Open;
 shiftdocid := fMain.AnyCommandCDS.Fields[0].Value;

 fMain.SocketConnection.AppServer.DBStartTransaction;
 try
  fMain.InUpDelCDS.Close;
  fMain.InUpDelCDS.CommandText := 'insert into shiftdoc(id) values(' + IntToStr(shiftdocid) + ')';
  fMain.InUpDelCDS.Execute;
  fMain.SocketConnection.AppServer.DBCommit;
 except on E:Exception do
  begin
   fMain.SocketConnection.AppServer.DBRollBack;
   MessageDLG('Ошибка:' +#13 + E.Message, mtError, [mbOK], 0);
   exit;
  end; //on
 end; //try

 with ShiftFromcxGridDBTV.DataController do
  begin
   BeginUpdate;

   if (ShiftFromCDSISSTORAGE.AsInteger = 0) then
    shifttypefrom := '0'
   else
    shifttypefrom := '1';

   if (ListShiftTocxCB.ItemIndex = 3) then
    shifttypeto := '1'
   else
    shifttypeto := '0';

   if GetSelectedCount = 1 then
    begin
     fMain.SocketConnection.AppServer.DBStartTransaction;
     try
      fMain.InUpDelCDS.Close;
      fMain.InUpDelCDS.CommandText :=
             'insert into shiftdocdetail(shiftdocid, drinkkindfrom, distributionfrom, distributionto, ' +
                                        'drinksalefrom, drinkreturnid, drinksaleto, shifttypefrom, shifttypeto) ' +
             'values(' + IntToStr(shiftdocid) + ',' +
                     ShiftFromCDSDRINKKINDID.AsString + ',' +
                     ShiftFromCDSDISTRIBUTIONID.AsString + ',' +
                     ShiftToCDS.FieldByName('dbid').AsString + ',' +
                     ShiftFromCDSID.AsString + ',null, null,' +
                     shifttypefrom + ',' + shifttypeto + ')';
      fMain.InUpDelCDS.Execute;
      fMain.SocketConnection.AppServer.DBCommit;
     except on E:Exception do
      begin
       fMain.SocketConnection.AppServer.DBRollBack;
       MessageDLG('Ошибка:' +#13 + E.Message, mtError, [mbOK], 0);
       exit;
      end; //on
     end; //try
    end;

   if GetSelectedCount > 1 then
    for i:= 0 to GetSelectedCount - 1 do
     begin
      ARowIndex := GetSelectedRowIndex(I);
      ARowInfo := GetRowInfo(ARowIndex);
      if ARowInfo.Level < Groups.GroupingItemCount then
       Continue
      else
       begin
        if (Values[ARowInfo.RecordIndex, ShiftFromCDSISSTORAGE.Index] = 0) then
         shifttypefrom := '0'
        else
         shifttypefrom := '1';
        fMain.SocketConnection.AppServer.DBStartTransaction;
        try
         fMain.InUpDelCDS.Close;
         fMain.InUpDelCDS.CommandText :=
             'insert into shiftdocdetail(shiftdocid, drinkkindfrom, distributionfrom, distributionto, ' +
                                        'drinksalefrom, drinkreturnid, drinksaleto, shifttypefrom, shifttypeto) ' +
             'values(' + IntToStr(shiftdocid) + ',' +
                     IntToStr(Values[ARowInfo.RecordIndex, ShiftFromCDSDRINKKINDID.Index]) + ',' +
                     IntToStr(Values[ARowInfo.RecordIndex, ShiftFromCDSDISTRIBUTIONID.Index]) + ',' +
                     ShiftToCDS.FieldByName('dbid').AsString + ',' +
                     IntToStr(Values[ARowInfo.RecordIndex, ShiftFromCDSID.Index]) +
                     ',null, null,' +
                     shifttypefrom + ',' + shifttypeto + ')';
         fMain.InUpDelCDS.Execute;
         fMain.SocketConnection.AppServer.DBCommit;
        except on E: Exception do
         begin
          fMain.SocketConnection.AppServer.DBRollBack;
          MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
          exit;
         end; //on
        end; //try
       end;
     end;//for  GetSelectedCount
    EndUpdate;
   end;//with McBuyDocDetailcxGridDBTV.DataController

 if (ListShiftTocxCB.ItemIndex <> 1) then
  begin
   fMain.SocketConnection.AppServer.DBStartTransaction;
    try
     fMain.InUpDelCDS.Close;
     fMain.InUpDelCDS.CommandText :=
        'update shiftdoc sd set sd.make = 1 where sd.id = ' + IntToStr(shiftdocid);
     fMain.InUpDelCDS.Execute;
     fMain.SocketConnection.AppServer.DBCommit;
     MessageDlg('Перемещение ТМЦ выполнено', mtInformation, [mbOk], 0);
    except on E:Exception do
     begin
      fMain.SocketConnection.AppServer.DBRollBack;
      MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
      exit;
    end; //on
   end; //try
  end //if
 else
  MessageDlg('Перемещение создано. Ожидает подтверждения', mtInformation, [mbOk], 0);

 fMain.RefreshCDS(ShiftFromCDS);
 fMain.RefreshCDS(ShiftHistoryCDS);
end;

procedure TfShiftWealth.ShiftFromDSDataChange(Sender: TObject;
  Field: TField);
begin
 ShiftHistoryCDS.Close;
 if (not ShiftFromCDS.Active) or (ShiftFromCDS.IsEmpty) then
  exit; 
 with ShiftHistoryCDS do
  begin
   DisableControls;
   Params[0].AsInteger:= ShiftFromCDS.FieldByName('DRINKKINDID').AsInteger;
   try
    Open;
   finally
    EnableControls;
   end;//try..finally
  end;//with

 if ShiftHistoryCDS.RecordCount = 0 then
  begin
   ReceiveWealthBB.Enabled := False;
   ShiftWealthBB.Enabled := True;
  end;

 if ((ShiftFromCDSISMAKEDOC.AsInteger = 0) or (ShiftFromCDSISMAKEDOC.AsInteger = 1)) then
  ShiftWealthBB.Enabled := True
 else
  ShiftWealthBB.Enabled := False;
end;

procedure TfShiftWealth.ShiftActPrintMIClick(Sender: TObject);
begin
 try
  begin
   ShiftActPrintCDS.Close;
   ShiftActPrintCDS.Params[0].AsInteger := ShiftHistoryCDSSQNNO.AsInteger;

   ShiftActPrintCDS.Open;

   if ShiftActPrintfrxReport.PrepareReport then
    ShiftActPrintfrxReport.ShowPreparedReport;
  end;

 except on E: Exception do
  MessageDlg('Ошибка при печати док-ов.' + E.Message, mtError, [mbOk], 0);
 end; //try
end;

procedure TfShiftWealth.RefreshcxButtonClick(Sender: TObject);
begin
 fMain.RefreshCDS(ShiftFromCDS);
end;

procedure TfShiftWealth.ShiftFromcxGridDBTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.DisplayTexts[ShiftFromCDSISMAKEDOC.Index]='1') then
  begin
   ACanvas.Brush.Color := $C0FFC0;
   ACanvas.Font.Color := clBlack;
  end;

 if (AViewInfo.GridRecord.DisplayTexts[ShiftFromCDSISMAKEDOC.Index]='2') then
  begin
   ACanvas.Brush.Color := $6666FF; //$00DFDFFF;
   ACanvas.Font.Color := clBlack;
  end;

 if (AViewInfo.GridRecord.DisplayTexts[ShiftFromCDSISMAKEDOC.Index]='3') then
  begin
   ACanvas.Brush.Color := $7fffff;
   ACanvas.Font.Color := clBlack;
  end;
end;

procedure TfShiftWealth.ShiftHistoryDSDataChange(Sender: TObject;
  Field: TField);
begin
  if ((ShiftHistoryCDSMAKE.AsInteger = 0) and (ShiftHistoryCDSCAN_RECEIVE.AsInteger = 1)) then
   ReceiveWealthBB.Enabled := True
  else
   ReceiveWealthBB.Enabled := False;
end;

procedure TfShiftWealth.ReceiveWealthBBClick(Sender: TObject);
begin
 fMain.SocketConnection.AppServer.DBStartTransaction;
 try
  fMain.InUpDelCDS.Close;
  fMain.InUpDelCDS.CommandText :=
      'update shiftdoc sd set sd.make = 1 where sd.id = ' + ShiftHistoryCDSSQNNO.AsString;
  fMain.InUpDelCDS.Execute;
  fMain.SocketConnection.AppServer.DBCommit;
  fMain.RefreshCDS(ShiftFromCDS);
  fMain.RefreshCDS(ShiftHistoryCDS);
  MessageDlg('Перемещение ТМЦ выполнено', mtInformation, [mbOk], 0);
 except on E:Exception do
  begin
   fMain.SocketConnection.AppServer.DBRollBack;
   MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
   exit;
  end; //on
 end; //try

end;

procedure TfShiftWealth.N1Click(Sender: TObject);
begin
 try
  begin
   WealthListRoomCDS.Close;
   WealthListRoomCDS.Params[0].AsInteger := ShiftToCDS.FieldByName('dbid').AsInteger;

   WealthListRoomCDS.Open;

   WealthListRespCDS.Close;
   WealthListRespCDS.Params[0].AsInteger := ShiftToCDS.FieldByName('dbid').AsInteger;

   WealthListRespCDS.Open;

   WealthListfrxReport.ReportOptions.Name := WealthListRoomCDSOFFICENAME.AsString + ', ' +
                                             WealthListRoomCDSROOMNAME.AsString + ' ' +
                                             WealthListRoomCDSRESPONSIBLE.AsString;

   frxXLSExport.FileName := WealthListRoomCDSOFFICENAME.AsString + ', ' +
                                             WealthListRoomCDSROOMNAME.AsString + ' ' +
                                             WealthListRoomCDSRESPONSIBLE.AsString;

   if WealthListfrxReport.PrepareReport then
    WealthListfrxReport.ShowPreparedReport;
  end;

 except on E: Exception do
  MessageDlg('Ошибка при печати док-ов.' + E.Message, mtError, [mbOk], 0);
 end; //try
end;

procedure TfShiftWealth.ImportWealthFileBEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
 WealthcxShellBD.Execute;
 ImportWealthFileBE.Text:=WealthcxShellBD.Path;
end;

procedure TfShiftWealth.ImportWealthxButtonClick(Sender: TObject);
begin
 fMain.RefreshCDS(TClientDataSet(ImportWealthRoomLCB.Properties.ListSource.DataSet));
 ImportWealthFileBE.Clear;
 ImportWealthRoomLCB.EditValue := -1;
 ImportWealthGauge.Progress := 0;

 ImportWealthRoomLCB.Properties.ListColumns.Items[0].Width := 400;
 ImportWealthRoomLCB.Properties.ListColumns.Items[1].Width := 400;

 ImportWealthPanel.Top:=Round(fMain.Height/3)-Round(ImportWealthPanel.Height/2);
 ImportWealthPanel.Left:=Round(fMain.Width/2)-Round(ImportWealthPanel.Width/2);

 ImportWealthPanel.Visible := true;
end;

procedure TfShiftWealth.ImportWealthCancelBBClick(Sender: TObject);
begin
 ImportWealthPanel.Visible := false;
end;

procedure TfShiftWealth.ImportWealthApplyBBClick(Sender: TObject);
var ExApp,Sheet: variant;
    j,i: integer;
    buyid: String;
    TempSqnnoBB: array of array of string;
    emptyerror: boolean;
begin
 emptyerror:=true;
 if ImportWealthFileBE.Text='' then
  begin
   MessageDLG('Не задан файл импорта.',mtError,[mbOK],0);
   exit;
  end;

 if (ImportWealthRoomLCB.EditValue<0) then
  begin
   MessageDLG('Не выбрано помещение.',mtError,[mbOK],0);
   exit;
  end;

 //----------------Занесение записей из excel в буфер--------------------------//
 try
  ExApp := CreateOleObject('Excel.Application');
  ExApp.Visible := false;
  i := 18;
  ExApp.WorkBooks.Open(FileName := ImportWealthFileBE.Text, ReadOnly := true);
  Sheet := ExApp.Sheets.Item[1];

  while Sheet.Cells[i,2].Text<>'' do//посчитали количество записей
   Inc(i);

  SetLength(TempSqnnoBB, i - 18, 4);

  ImportWealthGauge.Progress := 0;
  ImportWealthGauge.MaxValue := i - 18;
  i := 18;
  while Sheet.Cells[i,2].Text<>'' do
   begin
    for j := 0 to 3 do
     TempSqnnoBB[i - 18, j] := Sheet.Cells[i, j + 2].Value;
    Inc(i);
    ImportWealthGauge.AddProgress(1);
   end;

  ExApp.WorkBooks.Close;
  ExApp.Quit;
 except on E:Exception do
  begin
   ExApp.Quit;
   MessageDLG('Ошибка. Исходное сообщение>> ' + E.Message, mtError, [mbOK], 0);
   exit;
  end;//on e:Exception
 end;//try..except
//----------------------------------------------------------------------------//

//-----------------Занесение записей в таблицу бонусов------------------------//
 buyid := 'null';
 ImportWealthGauge.Progress := 0;
 ImportWealthGauge.MaxValue := Length(TempSqnnoBB);
 fMain.SocketConnection.AppServer.DBStartTransaction;
 try
  for j := 0 to Length(TempSqnnoBB) - 1 do
   begin
    fMain.InUpDelCDS.Close;
    fMain.InUpDelCDS.CommandText:=
     'select * from BUYTRANS_WEALTHIMPORT(' +
      #39 + TempSqnnoBB[j, 0] + #39 + ',' +
      #39 + TempSqnnoBB[j, 1] + #39 + ',' +
      #39 + TempSqnnoBB[j, 2] + #39 + ',' +
      #39 + TempSqnnoBB[j, 3] + #39 + ',' +
      buyid + ')';
    fMain.InUpDelCDS.Open;
    buyid := fMain.InUpDelCDS.Fields[0].AsString;
    ImportWealthGauge.AddProgress(1);
   end; // for j:=0 to Length(TempSqnnoBB) do

   fMain.InUpDelCDS.Close;
   fMain.InUpDelCDS.CommandText:=
     'execute procedure BUYTRANS_WEALTHIMPORT_SHIFT(' +
      buyid + ',' +
      IntToStr(ImportWealthRoomLCB.EditValue) + ')';
    fMain.InUpDelCDS.Execute;

   fMain.SocketConnection.AppServer.DBCommit;
 except on E:Exception do
  begin
   fMain.SocketConnection.AppServer.DBRollBack;
   MessageDLG('Ошибка:' + E.Message, mtError, [mbOK], 0);
   exit;
  end;//except
 end;//try
//----------------------------------------------------------------------------//
 RefreshcxButtonClick(self);
 ImportWealthCancelBBClick(self);
end;

procedure TfShiftWealth.PrintBarcodeCancelBBClick(Sender: TObject);
begin
 PrintBarcodePanel.Visible := False;
end;

procedure TfShiftWealth.PrintBarcodecxButtonClick(Sender: TObject);
begin
 PrintBarcodePanel.Top:=Round(fMain.Height/3)-Round(PrintBarcodePanel.Height/2);
 PrintBarcodePanel.Left:=Round(fMain.Width/2)-Round(PrintBarcodePanel.Width/2);

 PrintBarcodePanel.Visible := True;
end;

procedure TfShiftWealth.RgNumbercxMEKeyPress(Sender: TObject;
  var Key: Char);
begin
 if RgNumbercxME.Text = '' then
  exit;

 if Key = #13 then
  begin
   RgNumbercxME.Text := Format('%.12d', [StrToInt(RgNumbercxME.Text)]);

   fMain.AnyCommandCDS.Close;
   fMain.AnyCommandCDS.CommandText :=
      'select d.printmark from partycertificate pc ' +
      'join drink d on pc.drinkid = d.id where pc.datefactory = ' + #39 + RgNumbercxME.Text + #39;
   fMain.AnyCommandCDS.Open;

   if fMain.AnyCommandCDS.RecordCount = 0 then
    begin
     MessageDLG('ТМЦ не найдена!', mtError, [mbOK], 0);
     RgNumbercxME.Clear;
     exit;
    end;

   if fMain.AnyCommandCDS.RecordCount = 1 then
    WealthNameLbl.Caption := fMain.AnyCommandCDS.FieldByName('PRINTMARK').AsString;
  end
end;

end.
