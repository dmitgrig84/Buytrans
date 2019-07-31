unit uInventoryListAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxCheckBox, StdCtrls, ExtCtrls, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Buttons, cxMaskEdit,
  cxCalendar, cxTextEdit, DB, DBClient,uInventoryList;

type
  TfInventoryListAdd = class(TForm)
    NameLabel: TLabel;
    SinceLabel: TLabel;
    TillLabel: TLabel;
    TerminalLabel: TLabel;
    StorageLabel: TLabel;
    InspectorsLabel: TLabel;
    NamecxTE: TcxTextEdit;
    SincecxDE: TcxDateEdit;
    TillcxDE: TcxDateEdit;
    StoragecxLCB: TcxLookupComboBox;
    TerminalcxLCB: TcxLookupComboBox;
    PlanRG: TRadioGroup;
    CloseDBcxCB: TcxCheckBox;
    NotModifycxCB: TcxCheckBox;
    PartialcxCB: TcxCheckBox;
    AuditRG: TRadioGroup;
    InspectorcxLCB: TcxLookupComboBox;
    BottomPanel: TPanel;
    SaveBB: TBitBtn;
    CancelBB: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SaveBBClick(Sender: TObject);
    procedure NewInventoryTermcxLCBPropertiesEditValueChanged(
      Sender: TObject);
    procedure NotModifycxCBClick(Sender: TObject);
    procedure EnableEditor(flag:boolean);
  private
    { Private declarations }
  public
   fInventoryListLink:TfInventoryList;
  end;

var
  fInventoryListAdd: TfInventoryListAdd;

implementation

uses uMain,DynamicProvider;

{$R *.dfm}

procedure TfInventoryListAdd.FormCreate(Sender: TObject);
var RetVal: OleVariant;
    CompName: string;
    CDS: TClientDataSet;
    DS: TDataSource;
begin
 RetVal := 1;
 CompName := 'InventoryListInspectors';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (FindDynamicClientDataSet(Self, CDS, CompName + 'CDS', True, fMain.SocketConnection, CompName + 'DSP')
  and FindDynamicDataSource(Self, DS, CompName + 'DS', True, CDS) and RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   CDS.CommandText :='select * from buytrans_inventorylistemployee';

   InspectorcxLCB.Properties.ListSource := DS;
   InspectorcxLCB.Properties.KeyFieldNames := 'ID';
   InspectorcxLCB.Properties.ListFieldNames := 'NAME';
  end;

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


end;

procedure TfInventoryListAdd.EnableEditor(flag:boolean);
begin
 NamecxTE.Clear;
 NamecxTE.Enabled:=flag;

 InspectorcxLCB.Clear;
 InspectorcxLCB.Enabled:=flag;

 SincecxDE.Clear;
 SincecxDE.Enabled:=true;

 TillcxDE.Clear;
 TillcxDE.Enabled:=true;

 TerminalcxLCB.Clear;
 TerminalcxLCB.Enabled:=flag;

 StoragecxLCB.Clear;
 StoragecxLCB.Enabled:=flag;

 PlanRG.Enabled:= flag and (Pos('K', fMain.AdvancedGrant) > 0);
 AuditRG.Enabled:= flag and (Pos('K', fMain.AdvancedGrant) > 0);

 PartialcxCB.Enabled:= flag;
 CloseDBcxCB.Enabled:= flag and (Pos('K', fMain.AdvancedGrant) > 0);
 NotModifycxCB.Enabled:= flag;

 fMain.RefreshCDS(TClientDataSet(TerminalcxLCB.Properties.ListSource.DataSet));
 fMain.RefreshCDS(TClientDataSet(InspectorcxLCB.Properties.ListSource.DataSet));
end;

procedure TfInventoryListAdd.FormActivate(Sender: TObject);
begin
 if Self.Tag=0 then
  EnableEditor(true)
 else
  begin
   EnableEditor(false);
   NamecxTE.Text:= fInventoryListLink.InventoryListCDSNAME.AsString;
   InspectorcxLCB.EditValue:= fInventoryListLink.InventoryListCDSEMPLOYEEID.AsInteger;
   SincecxDE.Date:= fInventoryListLink.InventoryListCDSSINCEDATE.AsDateTime;
   TillcxDE.Date:= fInventoryListLink.InventoryListCDSTILLDATE.AsDateTime;
   TerminalcxLCB.EditValue:= fInventoryListLink.InventoryListCDSTERMINALID.AsInteger;
   StoragecxLCB.EditValue:= fInventoryListLink.InventoryListCDSSTORAGEID.AsInteger;
   PlanRG.ItemIndex:= fInventoryListLink.InventoryListCDSISOUTPLAN.AsInteger;
   AuditRG.ItemIndex:= fInventoryListLink.InventoryListCDSISAUDIT.AsInteger;
   PartialcxCB.EditValue:= fInventoryListLink.InventoryListCDSISPARTIAL.AsInteger;
   CloseDBcxCB.EditValue:= fInventoryListLink.InventoryListCDSISCLOSEDB.AsInteger;
   NotModifycxCB.EditValue:= fInventoryListLink.InventoryListCDSNOTMODIFY.AsInteger;
  end;
end;

procedure TfInventoryListAdd.SaveBBClick(Sender: TObject);
begin
 if CloseDBcxCB.Checked = True then
  if MessageDLG('Запланировать ревизию для закрытия магазина? ', mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
  exit;

 if InspectorcxLCB.Text = '' then
  begin
   MessageDLG('Не выбран ревизор', mtError, [mbOK], 0);
   exit;
  end;

 if NamecxTE.Text = '' then
  begin
   ShowMessage('Не заполнено название инвентаризации.');
   exit;
  end; //if

 if SincecxDE.Text = '' then
  begin
   ShowMessage('Не заполнена дата и время начала инвентаризации');
   exit;
  end; //if

 if TillcxDE.Text = '' then
  begin
   ShowMessage('Не заполнена дата и время окончания инвентаризации');
   exit;
  end; //if

 if TerminalcxLCB.Text='' then
  begin
   MessageDLG('Не выбран терминал', mtError, [mbOK], 0);
   exit;
  end;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText :=
    'select * from buytrans_inventorylistadd('+IntToStr(Self.Tag)+','
                  +#39+NamecxTE.Text+#39+','
                  +#39+DateTimeToStr(SincecxDE.Date)+#39+','
                  +#39+DateTimeToStr(TillcxDE.Date)+#39+', 0,'
                  +IntToStr(TerminalcxLCB.EditValue)+','
                  +IntToStr(StoragecxLCB.EditValue)+','
                  +IntToStr(InspectorcxLCB.EditValue)+',0,'
                  +IntToStr(CloseDBcxCB.EditValue)+','
                  +IntToStr(NotModifycxCB.EditValue)+','
                  +IntToStr(PartialcxCB.EditValue)+','
                  +IntToStr(PlanRG.ItemIndex)+','
                  +IntToStr(AuditRG.ItemIndex)+')';

   InUpDelCDS.Open;
   Self.Tag:=InUpDelCDS.Fields[0].AsInteger;
   SocketConnection.AppServer.DBCommit;
   Self.Close;
  except on E:Exception do
   begin
    MessageDLG('Ошибка: '+E.Message, mtError, [mbOK], 0);
    SocketConnection.AppServer.DBRollBack;
   end; //on E:Exception
  end; //try..except
end;

procedure TfInventoryListAdd.NewInventoryTermcxLCBPropertiesEditValueChanged(
  Sender: TObject);
begin
 if (TerminalcxLCB.EditValue <> null) then
  begin
   TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet).Params[0].AsInteger := TerminalcxLCB.EditValue;
   fMain.RefreshCDS(TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet));
  end;
end;

procedure TfInventoryListAdd.NotModifycxCBClick(
  Sender: TObject);
begin
 CloseDBcxCB.Checked := not NotModifycxCB.Checked;
 CloseDBcxCB.Enabled := (not NotModifycxCB.Checked) and (Pos('K', fMain.AdvancedGrant) > 0);
end;

end.
