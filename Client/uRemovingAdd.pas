unit uRemovingAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uRemoving, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel,
  Menus, StdCtrls, cxButtons, ExtCtrls, cxSpinEdit, DB, DBClient,
  cxCurrencyEdit;

type
  TfRemovingAdd = class(TForm)
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    RemovingTypecxLCB: TcxLookupComboBox;
    StoragecxLCB: TcxLookupComboBox;
    InventorycxLCB: TcxLookupComboBox;
    BottomPanel: TPanel;
    ApplaycxButton: TcxButton;
    CancelcxButton: TcxButton;
    Bevel1: TBevel;
    DrinkIDcxME: TcxMaskEdit;
    DrinkNamecxLCB: TcxLookupComboBox;
    DrinkKindcxLCB: TcxLookupComboBox;
    RackcxLCB: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    Bevel2: TBevel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    CountUnitcxSE: TcxSpinEdit;
    cxLabel15: TcxLabel;
    CasheCountUnitcxME: TcxMaskEdit;
    ReserveCountUnitcxME: TcxMaskEdit;
    EvailableCountUnitcxME: TcxMaskEdit;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    CommentcxTE: TcxTextEdit;
    cxLabel12: TcxLabel;
    RemovingPricecxCE: TcxCurrencyEdit;
    RemovingPricecxLabel: TcxLabel;
    procedure ApplaycxButtonClick(Sender: TObject);
    procedure FormAfterCreate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StoragecxLCBPropertiesEditValueChanged(Sender: TObject);
    procedure DrinkIDcxMEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DrinkNamecxLCBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DrinkNamecxLCBPropertiesEditValueChanged(Sender: TObject);
    procedure DrinkKindcxLCBPropertiesEditValueChanged(Sender: TObject);
    procedure SetDefaultValue;
    procedure EnableEditor(flag:Boolean);
    procedure FormActivate(Sender: TObject);
    procedure RackcxLCBPropertiesCloseUp(Sender: TObject);
    procedure DrinkKindcxLCBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
   fRemovingLink:TfRemoving;
  end;

var
  fRemovingAdd: TfRemovingAdd;

implementation

uses uMain,DynamicProvider;

{$R *.dfm}

procedure TfRemovingAdd.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
 fMain.FloatToBcd(self);
 
 RetVal:=1;
 CompName:='RemovingAddType';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (FindDynamicClientDataSet(self,CDS,CompName+'CDS',true,fMain.SocketConnection,CompName+'DSP')
  and FindDynamicDataSource(self,DS,CompName+'DS',true,CDS) and RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   CDS.CommandText:=
    'select id, name from removingtype '+
    'where returntypeid=2 '+
    ' and isactual = 1 '+
    ' and ordernumber>=0 '+
    ' and terminalid = (select st.terminalid from storage st where st.id=:storageid) '+
    'order by ordernumber, id';
   RemovingTypecxLCB.Properties.ListSource:=DS;
   RemovingTypecxLCB.Properties.KeyFieldNames:='ID';
   RemovingTypecxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='RemovingAddInventory';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (FindDynamicClientDataSet(self,CDS,CompName+'CDS',true,fMain.SocketConnection,CompName+'DSP')
  and FindDynamicDataSource(self,DS,CompName+'DS',true,CDS) and RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   CDS.CommandText:=
    'select INVENTORYID, '+
    ' INVENTORYID||'+#39+
    ' "'+#39+'||datetostr(PRESENT,'+#39+'%d.%m.%Y'+#39+')||'+#39+
    '" '+#39+'||BASIS INVENTORYNAME '+
    'from BUYTRANS_REMOVINGADDINVENTORY(:storageid)';
   InventorycxLCB.Properties.ListSource:=DS;
   InventorycxLCB.Properties.KeyFieldNames:='INVENTORYID';
   InventorycxLCB.Properties.ListFieldNames:='INVENTORYNAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='RemovingAddDrink';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (FindDynamicClientDataSet(self,CDS,CompName+'CDS',true,fMain.SocketConnection,CompName+'DSP')
  and FindDynamicDataSource(self,DS,CompName+'DS',true,CDS) and RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   CDS.CommandText:=
    'select * from buytrans_removingadddrink(:storageid,:drinkid,:drinkname)';
   DrinkNamecxLCB.Properties.ListSource:=DS;
   DrinkNamecxLCB.Properties.KeyFieldNames:='DRINKID';
   DrinkNamecxLCB.Properties.ListFieldNames:='DRINKNAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='RemovingAddDrinkKind';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (FindDynamicClientDataSet(self,CDS,CompName+'CDS',true,fMain.SocketConnection,CompName+'DSP')
  and FindDynamicDataSource(self,DS,CompName+'DS',true,CDS) and RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   CDS.CommandText:=
    'select * from buytrans_removingadddrinkkind(:storageid,:drinkid,:drinkkindid)';
   DrinkKindcxLCB.Properties.ListSource:=DS;
   DrinkKindcxLCB.Properties.KeyFieldNames:='DRINKKINDID';
   DrinkKindcxLCB.Properties.ListFieldNames:='DRINKKINDID';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='RemovingAddRack';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (FindDynamicClientDataSet(self,CDS,CompName+'CDS',true,fMain.SocketConnection,CompName+'DSP')
  and FindDynamicDataSource(self,DS,CompName+'DS',true,CDS) and RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   CDS.CommandText:=
    'select * from buytrans_removingaddrack(:storageid,:drinkkindid)';
   RackcxLCB.Properties.ListSource:=DS;
   RackcxLCB.Properties.KeyFieldNames:='RACKID';
   RackcxLCB.Properties.ListFieldNames:='RACKNAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;
end;

procedure TfRemovingAdd.FormAfterCreate(Sender:TObject);
begin
 StoragecxLCB.Properties.ListSource:=fRemovingLink.StorageFiltercxLCB.Properties.ListSource;
 StoragecxLCB.Properties.KeyFieldNames:=fRemovingLink.StorageFiltercxLCB.Properties.KeyFieldNames;
 StoragecxLCB.Properties.ListFieldNames:=fRemovingLink.StorageFiltercxLCB.Properties.ListFieldNames;
end;

procedure TfRemovingAdd.FormActivate(Sender: TObject);
begin
 SetDefaultValue;
 if TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet).Active and (not (StoragecxLCB.EditValue=null)) then
  begin
   TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet).Params[0].AsInteger:=StoragecxLCB.EditValue;
   fMain.RefreshCDS(TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet));
  end;

 if fRemovingAdd.Tag=0 then
  begin
   EnableEditor(true);
   StoragecxLCB.SetFocus;
  end;
 if fRemovingAdd.Tag>0 then
  begin
   EnableEditor(false);
   if StoragecxLCB.EditValue=fRemovingLink.RemovingCDSSTORAGEID.AsInteger then
    StoragecxLCBPropertiesEditValueChanged(Sender)
   else
    StoragecxLCB.EditValue:=fRemovingLink.RemovingCDSSTORAGEID.AsInteger;
   RemovingTypecxLCB.EditValue:=fRemovingLink.RemovingCDSREMOVINGTYPEID.AsInteger;
   InventorycxLCB.EditValue:=fRemovingLink.RemovingCDSINVENTORYID.AsInteger;
   CommentcxTE.Text:=fRemovingLink.RemovingCDSCOMMENT.AsString;
   DrinkIDcxME.EditValue:=fRemovingLink.RemovingCDSDRINKID.AsInteger;
   DrinkNamecxLCB.Text:=fRemovingLink.RemovingCDSDRINKNAME.AsString;
   DrinkKindcxLCB.Text:=fRemovingLink.RemovingCDSDRINKINDID.AsString;
   RackcxLCB.Text:=fRemovingLink.RemovingCDSRACKNAME.AsString;
   CountUnitcxSE.EditValue:=fRemovingLink.RemovingCDSCOUNTUNIT.AsInteger;
   RemovingPricecxCE.EditValue:=fRemovingLink.RemovingCDSREMOVINGPRICE.Value;
  end;
end;

procedure TfRemovingAdd.StoragecxLCBPropertiesEditValueChanged(
  Sender: TObject);

begin
 if (StoragecxLCB.EditingValue=null) or (StoragecxLCB.EditValue<0) or (StoragecxLCB.Text='') then
  exit;

 TClientDataSet(RemovingTypecxLCB.Properties.ListSource.DataSet).Params[0].AsInteger:=StoragecxLCB.EditValue;
 TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet).Params[0].AsInteger:=StoragecxLCB.EditValue;

 fMain.RefreshCDS(TClientDataSet(RemovingTypecxLCB.Properties.ListSource.DataSet));
 fMain.RefreshCDS(TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet));

 SetDefaultValue;
 //RetailPricecxLabel.Enabled:=false; RetailPricecxCE.Enabled:=false;

 {if TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet).Locate('ID',StoragecxLCB.EditValue,[]) and
    (not TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet).FieldByName('distributionid').IsNull) then
  begin
   RetailPricecxLabel.Enabled:=true;
   RetailPricecxCE.Enabled:=true;
  end;}
end;

procedure TfRemovingAdd.EnableEditor(flag:Boolean);
begin
 StoragecxLCB.Enabled:=flag;
 RemovingTypecxLCB.Enabled:=true;
 InventorycxLCB.Enabled:=true;
 CommentcxTE.Enabled:=true;
 DrinkIDcxME.Enabled:=flag;
 DrinkNamecxLCB.Enabled:=flag;
 DrinkKindcxLCB.Enabled:=flag;
 RackcxLCB.Enabled:=flag;
 CountUnitcxSE.Enabled:=flag;
 RemovingPricecxCE.Enabled:=flag;
 RemovingPricecxLabel.Enabled:=flag;
end;

procedure TfRemovingAdd.SetDefaultValue;
begin
 DrinkIDcxME.Clear;
 DrinkNamecxLCB.Clear;
 TClientDataSet(DrinkNamecxLCB.Properties.ListSource.DataSet).Close;

 DrinkKindcxLCB.Clear;
 TClientDataSet(DrinkKindcxLCB.Properties.ListSource.DataSet).Close;

 RackcxLCB.Clear;
 TClientDataSet(RackcxLCB.Properties.ListSource.DataSet).Close;

 CasheCountUnitcxME.Clear;
 ReserveCountUnitcxME.Clear;
 EvailableCountUnitcxME.Clear;

 CountUnitcxSE.Value:=1;
 RemovingPricecxCE.Clear;
end;

procedure TfRemovingAdd.DrinkIDcxMEKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var CDS:TClientDataSet;
begin
 if Key=VK_RETURN then
  begin
   if (Sender as TcxMaskEdit).Text='' then
    exit;

   if (StoragecxLCB.EditValue=null) or (StoragecxLCB.EditValue<=0) or (StoragecxLCB.Text='') then
    begin
     MessageDLG('Не выбран склад.',mtInformation,[mbOK],0);
     exit;
    end;

   CDS:=TClientDataSet(DrinkNamecxLCB.Properties.ListSource.DataSet);
   CDS.Params[0].AsInteger:=StoragecxLCB.EditValue;
   CDS.Params[1].AsInteger:=StrToInt(DrinkIDcxME.Text);
   CDS.Params[2].Clear;
   try
    fMain.RefreshCDS(CDS);
   except
    ;
   end;

   if CDS.Active and (not CDS.IsEmpty) then
    DrinkNamecxLCB.Text:=CDS.FieldByName('DRINKNAME').AsString
   else
    MessageDLG('Товар с указанным кодом не найден.',mtInformation,[mbOK],0);
  end;

end;

procedure TfRemovingAdd.DrinkNamecxLCBKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var CDS:TClientDataSet;
begin
 if Key=VK_RETURN then
  begin
   if DrinkNamecxLCB.Text='' then
    exit;

   if (StoragecxLCB.EditValue=null) or (StoragecxLCB.EditValue<=0) or (StoragecxLCB.Text='') then
    begin
     MessageDLG('Не выбран склад.',mtInformation,[mbOK],0);
     exit;
    end;

   CDS:=TClientDataSet(DrinkNamecxLCB.Properties.ListSource.DataSet);
   CDS.Params[0].AsInteger:=StoragecxLCB.EditValue;
   CDS.Params[1].Clear;
   CDS.Params[2].AsString:=AnsiUpperCase(DrinkNamecxLCB.Text);
   try
    fMain.RefreshCDS(CDS);
   except
    ;
   end;
   if CDS.Active and (not CDS.IsEmpty) then
    DrinkNamecxLCB.Text:=CDS.FieldByName('DRINKNAME').AsString;
  end;

end;

procedure TfRemovingAdd.DrinkNamecxLCBPropertiesEditValueChanged(
  Sender: TObject);
var CDS:TClientDataSet;
begin
 CDS:=TClientDataSet(DrinkNamecxLCB.Properties.ListSource.DataSet);
 if (not CDS.Active) or CDS.IsEmpty or (DrinkNamecxLCB.EditValue=null) or (DrinkNamecxLCB.Text='') then
  exit;

 DrinkIDcxME.Text:=IntToStr(DrinkNamecxLCB.EditValue);
 try
  if CDS.Locate('DRINKID',DrinkNamecxLCB.EditValue,[]) then
   RemovingPricecxCE.EditValue:=CDS.FieldByName('REMOVINGPRICE').Value;

  CDS:=TClientDataSet(DrinkKindcxLCB.Properties.ListSource.DataSet);
  CDS.Params[0].AsInteger:=StoragecxLCB.EditValue;
  CDS.Params[1].AsInteger:=DrinkNamecxLCB.EditValue;
  CDS.Params[2].Clear;
  fMain.RefreshCDS(CDS);
  if CDS.RecordCount=1 then
   DrinkKindcxLCB.EditValue:=CDS.FieldByName('DRINKKINDID').AsInteger;
 except on E:Exception do
  MessageDlg('Ошибка: '+E.Message,mtError,[mbOk],0);
 end;
end;

procedure TfRemovingAdd.DrinkKindcxLCBPropertiesEditValueChanged(
  Sender: TObject);
var CDS:TClientDataSet;
begin
 if (DrinkKindcxLCB.EditValue=null) or (DrinkKindcxLCB.EditValue<=0) or (DrinkKindcxLCB.Text='') then
  exit;

 if (StoragecxLCB.EditValue=null) or (StoragecxLCB.EditValue<=0) or (StoragecxLCB.Text='') then
  begin
   MessageDLG('Не выбран склад.',mtInformation,[mbOK],0);
   exit;
  end;

 try
  CDS:=TClientDataSet(RackcxLCB.Properties.ListSource.DataSet);
  CDS.Params[0].AsInteger:=StoragecxLCB.EditValue;
  CDS.Params[1].AsInteger:=DrinkKindcxLCB.EditValue;
  fMain.RefreshCDS(CDS);
  if CDS.RecordCount=1 then
   RackcxLCB.EditValue:=CDS.FieldByName('RACKID').AsInteger;
  RackcxLCBPropertiesCloseUp(nil);
 except on E:Exception do
  MessageDlg('Ошибка: '+E.Message,mtError,[mbOk],0);
 end;
end;

procedure TfRemovingAdd.RackcxLCBPropertiesCloseUp(Sender: TObject);
begin
 if (DrinkKindcxLCB.EditValue=null) or (DrinkKindcxLCB.EditValue<=0) or (DrinkKindcxLCB.Text='') then
  exit;

 if (RackcxLCB.EditValue=null) or (RackcxLCB.EditValue<=0) or (RackcxLCB.Text='') then
  exit;

 with fMain.AnyCommandCDS do
  begin
   Close;
   CommandText:=
    'select sum(ch.bottlecount) bottlecount, sum(ch.bottlereserve) bottlereserve, '+
    ' riif(coalesce((select st.distributionid '+
    '               from storage st '+
    '               where st.id=ch.storageid),0),0,sum(bottlecount-bottlereserve)) evailablecountunit '+
    'from cashe ch '+
    'where ch.drinkkindid='+IntToStr(DrinkKindcxLCB.EditValue)+
    ' and ch.rackid='+IntToStr(RackcxLCB.EditValue)+
    ' group by ch.storageid';
   Open;

   CasheCountUnitcxME.Text:=FieldByName('bottlecount').AsString;
   ReserveCountUnitcxME.Text:=FieldByName('bottlereserve').AsString;
   EvailableCountUnitcxME.Text:=IntToStr(FieldByName('bottlecount').AsInteger-FieldByName('bottlereserve').AsInteger);
   CountUnitcxSE.Properties.MaxValue:=FieldByName('evailablecountunit').AsInteger;
 end;
end;

procedure TfRemovingAdd.DrinkKindcxLCBKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var CDS:TClientDataSet;
    DrinkKindID:integer;
begin
 if Key=VK_RETURN then
  begin
   if DrinkKindcxLCB.Text='' then
    exit;

   if (StoragecxLCB.EditValue=null) or (StoragecxLCB.EditValue<=0) or (StoragecxLCB.Text='') then
    begin
     MessageDLG('Не выбран склад.',mtInformation,[mbOK],0);
     exit;
    end;
   DrinkKindID:=StrToInt(DrinkKindcxLCB.Text);
   CDS:=TClientDataSet(DrinkKindcxLCB.Properties.ListSource.DataSet);
   CDS.Params[0].AsInteger:=StoragecxLCB.EditValue;
   CDS.Params[1].Clear;
   CDS.Params[2].AsInteger:=DrinkKindID;
   try
    fMain.RefreshCDS(CDS);
   except
    ;
   end;
   if CDS.Active and (not CDS.IsEmpty) then
    begin
     DrinkIDcxME.Text:=CDS.FieldByName('DRINKID').AsString;
     DrinkIDcxMEKeyDown(DrinkIDcxME,Key,Shift);
     DrinkKindcxLCB.EditValue:=DrinkKindID;

    end;
  end;
end;

procedure TfRemovingAdd.ApplaycxButtonClick(Sender: TObject);
var removingid:integer;
begin
 if (Tag=0) and ((StoragecxLCB.EditValue=null) or (StoragecxLCB.EditValue<=0) or (StoragecxLCB.Text='')) then
  begin
   MessageDLG('Не выбран склад.',mtInformation,[mbOK],0);
   exit;
  end;

 if (RemovingTypecxLCB.EditValue=null) or (RemovingTypecxLCB.EditValue<=0) or (RemovingTypecxLCB.Text='') then
  begin
   MessageDLG('Не выбран причина списания.',mtInformation,[mbOK],0);
   exit;
  end;

 if (InventorycxLCB.EditValue=null) or (InventorycxLCB.EditValue<=0) or (InventorycxLCB.Text='') then
  begin
   MessageDLG('Не выбран акт инвентаризации.',mtInformation,[mbOK],0);
   exit;
  end;

 if (Tag=0) and ((DrinkKindcxLCB.EditValue=null) or (DrinkKindcxLCB.EditValue<=0) or (DrinkKindcxLCB.Text='')) then
  begin
   MessageDLG('Не выбран код партии.',mtInformation,[mbOK],0);
   exit;
  end;

 if (Tag=0) and ((RackcxLCB.EditValue=null) or (RackcxLCB.EditValue<=0) or (RackcxLCB.Text='')) then
  begin
   MessageDLG('Не выбрана ячейка.',mtInformation,[mbOK],0);
   exit;
  end;

 with fMain do //запись возврата
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'select removingid from buytrans_removinginup( '+
    ' :removingid,'+
    ' :storageid, :removingtypeid, :inventoryid, :comment, '+
    ' :drinkkindid, :rackid, :countunit, :removingprice)';

   if fRemovingAdd.Tag=0 then InUpDelCDS.Params[0].Clear;
   if fRemovingAdd.Tag>0 then InUpDelCDS.Params[0].AsInteger:=fRemovingAdd.Tag;
   if fRemovingAdd.Tag<0 then exit;
   if StoragecxLCB.Enabled then InUpDelCDS.Params[1].AsInteger:=StoragecxLCB.EditValue
                           else InUpDelCDS.Params[1].Clear;
   if RemovingTypecxLCB.Enabled then InUpDelCDS.Params[2].AsInteger:=RemovingTypecxLCB.EditValue
                                else InUpDelCDS.Params[2].Clear;
   if InventorycxLCB.Enabled then InUpDelCDS.Params[3].AsInteger:=InventorycxLCB.EditValue
                             else InUpDelCDS.Params[3].Clear;
   if CommentcxTE.Enabled then InUpDelCDS.Params[4].AsString:=CommentcxTE.Text
                          else InUpDelCDS.Params[4].Clear;
   if DrinkKindcxLCB.Enabled then InUpDelCDS.Params[5].AsInteger:=DrinkKindcxLCB.EditValue
                             else InUpDelCDS.Params[5].Clear;
   if RackcxLCB.Enabled then InUpDelCDS.Params[6].AsInteger:=RackcxLCB.EditValue
                        else InUpDelCDS.Params[6].Clear;
   if CountUnitcxSE.Enabled then InUpDelCDS.Params[7].AsInteger:=CountUnitcxSE.Value
                            else InUpDelCDS.Params[7].Clear;
   if RemovingPricecxCE.Enabled then InUpDelCDS.Params[8].AsFloat:=RemovingPricecxCE.Value
                                else InUpDelCDS.Params[8].Clear;
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Open;
   removingid:=InUpDelCDS.Fields[0].AsInteger;

   SocketConnection.Appserver.DBCommit;
  except on E:Exception do
   begin
    MessageDlg('Ошибка: '+E.Message,mtError,[mbOk],0);
    SocketConnection.AppServer.DBRollBack;
    exit;
   end;
  end;//try..except

 if (fRemovingAdd.Tag=0) then
  begin
   fRemovingLink.StorageFiltercxLCBEnter(Sender);
   fRemovingLink.RemovingIDFiltercxME.Text:=IntToStr(removingid);
  end;

 fMain.RefreshCDS(fRemovingLink.RemovingCDS);
 Close;
end;

end.
