unit uBuyAddDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Buttons, cxCurrencyEdit, cxDropDownEdit, cxCalc,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, dxCntner, dxEditor,
  dxExEdtr, dxDBEdtr, dxDBELib, DB, DBClient, cxMRUEdit, cxDBEdit,
  cxSpinEdit, Menus, cxButtons, uBuy;

type
  TfBuyAddDetail = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    StrichCodeLabel: TLabel;
    GroupLabel: TLabel;
    DrinkLabel: TLabel;
    NamecxLCB: TcxLookupComboBox;
    PriceLabel: TLabel;
    PriceCalcButton: TButton;
    SumPriceCalcButton: TButton;
    NDScxCE: TcxCurrencyEdit;
    NDSLabel: TLabel;
    Label13: TLabel;
    MaxRetailPricecxCE: TcxCurrencyEdit;
    Bevel7: TBevel;
    Label25: TLabel;
    UnitVolumecxCE: TcxCalcEdit;
    FactoryINNKPPcxTE: TcxTextEdit;
    Label31: TLabel;
    GroupTypecxLCB: TcxLookupComboBox;
    Panel4: TPanel;
    BarCodecxME: TcxMaskEdit;
    PricerxLE: TRxLookupEdit;
    DateLabel: TLabel;
    DateFactoryLinerxLE: TRxLookupEdit;
    DateFactoryLineBB: TBitBtn;
    DistributioncxLCB: TcxLookupComboBox;
    StoragecxLCB: TcxLookupComboBox;
    Label1: TLabel;
    ExciseLineRxLE: TRxLookupEdit;
    ExciseLineBB: TBitBtn;
    Panel1: TPanel;
    BuyBoxcxLCB: TcxLookupComboBox;
    SaleBoxcxLCB: TcxLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    CountSaleBoxcxSE: TcxSpinEdit;
    Label4: TLabel;
    Label5: TLabel;
    BoxCountLabel: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label14: TLabel;
    CountUnitVolumecxCE: TcxCalcEdit;
    CountBuyBoxcxSE: TcxSpinEdit;
    CountUnitcxSE: TcxSpinEdit;
    SumPriceLabel: TLabel;
    SumNDSLabel: TLabel;
    SumPriceWithNDS: TLabel;
    CancelcxButton: TcxButton;
    SavecxButton: TcxButton;
    SumPricecxCE: TcxCurrencyEdit;
    SumNDScxCE: TcxCurrencyEdit;
    SumPriceWithNDScxCE: TcxCurrencyEdit;
    SSPricecxCE: TcxCurrencyEdit;
    Label6: TLabel;
    PriceDrinkLbl: TLabel;
    procedure CancelDrinkBuyBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BarCodecxMEKeyPress(Sender: TObject; var Key: Char);
    procedure NamecxLCBPropertiesEditValueChanged(Sender: TObject);
    procedure NamecxLCBKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure CancelcxButtonClick(Sender: TObject);
    procedure SavecxButtonClick(Sender: TObject);
    procedure PricerxLECloseUp(Sender: TObject);
    procedure PriceCalcButtonClick(Sender: TObject);
    procedure SumPriceCalcButtonClick(Sender: TObject);
    procedure BuyBoxcxLCBPropertiesEditValueChanged(Sender: TObject);
    procedure SaleBoxcxLCBPropertiesEditValueChanged(Sender: TObject);
    procedure CountSaleBoxcxSEEnter(Sender: TObject);
    procedure CountSaleBoxcxSEPropertiesChange(Sender: TObject);
    procedure CountBuyBoxcxSEEnter(Sender: TObject);
    procedure CountBuyBoxcxSEPropertiesChange(Sender: TObject);
    procedure CountUnitVolumecxCEPropertiesEditValueChanged(
      Sender: TObject);
    procedure SumPriceWithNDScxCEKeyPress(Sender: TObject; var Key: Char);
    procedure BarCodecxMEEnter(Sender: TObject);
    procedure ExciseLineBBClick(Sender: TObject);
    procedure DateFactoryLineBBClick(Sender: TObject);
    procedure EnablePrice(flag:boolean);
  private
    { Private declarations }
  public
   fBuyLink:TfBuy;
  end;

var
  fBuyAddDetail: TfBuyAddDetail;

implementation

uses  DynamicProvider, uBuyAddDetailLine, uMain;

{$R *.dfm}

procedure TfBuyAddDetail.CancelDrinkBuyBtnClick(Sender: TObject);
begin
 Close;
end;

procedure TfBuyAddDetail.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
 RetVal:=1;
 CompName:='BuyAddDetailSearch';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (FindDynamicClientDataSet(self,CDS,CompName+'CDS',true,fMain.SocketConnection,CompName+'DSP')
  and FindDynamicDataSource(self,DS,CompName+'DS',true,CDS) and RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   CDS.CommandText:='select * from buytrans_buyadddetailsearch(:strparam,:flagparam,:buyid)';
   NamecxLCB.Properties.ListSource:=DS;
   NamecxLCB.Properties.KeyFieldNames:='ID';
   NamecxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='BuyAddDetailContractOrder';
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
    'select * from buytrans_buydetailprice(:drinkid,:storageid,:tickedform,:buytypeid)';
   PricerxLE.LookupSource:=DS;
   PricerxLE.LookupField:='CONTRACTORDERID';
   PricerxLE.LookupDisplay:='PRICECONTRACTORDER;NDSCONTRACTORDER;MAXRETAILPRICE';
   PricerxLE.LookupDisplayIndex:=0;
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='BuyAddDetailStorage';
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
    'select  * from buytrans_buydetailstorage(:storageid)';
   StoragecxLCB.Properties.ListSource:=DS;
   StoragecxLCB.Properties.KeyFieldNames:='ID';
   StoragecxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='BuyAddDetailDistribution';
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
    'select * from buytrans_buydetaildb(:buyid)';
   DistributioncxLCB.Properties.ListSource:=DS;
   DistributioncxLCB.Properties.KeyFieldNames:='DISTRIBUTIONID';
   DistributioncxLCB.Properties.ListFieldNames:='DISTRIBUTIONADDRESS';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='BuyAddDetailDateFactory';
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
    'select max(pc.id) id, pc.datefactory '+
    'from partycertificate pc '+
    'join drinkkind dk on pc.id = dk.partycertificateid '+
    'join cashehistory ch on ch.drinkkindid=dk.id '+
    'join storage st on st.id=ch.storageid '+
    'where dk.drinkid=:drinkid and strlen(pc.datefactory)>0 '+
    ' and st.terminalid=(select st1.terminalid from storage st1 where st1.id=:storageid) '+
    'group by pc.datefactory '+
    'order by pc.datefactory';
   DateFactoryLinerxLE.LookupSource:=DS;
   DateFactoryLinerxLE.LookupField:='ID';
   DateFactoryLinerxLE.LookupDisplay:='DATEFACTORY';
   DateFactoryLinerxLE.LookupDisplayIndex:=0;
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='BuyAddDetailExcise';
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
    'select max(pc.id) id, pc.exciseline '+
    'from partycertificate pc '+
    'join drinkkind dk on pc.id = dk.partycertificateid '+
    'join cashehistory ch on ch.drinkkindid=dk.id '+
    'join storage st on st.id=ch.storageid '+
    'where dk.drinkid=:drinkid and strlen(pc.exciseline)>10 '+
    ' and st.terminalid=(select st1.terminalid from storage st1 where st1.id=:storageid) '+
    'group by pc.exciseline '+
    'order by pc.exciseline';
   ExciseLineRxLE.LookupSource:=DS;
   ExciseLineRxLE.LookupField:='ID';
   ExciseLineRxLE.LookupDisplay:='EXCISELINE';
   ExciseLineRxLE.LookupDisplayIndex:=0;
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='BuyAddDetailSaleBox';
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
    'select id, fullname, capacity from box where id<>0';
   SaleBoxcxLCB.Properties.ListSource:=DS;
   SaleBoxcxLCB.Properties.KeyFieldNames:='ID';
   SaleBoxcxLCB.Properties.ListFieldNames:='FULLNAME';
   CDS.RemoteServer:=fMain.SocketConnection;
   fMain.RefreshCDS(CDS);
  end;

 RetVal:=1;
 CompName:='BuyAddDetailBuyBox';
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
    'select id, fullname, capacity from box where id<>0';
   BuyBoxcxLCB.Properties.ListSource:=DS;
   BuyBoxcxLCB.Properties.KeyFieldNames:='ID';
   BuyBoxcxLCB.Properties.ListFieldNames:='FULLNAME';
   CDS.RemoteServer:=fMain.SocketConnection;
   fMain.RefreshCDS(CDS);
  end;
end;

procedure TfBuyAddDetail.BarCodecxMEKeyPress(Sender: TObject;
  var Key: Char);
var CDS:TClientDataSet;
begin
 if BarCodecxME.Text='' then
  exit;

 if Key=#13 then
  begin
   CDS:=TClientDataSet(NamecxLCB.Properties.ListSource.DataSet);
   CDS.Params[0].AsString:=BarCodecxME.Text;
   CDS.Params[1].AsInteger:=1;
   CDS.Params[2].AsInteger:=fBuyLink.BuyCDSID.AsInteger;
   fMain.RefreshCDS(CDS);

   if CDS.RecordCount=0 then
    begin
     if (fBuyLink.BuyCDSADDBUY.AsInteger=-1) then
      MessageDlg('Товар с заданным штрих-кодом отсутствует или не присутсвовал в приходной накладной',mtError,[mbOk],0)
     else
      MessageDlg('Товар с заданным штрих-кодом отсутствует.',mtError,[mbOk],0);
     NamecxLCB.EditValue:=-1;
    end
   else
    begin
     if (NamecxLCB.EditValue<>CDS.FieldByName('ID').AsInteger) then
      NamecxLCB.EditValue:=CDS.FieldByName('ID').AsInteger
     else
      NamecxLCBPropertiesEditValueChanged(nil);
     NamecxLCB.Enabled:=not (fBuyLink.BuyCDSADDBUY.AsInteger=-1);
    end;
  end;//if}
end;

procedure TfBuyAddDetail.EnablePrice(flag:boolean);
begin
 PricerxLE.Clear;
 PricerxLE.Enabled:=flag;

 NDScxCE.Clear;
 NDScxCE.Enabled:=flag;

 SSPricecxCE.Clear;
 SSPricecxCE.Enabled:=flag;

 MaxRetailPricecxCE.Clear;
 MaxRetailPricecxCE.Enabled:=flag;

 SumPricecxCE.Clear;
 SumPricecxCE.Enabled:=flag;;
 SumNDScxCE.Clear;
 SumNDScxCE.Enabled:=flag;
 SumPriceWithNDScxCE.Clear;
 SumPriceWithNDScxCE.Enabled:=flag;
end;

procedure TfBuyAddDetail.NamecxLCBPropertiesEditValueChanged(
  Sender: TObject);
var CDS:TClientDataSet;
begin
 CDS:=TClientDataSet(NamecxLCB.Properties.ListSource.DataSet);
 if ((CDS.Active) and  (CDS.RecordCount>0)) then
  begin
   try
    if not CDS.Locate('ID',NamecxLCB.EditValue,[]) then
     exit;
    BarCodecxME.Text:=CDS.FieldByName('STRICHCODE').AsString;
    FactoryINNKPPcxTE.Text:=CDS.FieldByName('FACTORYINNKPP').AsString;
    UnitVolumecxCE.Value:=CDS.FieldByName('UNITVOLUME').AsFloat;
    GroupTypecxLCB.Text:=CDS.FieldByName('DRINKGROUPTYPENAME').AsString;
    PriceDrinkLbl.Caption:=CDS.FieldByName('RETAILPRICE').AsString;
    EnablePrice(CDS.FieldByName('RETURNFLAG').AsInteger=0);
   except on E:Exception do
      MessageDlg('Ошибка:'+E.Message,mtError,[mbOk],0);
   end;

   //----------------------------------------------------------------------------
   if (NamecxLCB.EditValue=null) or (NamecxLCB.EditValue<0) then
    begin
     MessageDLG('Товар не найден',mtInformation,[mbOK],0);
     exit;
    end;

   with TClientDataSet(PricerxLE.LookupSource.DataSet) do
    begin
     Close;
     Params[0].AsInteger:=NamecxLCB.EditValue;
     Params[1].AsInteger:=StoragecxLCB.EditValue;
     Params[2].AsInteger:=fBuyLink.BuyCDSTICKEDFORM.AsInteger;
     Params[3].AsInteger:=fBuyLink.BuyCDSBUYTYPEID.AsInteger;
     Open;
    end;

   with TClientDataSet(DateFactoryLinerxLE.LookupSource.DataSet) do
    begin
     Close;
     Params[0].AsInteger:=NamecxLCB.EditValue;
     Params[1].AsInteger:=StoragecxLCB.EditValue;
     Open;
    end;

   with TClientDataSet(ExciseLineRxLE.LookupSource.DataSet) do
    begin
     Close;
     Params[0].AsInteger:=NamecxLCB.EditValue;
     Params[1].AsInteger:=StoragecxLCB.EditValue;     
     Open;
    end;

   with fMain.AnyCommandCDS do
    begin
     PricerxLE.Clear;
     NDScxCE.Clear;
     MaxRetailPricecxCE.Clear;
     DateFactoryLinerxLE.Clear;

     Close;
     CommandText:=
      'select first 1 * from buytrans_buydetailpricedk(:drinkid,:storageid,:tickedform,:buytypeid) dk order by dk.drinkkindid desc';
     Params[0].AsInteger:=NamecxLCB.EditValue;
     Params[1].AsInteger:=StoragecxLCB.EditValue;
     Params[2].AsInteger:=fBuyLink.BuyCDSTICKEDFORM.AsInteger;
     Params[3].AsInteger:=fBuyLink.BuyCDSBUYTYPEID.AsInteger;
     Open;

     if not IsEmpty then
      begin
       PricerxLE.Text:=FieldByName('pricecontractorder').AsString;
       NDScxCE.Text:=FieldByName('ndscontractorder').AsString;
       MaxRetailPricecxCE.Text:=FieldByName('maxretailprice').AsString;
       if CDS.FieldByName('ALCOGRADUS').AsFloat=0 then
        DateFactoryLinerxLE.Text:=FieldByName('prodactiondate').AsString;
      end;
    end;

   SaleBoxcxLCB.EditValue:=CDS.FieldByName('SALEBOXID').AsInteger;
   BuyBoxcxLCB.EditValue:=CDS.FieldByName('BUYBOXID').AsInteger;

   CountBuyBoxcxSE.Value:=1;
  end;
end;

procedure TfBuyAddDetail.NamecxLCBKeyPress(Sender: TObject; var Key: Char);
var CDS:TClientDataSet;
begin
 if (Key=#13) and (Tag=0) then
  begin
   CDS:=TClientDataSet(NamecxLCB.Properties.ListSource.DataSet);
   CDS.Params[0].AsString:=AnsiUpperCase(NamecxLCB.Text);
   CDS.Params[1].AsInteger:=2;
   CDS.Params[2].AsInteger:=fBuyLink.BuyCDSID.AsInteger;
   fMain.RefreshCDS(CDS);
   if ((CDS.Active) and (CDS.RecordCount>0)) then
    begin
     CDS.First;
     NamecxLCB.EditValue:=CDS.FieldByName('ID').AsInteger;
    end;
  end;
end;

procedure TfBuyAddDetail.FormActivate(Sender: TObject);
var Key:Char;
begin
 TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet).Params[0].AsInteger:=fBuyLink.BuyCDSSTORAGEID.AsInteger;
 fMain.RefreshCDS(TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet));

 TClientDataSet(DistributioncxLCB.Properties.ListSource.DataSet).Params[0].AsInteger:=fBuyLink.BuyCDSID.AsInteger;
 fMain.RefreshCDS(TClientDataSet(DistributioncxLCB.Properties.ListSource.DataSet));

 fMain.RefreshCDS(TClientDataSet(SaleBoxcxLCB.Properties.ListSource.DataSet));
 fMain.RefreshCDS(TClientDataSet(BuyBoxcxLCB.Properties.ListSource.DataSet));

 SSPricecxCE.Enabled:=false;
 BarCodecxME.Enabled:=(Tag=0);
 NamecxLCB.Enabled:=(Tag=0);
 StoragecxLCB.Enabled:=(Tag=0);
 BuyBoxcxLCB.Enabled:=(Tag=0);
 CountSaleBoxcxSE.Enabled:=(Tag=0);
 CountBuyBoxcxSE.Enabled:=(Tag=0);
 CountUnitcxSE.Enabled:=(Tag=0);
 CountUnitVolumecxCE.Enabled:=(Tag=0);
 SumPriceWithNDS.Caption:='Сумма товара с НДС';
 if ((fBuyLink.BuyCDSBUYTYPEID.AsInteger in [7,8]) and (fBuyLink.BuyCDSACTIVITYKINDID.AsInteger=2)) then
  SumPriceWithNDS.Caption:='Сумма товара на полке';

 PriceDrinkLbl.Visible:=(fBuyLink.BuyCDSBUYTYPEID.AsInteger in [7,8]);

 if Tag=0 then
  begin
   SSPricecxCE.Clear;
   BarCodecxME.Clear;
   GroupTypecxLCB.Clear;
   PriceDrinkLbl.Caption := '';

   NamecxLCB.Properties.ListSource.DataSet.Close;
   NamecxLCB.EditValue:=-1;

   PricerxLE.LookupSource.DataSet.Close;
   PricerxLE.Clear;
   NDScxCE.Clear;
   MaxRetailPricecxCE.Clear;

   FactoryINNKPPcxTE.Clear;
   UnitVolumecxCE.Clear;

   StoragecxLCB.EditValue:=fBuyLink.BuyCDSSTORAGEID.AsInteger;

   DistributioncxLCB.EditValue:=fBuyLink.BuyCDSDISTRIBUTIONID.AsInteger;

   DateFactoryLinerxLE.LookupSource.DataSet.Close;
   DateFactoryLinerxLE.Clear;
   //ExciseRxLE.LookupSource.DataSet.Close;
   ExciseLineRxLE.Clear;


   SaleBoxcxLCB.EditValue:=-1;

   BuyBoxcxLCB.EditValue:=-1;

   CountSaleBoxcxSE.Clear;
   CountBuyBoxcxSE.Clear;
   CountUnitcxSE.Clear;
   CountUnitVolumecxCE.Clear;
   SumPricecxCE.Clear;
   SumNDScxCE.Clear;
   SumPriceWithNDScxCE.Clear;
   BarCodecxME.SetFocus;
  end;

 if Tag>0 then
  begin
   Key:=#13;
   StoragecxLCB.EditValue:=fBuyLink.BuyDetailCDSSTORAGEID.AsInteger;
   BarCodecxME.Text:=fBuyLink.BuyDetailCDSBARCODE.AsString;
   BarCodecxMEKeyPress(Self,Key);
   NamecxLCB.EditValue:=fBuyLink.BuyDetailCDSDRINKID.AsInteger;

   PricerxLE.Text:=FloatToStr(Round(fBuyLink.BuyDetailCDSPRICECONTRACTORDER.AsFloat/fBuyLink.BuyDetailCDSCOEFFMEAS.AsInteger*100)/100);
   NDScxCE.Value:=Round(fBuyLink.BuyDetailCDSNDSCONTRACTORDER.AsFloat/fBuyLink.BuyDetailCDSCOEFFMEAS.AsInteger*100)/100;
   SSPricecxCE.Value:=Round(fBuyLink.BuyDetailCDSSSPRICECONTRACTORDER.AsFloat/fBuyLink.BuyDetailCDSCOEFFMEAS.AsInteger*100)/100;
   MaxRetailPricecxCE.Value:=Round(fBuyLink.BuyDetailCDSMAXRETAILPRICE.AsFloat/fBuyLink.BuyDetailCDSCOEFFMEAS.AsInteger*100)/100;
   if MaxRetailPricecxCE.Value=0 then
    MaxRetailPricecxCE.Text:='';

   DistributioncxLCB.EditValue:=fBuyLink.BuyDetailCDSDISTRIBUTIONID.AsInteger;
   DateFactoryLinerxLE.Text:=fBuyLink.BuyDetailCDSDATEFACTORY.AsString;
   ExciseLineRxLE.Text:=fBuyLink.BuyDetailCDSEXCISELINE.AsString;
   SaleBoxcxLCB.EditValue:=fBuyLink.BuyDetailCDSSALEBOXID.AsInteger;
   BuyBoxcxLCB.EditValue:=fBuyLink.BuyDetailCDSBUYBOXID.AsInteger;
   CountSaleBoxcxSE.Value:=fBuyLink.BuyDetailCDSSALEBOXCOUNT.AsFloat*fBuyLink.BuyDetailCDSCOEFFMEAS.AsInteger;
   CountSaleBoxcxSEPropertiesChange(nil);
   CountUnitcxSE.Value:=abs(fBuyLink.BuyDetailCDSCOUNTUNIT.AsFloat*fBuyLink.BuyDetailCDSCOEFFMEAS.AsInteger);

   SumPricecxCE.Value:=abs(fBuyLink.BuyDetailCDSSUMPRICE.AsFloat);
   SumNDScxCE.Value:=abs(fBuyLink.BuyDetailCDSSUMNDS.AsFloat);
   SumPriceWithNDScxCE.Value:=abs(SumPricecxCE.Value+SumNDScxCE.Value);
   if ((fBuyLink.BuyCDSBUYTYPEID.AsInteger in [7,8]) and (fBuyLink.BuyCDSACTIVITYKINDID.AsInteger=2)) then
    SumPriceWithNDScxCE.Value:=fBuyLink.BuyDetailCDSSUMRETAILPRICE.AsFloat;

   if not (Pos('F',fMain.AdvancedGrant)>0) then
    SSPricecxCE.Enabled:=true;//not TClientDataSet(NamecxLCB.Properties.ListSource.DataSet).FieldByName('FACTORYPRICE').IsNull;
  end;
end;

procedure TfBuyAddDetail.CancelcxButtonClick(Sender: TObject);
begin
 Close;
end;

procedure TfBuyAddDetail.SavecxButtonClick(Sender: TObject);
 var ProductionDate,ProductionDateNew,ExciseLine:string;
     BuyDetailID:string;
     CDS:TClientDataSet;
     countdatefactory,countexcise,i,j,z:integer;
     datefactory:array of string;
     excise: array of array of double;
     Price,NDS,SSPrice,MaxRetailPrice,SumPrice,SumNDS,SumPriceWithNDS:string;
     DrinkKindId:string;
     PartyCertificateId:array of integer;
     DistinctPCID:string;
     CountUnit,CountBox:string;
     ErrorCode: string;
     function FormateDate(const DateTime:TDateTime):string;
      begin
       DateTimeToString(Result,'dd.mm.yy',DateTime);
      end;
begin
 CDS:=TClientDataSet(NamecxLCB.Properties.ListSource.DataSet);

 if Tag=0 then //добавляем товар
  BuyDetailID:='null'
 else
  BuyDetailID:=IntToStr(Tag);

 //Определяет с каким знаком добавляется позиция
 if (NamecxLCB.Text='') then
  begin
   MessageDlg('Не выбран товар.',mtError,[mbOk],0);
   exit;
  end;//if

 if (StoragecxLCB.Text='') then
  begin
   MessageDlg('Не выбран склад.',mtError,[mbOk],0);
   exit;
  end;//if

 if (DistributioncxLCB.Text='') then
  begin
   MessageDlg('Не выбран адрес и лицензия.',mtError,[mbOk],0);
   exit;
  end;//if

 if (DateFactoryLinerxLE.Text='') and
    (fBuyLink.BuyCDSSTORAGEDISTRIBUTIONID.IsNull) then
  begin
   MessageDlg('Не заполнено поле с датой производства.',mtError,[mbOk],0);
   exit;
  end;

 if ((SaleBoxcxLCB.Text='') or (BuyBoxcxLCB.Text='') or (CountSaleBoxcxSE.Text='') or (CountBuyBoxcxSE.Text='') or (CountUnitcxSE.Text='')) then
  begin
   MessageDlg('Один из кол-ых параметров был не заполнен!',mtError,[mbOk],0);
   exit;
  end;

 if ((not (CDS.FieldByName('DIRECTIONID').AsInteger in [1,2,5])) or
     (Pos('№',ProductionDate)=1) or
     (not fBuyLink.BuyCDSSTORAGEDISTRIBUTIONID.IsNull)) then
  ProductionDateNew:=DateFactoryLinerxLE.Text
 else
  try
   ProductionDateNew:='';
   ProductionDate:=DateFactoryLinerxLE.Text;
   countdatefactory:=0;
   i:=0;
   j:=1;
   while i<=Length(ProductionDate)+1 do
    begin
     if (i=Length(ProductionDate)+1) or (ProductionDate[i]=#13) or (ProductionDate[i]=#10) or (ProductionDate[i]='/') then
      begin
       inc(countdatefactory);
       SetLength(datefactory,countdatefactory);
       datefactory[countdatefactory-1]:=DateToStr(StrToDate(Trim(Copy(ProductionDate,j,i-j))));
       if ProductionDateNew='' then
        ProductionDateNew:=FormateDate(StrToDate(datefactory[countdatefactory-1]))
       else
        ProductionDateNew:=ProductionDateNew+'/'+FormateDate(StrToDate(datefactory[countdatefactory-1]));
       j:=i+1;
      end;
     inc(i);
    end;
  except
   MessageDlg('Не верный формат ввода даты производства.',mtError,[mbOk],0);
   exit;
  end;

 if ExciseLineRxLE.Text='' then
  ExciseLine:='null'
 else
  try
   ExciseLine:=ExciseLineRxLE.Text;
   countexcise:=0;
   i:=0;
   j:=1;

   while i<=Length(ExciseLine)+1 do
    begin
     if (i=Length(ExciseLine)+1) or (ExciseLine[i]=#13) or (ExciseLine[i]=#10) or (ExciseLine[i]='/') or (ExciseLine[i]='-') then
      begin
       if (ExciseLine[i]='-') then
        begin
         inc(countexcise);
         SetLength(excise,2,countexcise);
         excise[0,countexcise-1]:=StrToFloat(Trim(Copy(ExciseLine,j,i-j)));
         j:=i+1;
        end
       else
        begin
         excise[1,countexcise-1]:=StrToFloat(Trim(Copy(ExciseLine,j,i-j)));
         j:=i+1;
        end;
      end;
     inc(i);
    end;
   ExciseLine:=#39+ExciseLine+#39;
  except
   MessageDlg('Не верный формат ввода акцизов',mtError,[mbOk],0);
   exit;
  end;

 if PricerxLE.Enabled then Price:=FloatToStr(StrToFloat(PricerxLE.Text))
                      else Price:='null';

 if NDScxCE.Enabled then NDS:=FloatToStr(NDScxCE.Value)
                    else NDS:='null';

 if SSPricecxCE.Enabled then SSPrice:=FloatToStr(SSPricecxCE.Value)
                        else SSPrice:='null';

 if (MaxRetailPricecxCE.Text='') or (MaxRetailPricecxCE.Value=0) then MaxRetailPrice:='null'
                                                                 else MaxRetailPrice:=FloatToStr(MaxRetailPricecxCE.Value);

 if SumPricecxCE.Enabled then SumPrice:=FloatToStr(Round(SumPricecxCE.Value * 1000)/1000)
                         else SumPrice:='null';

 if SumNDScxCE.Enabled then SumNDS:=FloatToStr(Round(SumNDScxCE.Value * 1000)/1000)
                       else SumNDS:='null';

 if ((SumPriceWithNDScxCE.Text<>'') and SumPriceWithNDScxCE.Enabled) then SumPriceWithNDS:=FloatToStr(SumPriceWithNDScxCE.Value)
                                                                     else SumPriceWithNDS:='null';



 with fMain do
  try
   CountUnit:=IntToStr(Trunc(CountUnitcxSE.Value));
   CountBox:=IntToStr(Trunc(CountSaleBoxcxSE.Value));

   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'select * from buytrans_buydetailadd('+
     BuyDetailID+','+
     fBuyLink.BuyCDSID.AsString+','+
     CountUnit+','+
     CountBox+','+
     IntToStr(StoragecxLCB.EditValue)+','+
     IntToStr(DistributioncxLCB.EditValue)+','+
     SumPrice+','+
     SumNDS+','+
     CDS.FieldByName('ID').AsString+','+
     Price+','+
     NDS+','+
     SSprice+','+
     #39+ProductionDateNew+#39+','+
     IntToStr(BuyBoxcxLCB.EditValue)+','+
     IntToStr(SaleBoxcxLCB.EditValue)+','+
     IntToStr(countdatefactory)+','+
     MaxRetailPrice+','+
     ExciseLine+',null,'+
     SumPriceWithNDS+',null)';
   InUpDelCDS.Open;

   SetLength(PartyCertificateId,InUpDelCDS.RecordCount);
   z:=0;
   while not InUpDelCDS.Eof do
    begin
     PartyCertificateId[z]:=InUpDelCDS.FieldByName('PARTYCERTIFICATEID').AsInteger;
     Inc(z);
     InUpDelCDS.Next;
    end;

   DistinctPCID:='';
   for z:=0 to length(PartyCertificateId)-1 do
    if (Pos(IntToStr(PartyCertificateID[z]),DistinctPCID)=0) then
     begin
      for i:=0 to countdatefactory-1 do
       begin
        InUpDelCDS.Close;
        InUpDelCDS.CommandText:=
         'insert into datefactory(partycertificateid,bottlingdate) '+
         'values('+IntToStr(PartyCertificateID[z])+','+#39+datefactory[i]+#39+')';
        InUpDelCDS.Execute;
       end;

      for i:=0 to countexcise-1 do
       begin
        InUpDelCDS.Close;
        InUpDelCDS.CommandText:=
         'insert into excise(partycertificateid,beginrange,endrange) '+
         'values('+IntToStr(PartyCertificateID[z])+','+FloatToStr(excise[0,i])+','+FloatToStr(excise[1,i])+')';
        InUpDelCDS.Execute;
       end;
      DistinctPCID:=IntToStr(PartyCertificateID[z])+',';
     end;

   SocketConnection.AppServer.DBCommit;
  except on E: Exception do
   begin
    SocketConnection.AppServer.DBRollback;
    MessageDlg('Ошибка добавления товара!'+ ErrorCode + #13
                + ' ' + E.Message,mtError,[mbOk],0);
    exit;
   end;  //on
  end;//try..except}

 fMain.RefreshCDS(fBuyLink.BuyCDS);
 fMain.RefreshCDS(fBuyLink.BuyDetailCDS);
 CancelcxButtonClick(self);
end;

procedure TfBuyAddDetail.PricerxLECloseUp(Sender: TObject);
var CDS:TClientDataSet;
begin
if PricerxLE.Text = '' then
  exit;

 CDS:=TClientDataSet(NamecxLCB.Properties.ListSource.DataSet);

 try
  if ((PricerxLE.LookupValue<>'') and TClientDataSet(PricerxLE.LookupSource.DataSet).Locate('CONTRACTORDERID',PricerxLE.LookupValue,[])) then
   begin
    NDScxCE.Value:=TClientDataSet(PricerxLE.LookupSource.DataSet).FieldByName('NDSCONTRACTORDER').Value;
    MaxRetailPricecxCE.EditValue:=TClientDataSet(PricerxLE.LookupSource.DataSet).FieldByName('MAXRETAILPRICE').Value;
   end
  else
   NDScxCE.EditValue:=StrToFloat(PricerxLE.Text)*(CDS.FieldByName('NDS').AsFloat)/100;

 if (Self.Tag > 0) then
  begin
   if not (Pos('F', fMain.AdvancedGrant)>0) then
    if CDS.FieldByName('FACTORYPRICE').IsNull then
     SSPricecxCE.Value:=Round((StrToFloat(PricerxLE.Text)+NDScxCE.Value)*100)/100
    else
     SSPricecxCE.Value:=CDS.FieldByName('FACTORYPRICE').AsFloat;
  end
 else
  begin
   if CDS.FieldByName('FACTORYPRICE').IsNull then
    SSPricecxCE.Value:=Round((StrToFloat(PricerxLE.Text)+NDScxCE.Value)*100)/100
   else
    SSPricecxCE.Value:=CDS.FieldByName('FACTORYPRICE').AsFloat;
  end

 except on E:Exception do
  MessageDlg('Ошибка:'+E.Message,mtError,[mbOk],0);
 end;
end;



procedure TfBuyAddDetail.PriceCalcButtonClick(Sender: TObject);
begin
 PricerxLE.Text := FloatToStr(SumPricecxCE.Value/CountUnitcxSE.Value);
end;

procedure TfBuyAddDetail.SumPriceCalcButtonClick(Sender: TObject);
begin
 SumPricecxCE.Value:=Round((StrToFloat(PricerxLE.Text)*CountUnitcxSE.Value)*1000)/1000;
 SumNDScxCE.Value:=Round((NDScxCE.EditValue*CountUnitcxSE.Value)*1000)/1000;
end;

procedure TfBuyAddDetail.BuyBoxcxLCBPropertiesEditValueChanged(
  Sender: TObject);
var CDS:TClientDataSet;
begin
 CDS:=TClientDataSet(BuyBoxcxLCB.Properties.ListSource.DataSet);
 if CDS.Active and CDS.Locate('ID',BuyBoxcxLCB.EditValue,[]) then
  begin
   CountUnitcxSE.Value:=CountBuyBoxcxSE.Value*CDS.FieldByName('CAPACITY').AsInteger;
   CountSaleBoxcxSE.Value:=CountUnitcxSE.Value/TClientDataSet(SaleBoxcxLCB.Properties.ListSource.DataSet).FieldByName('CAPACITY').AsInteger;
   CountUnitVolumecxCE.Value:=CountUnitcxSE.Value*UnitVolumecxCE.Value;
  end;
end;

procedure TfBuyAddDetail.SaleBoxcxLCBPropertiesEditValueChanged(
  Sender: TObject);
var CDS:TClientDataSet;
begin
 CDS:=TClientDataSet(SaleBoxcxLCB.Properties.ListSource.DataSet);
 if CDS.Active then
  CDS.Locate('ID',SaleBoxcxLCB.EditValue,[]);
end;

procedure TfBuyAddDetail.CountSaleBoxcxSEEnter(Sender: TObject);
begin
 CountSaleBoxcxSE.Value:=Round(CountUnitcxSE.Value/TClientDataSet(SaleBoxcxLCB.Properties.ListSource.DataSet).FieldByName('CAPACITY').AsInteger);
end;

procedure TfBuyAddDetail.CountSaleBoxcxSEPropertiesChange(Sender: TObject);
begin
 if (CountSaleBoxcxSE.Value<>0) then
  begin
   CountUnitcxSE.Value:=CountSaleBoxcxSE.Value*TClientDataSet(SaleBoxcxLCB.Properties.ListSource.DataSet).FieldByName('CAPACITY').AsInteger;
   CountBuyBoxcxSE.Value:=CountUnitcxSE.Value/TClientDataSet(BuyBoxcxLCB.Properties.ListSource.DataSet).FieldByName('CAPACITY').AsInteger;
   CountUnitVolumecxCE.Value:=CountUnitcxSE.Value*UnitVolumecxCE.Value;
  end;
end;

procedure TfBuyAddDetail.CountBuyBoxcxSEEnter(Sender: TObject);
begin
 CountBuyBoxcxSE.Value:=Round(CountUnitcxSE.Value/TClientDataSet(BuyBoxcxLCB.Properties.ListSource.DataSet).FieldByName('CAPACITY').AsInteger);
end;

procedure TfBuyAddDetail.CountBuyBoxcxSEPropertiesChange(Sender: TObject);
begin
 if (CountBuyBoxcxSE.Value<>0)  then
  begin
   CountUnitcxSE.Value:=CountBuyBoxcxSE.Value*TClientDataSet(BuyBoxcxLCB.Properties.ListSource.DataSet).FieldByName('CAPACITY').AsInteger;
   CountSaleBoxcxSE.Value:=CountUnitcxSE.Value/TClientDataSet(SaleBoxcxLCB.Properties.ListSource.DataSet).FieldByName('CAPACITY').AsInteger;
   CountUnitVolumecxCE.Value:=CountUnitcxSE.Value*UnitVolumecxCE.Value;
  end;
end;

procedure TfBuyAddDetail.CountUnitVolumecxCEPropertiesEditValueChanged(
  Sender: TObject);
begin
 if (CountUnitVolumecxCE.Value<>null) and (UnitVolumecxCE.Value<>null) and (UnitVolumecxCE.Value<>0) then
  begin
   CountUnitcxSE.Value:=CountUnitVolumecxCE.Value/UnitVolumecxCE.Value;
   CountSaleBoxcxSE.Value:=CountUnitcxSE.Value/TClientDataSet(SaleBoxcxLCB.Properties.ListSource.DataSet).FieldByName('CAPACITY').AsInteger;
   CountBuyBoxcxSE.Value:=CountUnitcxSE.Value/TClientDataSet(BuyBoxcxLCB.Properties.ListSource.DataSet).FieldByName('CAPACITY').AsInteger;
  end;
end;

procedure TfBuyAddDetail.SumPriceWithNDScxCEKeyPress(Sender: TObject;
  var Key: Char);
begin
 if ((Key = #13) and (fBuyLink.BuyCDSACTIVITYKINDID.AsInteger<>2)) then
  begin
   SumNDScxCE.Value := Round(SumPriceWithNDScxCE.Value * TClientDataSet(NamecxLCB.Properties.ListSource.DataSet).FieldByName('NDS').AsFloat/
                                                  (TClientDataSet(NamecxLCB.Properties.ListSource.DataSet).FieldByName('NDS').AsFloat + 100)*1000)/1000;
   SumPricecxCE.Value := SumPriceWithNDScxCE.Value - SumNDScxCE.Value;
  end;
end;

procedure TfBuyAddDetail.BarCodecxMEEnter(Sender: TObject);
begin
 BarCodecxME.SelectAll;
end;

procedure TfBuyAddDetail.DateFactoryLineBBClick(Sender: TObject);
begin
 if (not Assigned(fBuyAddDetailLine)) then
  Application.CreateForm(TfBuyAddDetailLine, fBuyAddDetailLine);
 fBuyAddDetailLine.Tag:=1;
 fBuyAddDetailLine.Line:=DateFactoryLinerxLE.Text;
 if (mrOk=fBuyAddDetailLine.ShowModal) then
  DateFactoryLinerxLE.Text:=fBuyAddDetailLine.Line;
end;

procedure TfBuyAddDetail.ExciseLineBBClick(Sender: TObject);
begin
 if (not Assigned(fBuyAddDetailLine)) then
  Application.CreateForm(TfBuyAddDetailLine, fBuyAddDetailLine);
 fBuyAddDetailLine.Tag:=2;
 fBuyAddDetailLine.Line:=ExciseLinerxLE.Text;
 if (mrOk=fBuyAddDetailLine.ShowModal) then
  ExciseLinerxLE.Text:=fBuyAddDetailLine.Line;
end;



end.
