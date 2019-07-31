unit uBuyAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, StdCtrls, Buttons, ExtCtrls, cxCheckBox, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, CurrEdit, Mask, ToolEdit, RxLookup, DB, DBClient, cxCalendar,
  cxCurrencyEdit,uBuy, cxHint;

type
  TfBuyAdd = class(TForm)
    BuyAddButtonPanel: TPanel;
    NewBuyTypeLabel: TLabel;
    NewbuyStorageLabel: TLabel;
    InvInfoLabel: TLabel;
    InventorycxLCB: TcxLookupComboBox;
    StoragecxLCB: TcxLookupComboBox;
    BuyTypecxLCB: TcxLookupComboBox;
    Bevel1: TBevel;
    NewBuyNoLabel: TLabel;
    NewBuyNumberCFLabel: TLabel;
    ToDayLabel: TLabel;
    NewBuyDateLabel: TLabel;
    NewBuySumPriceLabel: TLabel;
    NewBuySumNDSLabel: TLabel;
    Bevel8: TBevel;
    Label15: TLabel;
    Label22: TLabel;
    ContractorNamecxLCB: TcxLookupComboBox;
    TradeEmployeecxLCB: TcxLookupComboBox;
    Label23: TLabel;
    Label24: TLabel;
    DistributioncxLCB: TcxLookupComboBox;
    Label29: TLabel;
    CarriercxLCB: TcxLookupComboBox;
    Label28: TLabel;
    CarMarkcxTE: TcxTextEdit;
    Label30: TLabel;
    LicensePlatecxTE: TcxMaskEdit;
    Bevel6: TBevel;
    InBuycxCB: TcxCheckBox;
    CorrectioncxCB: TcxCheckBox;
    ApplayBB: TBitBtn;
    CancelBB: TBitBtn;
    ContractorIDcxME: TcxMaskEdit;
    NumberDoccxTE: TcxTextEdit;
    NumberCFcxTE: TcxTextEdit;
    InputDatecxDE: TcxDateEdit;
    WhenInsertcxDE: TcxDateEdit;
    SumPricecxCE: TcxCurrencyEdit;
    SumNDScxCE: TcxCurrencyEdit;
    Label1: TLabel;
    DistributionIDcxME: TcxMaskEdit;
    Label2: TLabel;
    BankAccountME: TcxMaskEdit;
    cxHintStyleController: TcxHintStyleController;
    procedure FormCreate(Sender: TObject);
    procedure CancelBBClick(Sender: TObject);
    procedure BuyTypecxLCBPropertiesEditValueChanged(Sender: TObject);
    procedure StoragecxLCBPropertiesEditValueChanged(Sender: TObject);
    procedure ContractorIDcxMEKeyPress(Sender: TObject; var Key: Char);
    procedure ContractorIDcxMEEnter(Sender: TObject);
    procedure BuyAddContractorBeforOpenCDS(DataSet: TDataSet);
    procedure ContractorNamecxLCBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ContractorNamecxLCBPropertiesEditValueChanged(
      Sender: TObject);
    procedure TradeEmployeecxLCBPropertiesEditValueChanged(
      Sender: TObject);
    procedure DistributioncxLCBPropertiesEditValueChanged(Sender: TObject);
    procedure NumberDoccxTEKeyPress(Sender: TObject; var Key: Char);
    procedure NumberDoccxTEExit(Sender: TObject);
    procedure ApplayBBClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DistributionIDcxMEEnter(Sender: TObject);
    procedure DistributionIDcxMEKeyPress(Sender: TObject; var Key: Char);
    procedure DistributioncxLCBMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
   fBuyLink:TfBuy;
  end;

var
  fBuyAdd: TfBuyAdd;

implementation

uses DynamicProvider, uMain;

{$R *.dfm}

procedure TfBuyAdd.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
 RetVal:=1;
 CompName:='BuyAddBuyType';
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
    'select bt.* from buytype bt '+
    'where bt.isactive=1 '+
    'order by bt.id';
   BuyTypecxLCB.Properties.ListSource:=DS;
   BuyTypecxLCB.Properties.KeyFieldNames:='ID';
   BuyTypecxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
   fMain.RefreshCDS(CDS);
  end;

 RetVal:=1;
 CompName:='BuyAddStorage';
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
    'select  id, name from storage st '+
    'where st.isactive=1 '+
    ' and st.terminalid in (select ett.terminalid from employeetoterminal ett where ett.login=user) '+
    'order by name';
   StoragecxLCB.Properties.ListSource:=DS;
   StoragecxLCB.Properties.KeyFieldNames:='ID';
   StoragecxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
   fMain.RefreshCDS(CDS);
  end;

 RetVal:=1;
 CompName:='BuyAddInventory';
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
    'select i.id, i.present,i.basis '+
    'from inventory i '+
    'where i.make<>1 '+
    ' and i.storageid = (select parentstorageid from storage where id= :storageid) '+
    'order by i.id, i.present';
   InventorycxLCB.Properties.ListSource:=DS;
   InventorycxLCB.Properties.KeyFieldNames:='ID';
   InventorycxLCB.Properties.ListFieldNames:='ID;PRESENT;BASIS';
   InventorycxLCB.Properties.ListFieldIndex:=2;
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='BuyAddContractor';
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
    'select firmid, firmname '+
    'from buytrans_buyaddcontractor(:contractorid,:contractorname,:isprovider,:buynumberdoc) '+
    'order by firmname';
   ContractorNamecxLCB.Properties.ListSource:=DS;
   ContractorNamecxLCB.Properties.KeyFieldNames:='FIRMID';
   ContractorNamecxLCB.Properties.ListFieldNames:='FIRMNAME';
   CDS.RemoteServer:=fMain.SocketConnection;
   CDS.BeforeOpen:=BuyAddContractorBeforOpenCDS;
  end;

 RetVal:=1;
 CompName:='BuyAddTradeEmployee';
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
    'select te.id, te.name, te.citypartid '+
    'from tradeemployee te '+
    'join firmtradeemployee fte on fte.tradeemployeeid = te.id and fte.enddate is null '+
    'join employeetote ett on ett.tradeemployeeid = te.id '+
    'where ((fte.firmid = :contractorid) or (fte.distributionid = :dbid)) '+
    ' and ett.login like user '+
    'group by te.id, te.name,te.citypartid';
   TradeEmployeecxLCB.Properties.ListSource:=DS;
   TradeEmployeecxLCB.Properties.KeyFieldNames:='ID';
   TradeEmployeecxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='BuyAddDistribution';
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
    'select * from buytrans_buyadddistribution_1(:contractorid,:tradeemployeeid,:dbid)';
   DistributioncxLCB.Properties.ListSource:=DS;
   DistributioncxLCB.Properties.KeyFieldNames:='DISTRIBUTIONID';
   DistributioncxLCB.Properties.ListFieldNames:='DISTRIBUTIONADDRESS';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='BuyAddCarrier';
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
    'select cr.id carrierid, cr.name, cr.inn, cr.kpp '+
    'from carrier cr '+
    'join organization og on og.id=cr.organizationid '+
    'where (og.id in (select dp.organizationid from department dp where dp.id=:departmentid)) '+
    ' and og.id in (select dp.organizationid from employeetodepartment etd '+
    '               join department dp on dp.id=etd.departmentid '+
    '               where etd.login=user) '+
    'order by cr.name';
   CarriercxLCB.Properties.ListSource:=DS;
   CarriercxLCB.Properties.KeyFieldNames:='CARRIERID';
   CarriercxLCB.Properties.ListFieldNames:='NAME;INN;KPP';
   CarriercxLCB.Properties.ListFieldIndex:=0;
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 InputDatecxDE.Date:=Date;
 WhenInsertcxDE.Date:=Date;
end;

procedure TfBuyAdd.CancelBBClick(Sender: TObject);
begin
 Close;
end;

procedure TfBuyAdd.BuyAddContractorBeforOpenCDS(DataSet: TDataSet);
var CDS:TClientDataSet;
 i:integer;
begin
 CDS:=TClientDataSet(DataSet);
 if (Round(BuyTypecxLCB.EditValue) in [1,2]) then
  begin
   for i:=0 to CDS.Params.Count-1 do
    CDS.Params[i].Clear;
   if ContractorIDcxME.Text<>'' then
    CDS.Params[0].AsInteger:=StrToInt(ContractorIDcxME.Text);
   if ContractorNamecxLCB.Text<>'' then
    CDS.Params[1].AsString:=AnsiUpperCase(ContractorNamecxLCB.Text);
   CDS.Params[2].AsSmallInt:=1;
  end;

 if (Round(BuyTypecxLCB.EditValue) in [3]) then
  begin
   for i:=0 to CDS.Params.Count-1 do
    CDS.Params[i].Clear;

   CDS.Params[0].AsInteger:=StrToInt(ContractorIDcxME.Text);
   CDS.Params[2].AsSmallInt:=1;
  end;

 if (Round(BuyTypecxLCB.EditValue) in [5,9]) then
  begin
   for i:=0 to CDS.Params.Count-1 do
    CDS.Params[i].Clear;

   if NumberDoccxTE.Text<>'' then
    CDS.Params[3].AsString:=NumberDoccxTE.Text;
   CDS.Params[2].AsSmallInt:=1;
  end;

 if (Round(BuyTypecxLCB.EditValue) in [7,8]) then
  begin
   for i:=0 to CDS.Params.Count-1 do
    CDS.Params[i].Clear;

   if ContractorIDcxME.Text<>'' then
    CDS.Params[0].AsInteger:=StrToInt(ContractorIDcxME.Text);
   if ContractorNamecxLCB.Text<>'' then
    CDS.Params[1].AsString:=AnsiUpperCase(ContractorNamecxLCB.Text);
   CDS.Params[2].AsSmallInt:=0;
  end;
end;

procedure TfBuyAdd.BuyTypecxLCBPropertiesEditValueChanged(Sender: TObject);
var CDS:TClientDataSet;
    Key:char;
begin
 ContractorIDcxME.Enabled:=true;
 ContractorNamecxLCB.Enabled:=true;
 TradeEmployeecxLCB.Enabled:=true;
 DistributioncxLCB.Enabled:=true;
 CarriercxLCB.Enabled:=false;
 CarMarkcxTE.Enabled:=false;
 LicensePlatecxTE.Enabled:=false;

 ContractorIDcxME.Clear;
 ContractorNamecxLCB.Properties.ListSource.DataSet.Close;
 TradeEmployeecxLCB.Properties.ListSource.DataSet.Close;
 DistributioncxLCB.Properties.ListSource.DataSet.Close;
 ContractorNamecxLCB.EditValue:=-1;
 DistributioncxLCB.EditValue:=-1;

 CarriercxLCB.Properties.ListSource.DataSet.Close;
 CarriercxLCB.EditValue:=-1;
 CarMarkcxTE.Clear;
 LicensePlatecxTE.Clear;

 InBuycxCB.EditValue :=0;
 InBuycxCB.Enabled := False;
 CorrectioncxCB.Enabled := False;
 BankAccountME.Enabled := False;

 InventorycxLCB.Enabled:=False;
 InventorycxLCB.Properties.ListSource.DataSet.Close;
 InvInfoLabel.Enabled:=False;

 CDS:=TClientDataSet(BuyTypecxLCB.Properties.ListSource.DataSet);
 if not CDS.Locate('ID',BuyTypecxLCB.EditValue,[]) then
  exit;

 case CDS.FieldByName('TICKEDFORM').AsInteger of
  1:begin
     if (BuyTypecxLCB.EditValue=1) then
      begin
       CarriercxLCB.Enabled:=true;
       CarMarkcxTE.Enabled:=true;
       LicensePlatecxTE.Enabled:=true;
       CorrectioncxCB.Enabled := True;
       BankAccountME.Enabled := true;
      end;
     InBuycxCB.Enabled := (Round(BuyTypecxLCB.EditValue) in [5,9]);
    end;
  2:begin
     if (not ((BuyTypecxLCB.EditValue=2) or (BuyTypecxLCB.EditValue=8))) then
      begin
       InventorycxLCB.Enabled:=True;
       InvInfoLabel.Enabled:=True;
       StoragecxLCBPropertiesEditValueChanged(self);
       Key:=#13;
       ContractorIDcxME.Text:='0';
       ContractorIDcxMEKeyPress(self,Key);
       ContractorIDcxME.Enabled:=false;
       ContractorNamecxLCB.Enabled:=false;
       TradeEmployeecxLCB.Enabled:=true;
       DistributioncxLCB.Enabled:=true;
      end;
    end;
  end;//case

  if CDS.FieldByName('TYPECURRENCY').AsInteger>0 then
   begin
    SumPricecxCE.Properties.MaxValue:=High(Integer);
    SumPricecxCE.Properties.MinValue:=0;
    SumNDScxCE.Properties.MaxValue:=High(Integer);
    SumNDScxCE.Properties.MinValue:=0;
   end
  else
   begin
    SumPricecxCE.Properties.MaxValue:=0;
    SumPricecxCE.Properties.MinValue:=Low(Integer);
    SumNDScxCE.Properties.MaxValue:=0;
    SumNDScxCE.Properties.MinValue:=Low(Integer);
   end;
end;

procedure TfBuyAdd.StoragecxLCBPropertiesEditValueChanged(Sender: TObject);
var CDS:TClientDataSet;
begin
 CDS:=TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet);
 if (StoragecxLCB.EditValue<>null) and (TClientDataSet(BuyTypecxLCB.Properties.ListSource.DataSet).FieldByName('TICKEDFORM').AsInteger=2) then
  begin
   CDS.Params[0].AsInteger:=StoragecxLCB.EditValue;
   fMain.RefreshCDS(CDS);
  end;
end;

procedure TfBuyAdd.ContractorIDcxMEKeyPress(Sender: TObject;
  var Key: Char);
var CDS:TClientDataSet;
begin
 if ContractorIDcxME.Text='' then
  exit;

 if Key<>#13 then
  exit;

 if Key=#13 then
  begin
   CDS:=TClientDataSet(ContractorNamecxLCB.Properties.ListSource.DataSet);
   fMain.RefreshCDS(CDS);

   if CDS.RecordCount=0 then
    begin
     MessageDLG('Контрагент с таким кодом отсутствует',mtError,[mbOK],0);
     ContractorIDcxME.Clear;
     exit;
    end //if
   else
    begin
     ContractorNamecxLCB.EditValue:=CDS.FieldByName('FIRMID').AsInteger;
     ContractorIDcxME.OnExit:=nil;
    end;//else
  end;//if Key=#13 then
end;

procedure TfBuyAdd.ContractorIDcxMEEnter(Sender: TObject);
begin
 ContractorIDcxME.Clear;
 ContractorNamecxLCB.Clear;
end;

procedure TfBuyAdd.ContractorNamecxLCBKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var CDS:TClientDataSet;
begin
 if ContractorNamecxLCB.text='' then
  exit;
 if Key=VK_RETURN then
  begin
   CDS:=TClientDataSet(ContractorNamecxLCB.Properties.ListSource.DataSet);
   fMain.RefreshCDS(CDS);

   if CDS.RecordCount=0 then
    begin
     MessageDLG('Не найдено ни одного контрагента, удовлетворяющего заданным критериям поиска ',mtError,[mbOK],0);
     exit;
    end//if
   else
    begin
     ContractorNamecxLCB.EditValue:=CDS.FieldByName('FIRMID').AsInteger;
     ContractorNamecxLCB.Text:=CDS.FieldByName('FIRMNAME').AsString;
     ContractorNamecxLCB.OnExit:=nil;
     try
      DistributioncxLCB.SetFocus;
     finally
      ;
     end;//try..finally
    end;//else
 end;//if}
end;

procedure TfBuyAdd.ContractorNamecxLCBPropertiesEditValueChanged(
  Sender: TObject);
begin
  if (ContractorNamecxLCB.Text='') or (ContractorNamecxLCB.EditValue=-1) then
   exit;

  ContractorIDcxME.EditValue:=ContractorNamecxLCB.EditValue;

  try
   DistributioncxLCB.EditValue:=-1;
   TClientDataSet(TradeEmployeecxLCB.Properties.ListSource.DataSet).Close;
   TClientDataSet(TradeEmployeecxLCB.Properties.ListSource.DataSet).Params[0].AsInteger:=ContractorIDcxME.EditValue;
   TClientDataSet(TradeEmployeecxLCB.Properties.ListSource.DataSet).Open;

   if TClientDataSet(TradeEmployeecxLCB.Properties.ListSource.DataSet).RecordCount>0 then
    begin
     TradeEmployeecxLCB.EditValue:=TClientDataSet(TradeEmployeecxLCB.Properties.ListSource.DataSet).FieldByName('ID').AsInteger;
     TradeEmployeecxLCBPropertiesEditValueChanged(self);
    end;
  except
   ;
  end;//try..except}
end;

procedure TfBuyAdd.TradeEmployeecxLCBPropertiesEditValueChanged(
  Sender: TObject);
var CDS:TClientDataSet;
begin
 CDS:=TClientDataSet(DistributioncxLCB.Properties.ListSource.DataSet);
 CDS.Close;
 CDS.Params[0].AsInteger:=ContractorNamecxLCB.EditValue;
 CDS.Params[1].AsInteger:=TradeEmployeecxLCB.EditValue;
 CDS.Open;

 if CDS.RecordCount=1 then
  DistributioncxLCB.EditValue:=CDS.FieldByName('DISTRIBUTIONID').AsInteger;
end;

procedure TfBuyAdd.DistributioncxLCBPropertiesEditValueChanged(
  Sender: TObject);
var CDS:TClientDataSet;
begin
 if (BuyTypecxLCB.EditValue=1) then
  begin
   CDS:=TClientDataSet(DistributioncxLCB.Properties.ListSource.DataSet);
   if CDS.Active and (CDS.FieldByName('DISTRIBUTIONID').AsInteger>0) and (CDS.Locate('DISTRIBUTIONID',DistributioncxLCB.EditValue,[])) then
    TClientDataSet(CarriercxLCB.Properties.ListSource.DataSet).Params[0].AsInteger:=
     CDS.FieldByName('DEPARTMENTID').AsInteger;
    fMain.RefreshCDS(TClientDataSet(CarriercxLCB.Properties.ListSource.DataSet));
  end;
  CDS:=TClientDataSet(DistributioncxLCB.Properties.ListSource.DataSet);
  if CDS.Active and (CDS.FieldByName('DISTRIBUTIONID').AsInteger>0) and (CDS.Locate('DISTRIBUTIONID',DistributioncxLCB.EditValue,[])) then
   DistributionIDcxME.Text := CDS.FieldByName('DISTRIBUTIONID').AsString;

  DistributioncxLCB.Hint := DistributioncxLCB.Text;
end;

procedure TfBuyAdd.NumberDoccxTEKeyPress(Sender: TObject; var Key: Char);
var CDS:TClientDataSet;
begin
 if Key='' then
  exit;
  
 if Trim(NumberDoccxTE.Text)='' then
  exit;

 if (Key=#13) and (Round(BuyTypecxLCB.EditValue) in [5,9]) then
  begin
   CDS:=TClientDataSet(ContractorNamecxLCB.Properties.ListSource.DataSet);
   fMain.RefreshCDS(CDS);
   if CDS.IsEmpty then
    begin
     MessageDlg('Нет ни одного поставщик с данным № приходной накладной',mtError,[mbOk],0);
     exit;
    end;
   ContractorIDcxME.EditValue:=CDS.FieldByName('FIRMID').AsInteger;
   ContractorIDcxMEKeyPress(nil,Key);
  end;

end;

procedure TfBuyAdd.NumberDoccxTEExit(Sender: TObject);
 Var Key: Char;
begin
 Key:=#13;
 NumberDoccxTEKeyPress(nil,Key);

end;

procedure TfBuyAdd.ApplayBBClick(Sender: TObject);
var InventoryId,BuyID,CarrierID,BankAccount:string;
begin
 if BuyTypecxLCB.Text='' then
  begin
   MessageDlg('Не выбран тип приходной накладной.',mtError,[mbOk],0);
   exit;
  end;//if

 if StoragecxLCB.Text='' then
  begin
   MessageDlg('Не выбран склад.',mtError,[mbOk],0);
   exit;
  end;//if

 if InventorycxLCB.Enabled and (InventorycxLCB.Text='') then
  begin
   MessageDlg('Не выбран документ инвентаризационной описи-акта, '+
              'на котором основано данное поступление. Выберете нужный '+
              'документ из списка.',mtConfirmation,[mbOk],0);
   exit;
  end;

 if (NumberDoccxTE.Text='') then
  begin
   MessageDlg('Не введен номер накладной.',mtError,[mbOk],0);
   exit;
  end;//if

 if NumberCFcxTE.Text='' then
  begin
   MessageDlg('Не введен номер счет-фактуры.',mtError,[mbOk],0);
   exit;
  end;

 if SumPricecxCE.Text='' then
  begin
   MessageDlg('Не задана сумма товара без НДС.',mtError,[mbOk],0);
   exit;
  end;

 if DistributioncxLCB.Text='' then
  begin
   MessageDlg('Не выбран поставщик, либо его адрес.',mtError,[mbOk],0);
   exit;
  end;//if

 if ((InventorycxLCB.Enabled) and (InventorycxLCB.Text<>'')) then
  InventoryId:=InventorycxLCB.EditValue
 else
  InventoryId:='null';

 if ((CarriercxLCB.Enabled) and (CarriercxLCB.Text<>'')) then
  CarrierID:=CarriercxLCB.EditValue
 else
  CarrierID:='null';

 if ((BankAccountME.Enabled) and (BankAccountME.Text<>'')) then
  BankAccount:=BankAccountME.Text
 else
  BankAccount:='null';

 if (Tag<=0) then
  BuyID:='null'
 else
  BuyID:=IntToStr(Tag);

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'select buyid from buytrans_buyinup('+
     BuyID+','+
     IntToStr(BuyTypecxLCB.EditValue)+','+
     #39+DateToStr(InputDatecxDE.Date)+#39+','+
     IntToStr(StoragecxLCB.EditValue)+','+
     FloatToStr(SumPricecxCE.Value)+','+
     FloatToStr(SumNDScxCE.Value)+','+
     #39+Trim(NumberDoccxTE.Text)+#39+','+
     #39+Trim(NumberCFcxTE.Text)+#39+','+
     InventoryId+','+
     IntToStr(DistributioncxLCB.EditValue)+','+
     #39+DateToStr(WhenInsertcxDE.Date)+#39+','+
     CarrierID+','+
     #39+CarMarkcxTE.Text+#39+','+
     #39+LicensePlatecxTE.Text+#39+','+
     IntToStr(InBuycxCB.EditValue)+','+
     IntToStr(CorrectioncxCB.EditValue)+','+
     BankAccount + ')';
   InUpDelCDS.Open;
   buyid:=InUpDelCDS.Fields[0].AsString;
   SocketConnection.AppServer.DBCommit;
  except on E: Exception do
   begin
    SocketConnection.AppServer.DBRollback;
    MessageDlg('Ошибка добавления накладной!' + #13+ ' ' + E.Message,mtError,[mbOk],0);
    exit;
   end; //on
  end; //try..except

 with fBuyLink do
  begin
   InputDateFiltercxDE.Date:= InputDatecxDE.Date;
   DirectorViewFiltercxICBPropertiesCloseUp(self);
   BuyCDS.Locate('ID',buyid,[]);
  end;

 BuyTypecxLCB.EditValue:=-1;
 NumberDoccxTE.Clear;
 NumberCFcxTE.Clear;
 InputDatecxDE.Date:=Date;
 WhenInsertcxDE.Date:=Date;
 SumPricecxCE.Clear;
 SumNDScxCE.Clear;
 CancelBBClick(self);
end;

procedure TfBuyAdd.FormActivate(Sender: TObject);
var Key:char;
begin
 if Tag>0 then
  with fBuyLink do
   try
    BuyTypecxLCB.EditValue:=BuyCDSBUYTYPEID.AsInteger;
    StoragecxLCB.EditValue:=BuyCDSSTORAGEID.AsInteger;
    if InventorycxLCB.Enabled then
     InventorycxLCB.EditValue:=BuyCDSINVENTORYID.AsInteger
    else
     InventorycxLCB.EditValue:=-1;

    NumberDoccxTE.Text:=BuyCDSINPUTNUMBER.AsString;
    NumberCFcxTE.Text:=BuyCDSNUMBERCF.AsString;
    InputDatecxDE.Date:=BuyCDSINPUTDATE.AsDateTime;
    WhenInsertcxDE.Date:=BuyCDSWHENINSERT.AsDateTime;
    SumPricecxCE.Value:=BuyCDSPROVIDERPRICESUM.AsFloat;
    SumNDScxCE.Value:=BuyCDSPROVIDERNDSSUM.AsFloat;
    ContractorIDcxME.EditValue:=BuyCDSFIRMID.AsInteger;
    Key:=#13;
    try ContractorIDcxMEKeyPress(nil,Key); except ; end;
    try ContractorNamecxLCBPropertiesEditValueChanged(nil); except ; end;
    TradeEmployeecxLCB.EditValue:=BuyCDSTRADEEMPLOYEEID.AsInteger;
    try TradeEmployeecxLCBPropertiesEditValueChanged(nil); except ; end;
    DistributioncxLCB.EditValue:=BuyCDSDISTRIBUTIONID.AsInteger;

    CarriercxLCB.EditValue:=BuyCDSCARRIERID.AsInteger;
    CarMarkcxTE.Text:=BuyCDSCARRIERCARMARK.AsString;
    LicensePlatecxTE.Text:=BuyCDSCARRIERCARLICENSEPLATE.AsString;

    InBuycxCB.EditValue := BuyCDSINBUY.AsInteger;
    CorrectioncxCB.EditValue := BuyCDSCORRECTION.AsInteger;
    BankAccountME.Text := BuyCDSBANKACCOUNT.AsString;

   except on E:Exception do
    MessageDlg(E.Message,mtError,[mbOk],0);
   end;
end;

procedure TfBuyAdd.DistributionIDcxMEEnter(Sender: TObject);
begin
 DistributionIDcxME.Clear;
 DistributioncxLCB.Clear;
end;

procedure TfBuyAdd.DistributionIDcxMEKeyPress(Sender: TObject;
  var Key: Char);
var CDS:TClientDataSet;
    dbid, teid: Integer;
begin
 if DistributionIDcxME.Text='' then
  exit;

 if Key<>#13 then
  exit;

 if Key=#13 then
  begin
   CDS:=TClientDataSet(DistributioncxLCB.Properties.ListSource.DataSet);
   CDS.Close;
   CDS.Params[0].Clear;
   CDS.Params[1].Clear;
   CDS.Params[2].AsInteger := StrToInt(DistributionIDcxME.Text);
   CDS.Open;

   if CDS.RecordCount=0 then
    begin
     MessageDLG('Торговая точка с таким кодом отсутствует',mtError,[mbOK],0);
     DistributionIDcxME.Clear;
     exit;
    end //if
   else
    begin
     dbid := CDS.FieldByName('DISTRIBUTIONID').AsInteger;
     teid := CDS.FieldByName('TEID').AsInteger;
     DistributionIDcxME.OnExit:=nil;
     ContractorIDcxME.EditValue:=CDS.FieldByName('FIRMID').AsInteger;
     ContractorIDcxMEKeyPress(self,Key);
     TradeEmployeecxLCB.EditValue:=teid;
     DistributioncxLCB.EditValue:=dbid;
    end;//else
  end;//if Key=#13 then
end;

procedure TfBuyAdd.DistributioncxLCBMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  DistributioncxLCB.Hint := DistributioncxLCB.Text;
end;

end.
