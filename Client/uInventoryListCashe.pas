unit uInventoryListCashe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit, cxCheckBox, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, Buttons, ExtCtrls, DB, DBClient,uInventoryList;

type
  TfInventoryListCashe = class(TForm)
    InspectorLabel: TLabel;
    StorageLabel: TLabel;
    RackLabel: TLabel;
    DrinkIDLabel: TLabel;
    DrinkNameLabel: TLabel;
    CountUnitLabel: TLabel;
    RemovCountUnitLabel: TLabel;
    MaxRetailPriceLabel: TLabel;
    RetailPriceLabel: TLabel;
    CasheCountUnitLabel: TLabel;
    ExistsRetailPriceLabel: TLabel;
    CasheCountUnitNameLabel: TLabel;
    ExistsRetailPriceNameLabel: TLabel;
    SerialNumberLabel: TLabel;
    ExciseLabel: TLabel;
    ProviderLabel: TLabel;
    InspectorcxLCB: TcxLookupComboBox;
    StoragecxLCB: TcxLookupComboBox;
    RackcxLCB: TcxLookupComboBox;
    DrinkIDcxME: TcxMaskEdit;
    DrinkNamecxLCB: TcxLookupComboBox;
    CountUnitcxME: TcxMaskEdit;
    RemovCountUnitcxME: TcxMaskEdit;
    CashecxCB: TcxCheckBox;
    MaxRetailPricecxLCB: TcxLookupComboBox;
    RetailPricecxCE: TcxCurrencyEdit;
    DefectPanel: TPanel;
    DefectCountUnitLabel: TLabel;
    DefectCommentLabel: TLabel;
    DefectTypeLabel: TLabel;
    DefectCountUnitcxME: TcxMaskEdit;
    DefectCommentcxTE: TcxTextEdit;
    DefectTypecxLCB: TcxLookupComboBox;
    SerialNumbercxLCB: TcxLookupComboBox;
    ExcisecxME: TcxMaskEdit;
    BottomPanel: TPanel;
    SaveBB: TBitBtn;
    CancelBB: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DrinkIDcxMEEnter(Sender: TObject);
    procedure DrinkIDcxMEKeyPress(Sender: TObject;
      var Key: Char);
    procedure InspectorcxLCBKeyPress(Sender: TObject;
      var Key: Char);
    procedure CountUnitcxMEEnter(Sender: TObject);
    procedure CountUnitcxMEKeyPress(Sender: TObject;
      var Key: Char);
    procedure RemovCountUnitcxMEEnter(Sender: TObject);
    procedure RemovCountUnitcxMEKeyPress(Sender: TObject;
      var Key: Char);
    procedure RetailPricecxCEEnter(Sender: TObject);
    procedure DrinkNamecxLCBPropertiesEditValueChanged(
      Sender: TObject);
    procedure SaveBBClick(Sender: TObject);
    procedure CashecxCBClick(Sender: TObject);
    procedure DefectCountUnitcxMEEnter(Sender: TObject);
    procedure EnableEditor(flag:boolean);
    procedure DrinkNamecxLCBKeyPress(Sender: TObject; var Key: Char);
    procedure MaxRetailPricecxLCBKeyPress(Sender: TObject; var Key: Char);
    procedure RetailPricecxCEKeyPress(Sender: TObject; var Key: Char);
    procedure MaxRetailPricecxLCBPropertiesEditValueChanged(
      Sender: TObject);
    procedure RemovCountUnitcxMEExit(Sender: TObject);
  private
    { Private declarations }
  public
    fInventoryListLink:TfInventoryList;
  end;

var
  fInventoryListCashe: TfInventoryListCashe;

implementation

uses uMain,DynamicProvider;

{$R *.dfm}

procedure TfInventoryListCashe.FormCreate(Sender: TObject);
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

 RetVal := 1;
 CompName := 'InventoryListCasheDrink';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (FindDynamicClientDataSet(Self, CDS, CompName + 'CDS', True, fMain.SocketConnection, CompName + 'DSP')
  and FindDynamicDataSource(Self, DS, CompName + 'DS', True, CDS) and RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   CDS.CommandText := 'select * from buytrans_inventorylistdrink(:inventorylistid,:drinkcode,:drinkname) order by countunitcashe desc';

   DrinkNamecxLCB.Properties.ListSource := DS;
   DrinkNamecxLCB.Properties.KeyFieldNames := 'DRINKID';
   DrinkNamecxLCB.Properties.ListFieldNames := 'PRINTMARK;BARCODE';
   DrinkNamecxLCB.Properties.ListColumns.Items[0].Width := 100;
   DrinkNamecxLCB.Properties.ListColumns.Items[1].Width := 30;
   CDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'InventoryListCasheDrinkRack';
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
    'select * from buytrans_inventorylistdrink_rck(:storageid,:rackid)';
   RackcxLCB.Properties.ListSource := DS;
   RackcxLCB.Properties.KeyFieldNames := 'ID';
   RackcxLCB.Properties.ListFieldNames := 'NAME';
   CDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'InventoryListCasheDrinkRackMRC';
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
    'select * from buytrans_inventorylistdrink_mrp(:drinkid)';

   MaxRetailPricecxLCB.Properties.ListSource := DS;
   MaxRetailPricecxLCB.Properties.KeyFieldNames := 'MAXRETAILPRICE';
   MaxRetailPricecxLCB.Properties.ListFieldNames := 'MAXRETAILPRICE';
   CDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='InventoryListCasheDrinkRackDF';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (FindDynamicClientDataSet(self, CDS,CompName+'CDS',true,fMain.SocketConnection,CompName + 'DSP')
  and FindDynamicDataSource(self,DS,CompName+'DS',true,CDS) and RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName, mtError,[mbOk],0);
   exit;
  end
 else
  begin
   CDS.CommandText:=
    'select * from buytrans_inventorylistdrink_df(:storageid,:drinkid)';
   SerialNumbercxLCB.Properties.ListSource := DS;
   SerialNumbercxLCB.Properties.KeyFieldNames := 'DRINKKINDID';
   SerialNumbercxLCB.Properties.ListFieldNames := 'OUTDATEFACTORY';
   CDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'InventoryDefectType';
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
    'select * from buytrans_inventorylistdrink_dt';

   DefectTypecxLCB.Properties.ListSource := DS;
   DefectTypecxLCB.Properties.KeyFieldNames := 'DEFECTTYPEID';
   DefectTypecxLCB.Properties.ListFieldNames := 'DEFECTTYPENAME';
   CDS.RemoteServer := fMain.SocketConnection;
  end;
end;

procedure TfInventoryListCashe.EnableEditor(flag:boolean);
begin
 DrinkIDcxME.Clear;
 DrinkNamecxLCB.Clear;
 MaxRetailPricecxLCB.Clear;
 CasheCountUnitLabel.Caption := '';
 ExistsRetailPriceLabel.Caption := '';
 DefectCountUnitcxME.Clear;
 DefectCommentcxTE.Clear;
 DefectTypecxLCB.Clear;
 RetailPricecxCE.Clear;
 ExcisecxME.Enabled := True;
 ExcisecxME.Clear;
end;

procedure TfInventoryListCashe.FormActivate(Sender: TObject);
var CDS:TClientDataSet;
begin
 if Self.Tag=0 then
  begin

   CDS := TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet);
   CDS.Params[0].AsInteger := fInventoryListLink.InventoryListCDSTERMINALID.AsInteger;
   fMain.RefreshCDS(CDS);

   fMain.RefreshCDS(TClientDataSet(InspectorcxLCB.Properties.ListSource.DataSet));
   fMain.RefreshCDS(TClientDataSet(DefectTypecxLCB.Properties.ListSource.DataSet));

   EnableEditor(true);
   StoragecxLCB.EditValue := fInventoryListLink.InventoryListCDSSTORAGEID.AsInteger;
   CDS.Locate('ID',StoragecxLCB.EditValue,[]);
   if fInventoryListLink.InventoryListCDSDISTRIBUTIONID.IsNull then DefectPanel.Visible := False
                                                               else DefectPanel.Visible := True;
   if InspectorcxLCB.EditValue = Null then
    InspectorcxLCB.SetFocus
   else
    begin
     InspectorcxLCB.Enabled := True;
     InspectorcxLCB.SetFocus;
    end;
  end;
end;

procedure TfInventoryListCashe.DrinkIDcxMEEnter(
  Sender: TObject);
begin
 DrinkIDcxME.Clear;
 RackcxLCB.Clear;
 CashecxCB.Checked := False;

 DrinkNamecxLCB.Clear;
 SerialNumbercxLCB.Clear;
 ExcisecxME.Clear;

 CountUnitcxME.Clear;
 CountUnitcxME.Enabled := True;
 RemovCountUnitcxME.Text := '0';
 MaxRetailPricecxLCB.Clear;
 RetailPricecxCE.Clear;

 DefectCountUnitcxME.Clear;
 DefectCommentcxTE.Clear;
 DefectTypecxLCB.Clear;
end;

procedure TfInventoryListCashe.DrinkIDcxMEKeyPress(
  Sender: TObject; var Key: Char);
var CDS: TClientDataSet;
begin
 if DrinkIDcxME.Text = '' then
  exit;

 if Key = #13 then
  try
   CDS := TClientDataSet(DrinkNamecxLCB.Properties.ListSource.DataSet);
   CDS.DisableControls;
   CDS.Close;
   CDS.Params[0].AsInteger:=fInventoryListLink.InventoryListCDSID.AsInteger;
   CDS.Params[1].AsString := DrinkIDcxME.Text;
   CDS.Params[2].Clear;
   CDS.Open;
   if CDS.RecordCount = 0 then
    begin
     MessageDLG('Введен неверный код товара ', mtError, [mbOK], 0);
     DrinkIDcxME.Clear;
     exit;
    end //if
   else
    if DrinkNamecxLCB.EditValue<>CDS.FieldByName('DRINKID').AsInteger then
     DrinkNamecxLCB.EditValue:=CDS.FieldByName('DRINKID').AsInteger
    else
     DrinkNamecxLCBPropertiesEditValueChanged(Sender);
  finally
   CDS.EnableControls;
  end;
end;

procedure TfInventoryListCashe.InspectorcxLCBKeyPress(
  Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  DrinkIDcxME.SetFocus;
end;

procedure TfInventoryListCashe.DrinkNamecxLCBPropertiesEditValueChanged(
  Sender: TObject);
var DrinkCDS,CDS: TClientDataSet;
    flagalc,flagscanallexcise,flagnotmodify:boolean;
    Key: Char;
begin
 Key:=#13;
 if (DrinkNamecxLCB.EditValue=null) or (DrinkNamecxLCB.EditValue=-1) then
   exit;

  if (StoragecxLCB.Text = '') then
   exit;

 DrinkCDS:= TClientDataSet(DrinkNamecxLCB.Properties.ListSource.DataSet);
 if DrinkCDS.Locate('DRINKID',DrinkNamecxLCB.EditValue,[]) then
  begin
   CasheCountUnitLabel.Caption := DrinkCDS.FieldByName('COUNTUNITCASHE').AsString;
   ExistsRetailPriceLabel.Caption := DrinkCDS.FieldByName('RETAILPRICE').AsString;
   RetailPricecxCE.Enabled := not DrinkCDS.FieldByName('RETAILPRICE').IsNull;
   RetailPricecxCE.Clear;
   //RetailPricecxCE.EditValue := DrinkCDS.FieldByName('RETAILPRICE').Value;
   ProviderLabel.Caption := DrinkCDS.FieldByName('PROVIDERNAME').AsString;
   ExcisecxME.Text:=DrinkCDS.FieldByName('EXCISECODE').AsString;
   flagalc:= DrinkCDS.FieldByName('FLAGALC').AsInteger<>0;
   flagscanallexcise:=DrinkCDS.FieldByName('FLAGSCANALLEXCISE').AsInteger<>0;
   flagnotmodify:=DrinkCDS.FieldByName('FLAGNOTMODIFY').AsInteger=0;

   try
    SerialNumbercxLCB.Clear;
    SerialNumbercxLCB.EditValue:=0;
    CDS := TClientDataSet(SerialNumbercxLCB.Properties.ListSource.DataSet);
    CDS.Close;
    CDS.Params[0].AsInteger := StoragecxLCB.EditValue;
    CDS.Params[1].AsInteger := DrinkNamecxLCB.EditValue;
    CDS.Open;
    if CDS.RecordCount=1 then
     SerialNumbercxLCB.EditValue := CDS.FieldByName('DRINKKINDID').AsInteger;
   // если розница и тип ревизии Мат. Ценности
    SerialNumbercxLCB.Enabled := ((DrinkCDS.FieldByName('FLAGRETAILSTORAGE').AsInteger=1) and (DrinkCDS.FieldByName('INVENTORYTYPEID').AsInteger=1));
   except on E:Exception do
    MessageDlg('Ошибка в'+ CDS.Name+':'+E.Message, mtError, [mbOk], 0);
   end;

   try
    CDS := TClientDataSet(MaxRetailPricecxLCB.Properties.ListSource.DataSet);
    MaxRetailPricecxLCB.Clear;
    MaxRetailPricecxLCB.EditValue:=null;
    if ((DrinkCDS.FieldByName('FLAGMAXRETAILPRICE').AsInteger = 1) and flagnotmodify) then
     begin
      MaxRetailPricecxLCB.Enabled := True;
      CDS.Close;
      CDS.Params[0].AsInteger := DrinkNamecxLCB.EditValue;
      CDS.Open;
      if CDS.RecordCount = 1 then
       MaxRetailPricecxLCB.EditValue := CDS.FieldByName('MAXRETAILPRICE').AsInteger;
     end
    else
     MaxRetailPricecxLCB.Enabled := False;
   except on E:Exception do
    MessageDlg('Ошибка в'+ CDS.Name+':'+E.Message, mtError, [mbOk], 0);
   end;

   try
    CDS := TClientDataSet(RackcxLCB.Properties.ListSource.DataSet);
    CDS.Close;
    CDS.Params[0].AsInteger := StoragecxLCB.EditValue;
    CDS.Params[1].AsInteger := DrinkNamecxLCB.EditValue;
    CDS.Open;
    if CDS.RecordCount > 0 then
     begin
      if CDS.RecordCount = 1 then
       RackcxLCB.EditValue := CDS.FieldByName('ID').AsInteger
      else
       RackcxLCB.EditValue := -1;
     end
    else
     RackcxLCB.EditValue:=0;
   except on E:Exception do
    MessageDlg('Ошибка в'+ CDS.Name+':'+E.Message, mtError, [mbOk], 0);
   end;

   if (flagscanallexcise) then
    begin
     CountUnitcxME.Text := '1';
     CountUnitcxME.Enabled := False;
    end
   else
    CountUnitcxME.Enabled := True;

   if (flagalc and flagnotmodify and (ExcisecxME.Text='')) then
    ExcisecxME.SetFocus
   else
    if CountUnitcxME.Enabled then
     CountUnitcxME.SetFocus
    else
     CountUnitcxMEKeyPress(Sender,Key);
  end;//if}
end;

procedure TfInventoryListCashe.CountUnitcxMEEnter(
  Sender: TObject);
begin
 CountUnitcxME.Clear;
end;

procedure TfInventoryListCashe.CountUnitcxMEKeyPress(
  Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  RetailPricecxCE.SetFocus;
end;

procedure TfInventoryListCashe.RemovCountUnitcxMEEnter(
  Sender: TObject);
begin
 RemovCountUnitcxME.Clear;
end;

procedure TfInventoryListCashe.RemovCountUnitcxMEKeyPress(
  Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   if RemovCountUnitcxME.Text = '' then
     RemovCountUnitcxME.Text := '0';

   if MaxRetailPricecxLCB.Enabled then
    MaxRetailPricecxLCB.SetFocus
   else
    if (RetailPricecxCE.Enabled and (RetailPricecxCE.EditValue=null)) then
     RetailPricecxCE.SetFocus
    else
     SaveBB.SetFocus;
  end;
end;

procedure TfInventoryListCashe.MaxRetailPricecxLCBKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
  begin
   if (RetailPricecxCE.Enabled and (RetailPricecxCE.Value = null)) then
    RetailPricecxCE.SetFocus
   else
    SaveBB.SetFocus;
  end;
end;

procedure TfInventoryListCashe.RetailPricecxCEEnter(
  Sender: TObject);
begin
 RetailPricecxCE.Clear;
end;

procedure TfInventoryListCashe.RetailPricecxCEKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
  SaveBB.SetFocus;
end;

procedure TfInventoryListCashe.CashecxCBClick(Sender: TObject);
begin
 if CashecxCB.Checked = True then
  begin
   RackcxLCB.Clear;
   RackcxLCB.EditValue := -1;
  end;
end;

procedure TfInventoryListCashe.DefectCountUnitcxMEEnter(
  Sender: TObject);
begin
 DefectCountUnitcxME.Clear;
end;

procedure TfInventoryListCashe.DrinkNamecxLCBKeyPress(Sender: TObject;
  var Key: Char);
var CDS: TClientDataSet;
begin
 if DrinkNamecxLCB.Text = '' then
  exit;

 if Key = #13 then
  try
   CDS := TClientDataSet(DrinkNamecxLCB.Properties.ListSource.DataSet);
   CDS.DisableControls;
   CDS.Close;
   CDS.Params[0].AsInteger:=fInventoryListLink.InventoryListCDSID.AsInteger;
   CDS.Params[1].Clear;
   CDS.Params[2].AsString:= AnsiUpperCase(DrinkNamecxLCB.Text);
   CDS.Open;
   if CDS.RecordCount = 0 then
    begin
     MessageDLG('Не найдено ни одного товара, удовлетворяющего заданным критериям поиска ', mtError, [mbOK], 0);
     exit;
    end//if
   else
    begin
     if DrinkNamecxLCB.EditValue<>CDS.FieldByName('DRINKID').AsInteger then
      DrinkNamecxLCB.EditValue:=CDS.FieldByName('DRINKID').AsInteger
     else
      DrinkNamecxLCBPropertiesEditValueChanged(Sender);
     DrinkIDcxME.EditValue := DrinkNamecxLCB.EditValue;
     DrinkNamecxLCB.Text:=CDS.FieldByName('PRINTMARK').AsString;
    end;//else
  finally
   CDS.EnableControls;
  end;
end;

procedure TfInventoryListCashe.SaveBBClick(Sender: TObject);
var maxretailprice, factretailprice, remreason, defectcount, deftypeid, drinkkindid,barcode: string;
    flagalc,flagscanallexcise,flagnotmodify,flagmaxretailprice:boolean;
    DrinkCDS: TClientDataSet;
    retailprice:double;
begin
 DrinkCDS:= TClientDataSet(DrinkNamecxLCB.Properties.ListSource.DataSet);
 if DrinkCDS.Locate('DRINKID',DrinkNamecxLCB.EditValue,[]) then
  begin
   flagalc:= DrinkCDS.FieldByName('FLAGALC').AsInteger<>0;
   flagscanallexcise:=DrinkCDS.FieldByName('FLAGSCANALLEXCISE').AsInteger<>0;
   flagnotmodify:=DrinkCDS.FieldByName('FLAGNOTMODIFY').AsInteger=0;
   flagmaxretailprice:=DrinkCDS.FieldByName('FLAGMAXRETAILPRICE').AsInteger<>0;
   retailprice:=DrinkCDS.FieldByName('RETAILPRICE').AsFloat;
  end
 else
  begin
   MessageDLG('Ошибка поиска товара.', mtError, [mbOK], 0);
   exit;
  end;

 if InspectorcxLCB.Text='' then
  begin
   MessageDLG('Не выбран ревизор.', mtError, [mbOK], 0);
   exit;
  end;

 if StoragecxLCB.Text='' then
  begin
   MessageDLG('Не выбран склад', mtError, [mbOK], 0);
   exit;
  end;
  
 if ((DrinkIDcxME.Text = '') or (DrinkNamecxLCB.Text = '')) then
  begin
   MessageDLG('Не выбран товар.', mtError, [mbOK], 0);
   exit;
  end;

  if ((MaxRetailPricecxLCB.EditValue=null) and flagnotmodify and flagmaxretailprice) then
  begin
   MessageDLG('Не выбрано МРЦ', mtError, [mbOK], 0);
   exit;
  end;

  if (flagalc and flagnotmodify and (ExcisecxME.Text = '')) then
   begin
    if MessageDLG('Не отсканирована акцизная марка, продолжить сохранение?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
     exit
   end;

 if (flagalc and flagnotmodify and (ExcisecxME.Text <> '') and (not (Length(ExcisecxME.Text) in [68,150]))) then
  begin
   MessageDLG('Неверная акцизная марка', mtError, [mbOK], 0);
   ExcisecxME.Clear;
   ExcisecxME.SetFocus;
   exit;
  end;

 if (RackcxLCB.EditValue < 0) and (RackcxLCB.Properties.ListSource.DataSet.RecordCount > 0) and (CashecxCB.Checked = False) then
  begin
   MessageDLG('Не выбрана ячейка.', mtError, [mbOK], 0);
   exit;
  end;

 if CountUnitcxME.Text = '' then
  begin
   MessageDLG('Не задано количество бутылок.', mtError, [mbOK], 0);
   exit;
  end;

 if CountUnitcxME.Text = '' then
  begin
   MessageDLG('Не задано количество бутылок под списание.', mtError, [mbOK], 0);
   exit;
  end;

 // если розница и товар группы Мат.Ценности
 if ((DrinkCDS.FieldByName('FLAGMC').AsInteger = 1) and
     (DrinkCDS.FieldByName('FLAGRETAILSTORAGE').AsInteger = 1) and
     (SerialNumbercxLCB.Text = '')) then
  begin
   MessageDLG('Не выбран серийный номер ТМЦ', mtError, [mbOK], 0);
   exit;
  end;

 if ((RetailPricecxCE.Value=0) and (not fInventoryListLink.InventoryListCDSDISTRIBUTIONID.IsNull)) then
  begin
   MessageDLG('Не задан ценник.', mtError, [mbOK], 0);
   exit;
  end;


 // Расхождение ценника и прайс-цены
 if (retailprice <> 0) then
  if ((RetailPricecxCE.Value/retailprice > 1.1) or (RetailPricecxCE.Value/retailprice < 0.9)) then
   if MessageDLG('Расхождение цены превышает 10%! Продолжить сохранение? ', mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
    begin
     RetailPricecxCE.SetFocus;
     exit;
    end;

 if SerialNumbercxLCB.Text = '' then
  drinkkindid := '0'
 else
  drinkkindid := SerialNumbercxLCB.EditValue;

 if MaxRetailPricecxLCB.Text = '' then
  maxretailprice := 'null'
 else
  maxretailprice := MaxRetailPricecxLCB.Text;

 if RetailPricecxCE.Text = '' then
  factretailprice := 'null'
 else
  factretailprice := FloatToStr(RetailPricecxCE.Value);

 if DefectCommentcxTE.Text = '' then
  remreason := 'null'
 else
  remreason := #39 + DefectCommentcxTE.Text + #39;

 if DefectCountUnitcxME.Text = '' then
  defectcount := 'null'
 else
  defectcount := DefectCountUnitcxME.Text;

 if DefectTypecxLCB.Text = '' then
  deftypeid := 'null'
 else
  deftypeid := IntToStr(DefectTypecxLCB.EditValue);

 if DrinkCDS.FieldByName('BARCODE').IsNull then
  barcode:='null'
 else
  barcode:=#39+DrinkCDS.FieldByName('BARCODE').AsString+#39;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText :=
      'execute procedure buytrans_inventorylistcasheadd('+fInventoryListLink.InventoryListCDSID.AsString+','
                    +IntToStr(DrinkNamecxLCB.EditValue)         + ','
                    + drinkkindid                                            + ','
                    + CountUnitcxME.Text                                     + ','
                    + RemovCountUnitcxME.Text                                + ','
                    + IntToStr(RackcxLCB.EditValue)                          + ','
                    + IntToStr(InspectorcxLCB.EditValue)                     + ','
                    + factretailprice                                        + ','
                    + maxretailprice                                         + ','
                    + barcode                                                + ','
                    + remreason                                              + ','
                    + defectcount                                            + ','
                    + deftypeid                                              + ','
                    +#39+ExcisecxME.Text+#39                                 + ')';
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
   fMain.RefreshCDS(fInventoryListLink.InventoryCasheCDS);
   fInventoryListLink.InventoryCasheCDS.Last;
   DrinkIDcxME.SetFocus;
  except on E:Exception do
   begin
    MessageDlg('Ошибка:'+E.Message+#10#13+InUpDelCDS.CommandText, mtError, [mbOk], 0);
    SocketConnection.AppServer.DBRollBack;
   end; //on E:Exception
  end; //try..except
end;


procedure TfInventoryListCashe.MaxRetailPricecxLCBPropertiesEditValueChanged(
  Sender: TObject);
var CDS:TClientDataSet;
begin
 CDS:= TClientDataSet(SerialNumbercxLCB.Properties.ListSource.DataSet);
 if CDS.Locate('MAXRETAILPRICE',MaxRetailPricecxLCB.EditValue,[]) then
  SerialNumbercxLCB.EditValue := CDS.FieldByName('DRINKKINDID').AsInteger
 else
  SerialNumbercxLCB.EditValue:=0;
end;

procedure TfInventoryListCashe.RemovCountUnitcxMEExit(Sender: TObject);
begin
 if RemovCountUnitcxME.Text = '' then
  RemovCountUnitcxME.Text := '0';
end;

end.


