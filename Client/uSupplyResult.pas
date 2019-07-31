unit uSupplyResult;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   DBClient, dxDBGrid, dxTL, dxDBCtrl, ExtCtrls, dxCntner, StdCtrls,
  RXCtrls, dxExEdtr, DB;

type
 TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;
  TfSupplyResult = class(TForm)
    dxDBGrid1: TdxDBGrid;
    Panel1: TPanel;
    dxDBGrid1TEMPDRINKID: TdxDBGridMaskColumn;
    dxDBGrid1DRINKGROUPNAME: TdxDBGridMaskColumn;
    dxDBGrid1FACTORY: TdxDBGridMaskColumn;
    dxDBGrid1DRINKNAME: TdxDBGridMaskColumn;
    dxDBGrid1VOLUME: TdxDBGridMaskColumn;
    dxDBGrid1CBOTTLECOUNT: TdxDBGridMaskColumn;
    dxDBGrid1RBOTTLECOUNT: TdxDBGridMaskColumn;
    dxDBGrid1DAYSTORAGE: TdxDBGridMaskColumn;
    dxDBGrid1AVGBOTTLECOUNT: TdxDBGridMaskColumn;
    dxDBGrid1OVERDAY: TdxDBGridMaskColumn;
    dxDBGrid1SBOTTLECOUNT: TdxDBGridMaskColumn;
    dxDBGrid1OBOTTLECOUNT: TdxDBGridMaskColumn;
    dxDBGrid1DAYCOUNT: TdxDBGridMaskColumn;
    dxDBGrid1BOXCAPACITY: TdxDBGridMaskColumn;
    dxDBGrid1PLANBOTTLESALE: TdxDBGridMaskColumn;
    dxDBGrid1DRINKGROUP: TdxDBGridMaskColumn;
    dxDBGrid1T: TdxDBGridColumn;
    Button1: TButton;
    SupplyCDS: TClientDataSet;
    SupplyCDSTEMPDRINKID: TIntegerField;
    SupplyCDSDRINKGROUPNAME: TStringField;
    SupplyCDSFACTORY: TStringField;
    SupplyCDSMATRIKC: TStringField;
    SupplyCDSVOLUME: TFloatField;
    SupplyCDSCBOTTLECOUNTP: TIntegerField;
    SupplyCDSDAYSTORAGE2: TIntegerField;
    SupplyCDSOVERDAY: TIntegerField;
    SupplyCDSSBOTTLECOUNT2: TIntegerField;
    SupplyCDSOBOTTLECOUNT: TIntegerField;
    SupplyCDSDAYCOUNT: TIntegerField;
    SupplyCDSBOXCAPACITY: TIntegerField;
    SupplyCDSPLANBOTTLESALE: TIntegerField;
    SupplyCDSDRINKGROUP2: TStringField;
    SupplyCDSDRINKGROUPS: TStringField;
    SupllyDS: TDataSource;
    Button2: TButton;
    Button3: TButton;
    BOXCAPACITYSALE: TIntegerField;
    dxDBGrid1BOXCAPACITYSALE: TdxDBGridColumn;
    Button4: TButton;
    dxDBGrid1S5BOTCOUNT: TdxDBGridMaskColumn;
    dxDBGrid1RBOTTLEPRICE: TdxDBGridMaskColumn;
    dxDBGrid1ABOTTLEPRICE: TdxDBGridMaskColumn;
    SupplyCDSOPRICE: TFloatField;
    SupplyCDSFPERCENT: TFloatField;
    dxDBGrid1SPRICECITYPART: TdxDBGridMaskColumn;
    dxDBGrid1CLASTPRICE: TdxDBGridMaskColumn;
    SupplyCDSSTRAHDAY: TIntegerField;
    dxDBGrid1StrahDay: TdxDBGridMaskColumn;
    SupplyCDSSTRAHPLANBUY: TIntegerField;
    dxDBGrid1STRAHPLANBUY: TdxDBGridMaskColumn;
    SupplyCDSTRADEMARKNAME: TStringField;
    dxDBGrid1FIRMNAME: TdxDBGridMaskColumn;
    SupplyCDSS5BOTCOUNT: TIntegerField;
    SupplyCDSS5NEEDBOTCOUNT: TIntegerField;
    SupplyCDSS2BOTCOUNT: TIntegerField;
    SupplyCDSS32BOTCOUNT: TIntegerField;
    SupplyCDSS33BOTCOUNT: TIntegerField;
    SupplyCDSI34BOTCOUNT: TIntegerField;
    SupplyCDSS25BOTCOUNT: TIntegerField;
    SupplyCDSS25NEEDBOTCOUNT: TIntegerField;
    dxDBGrid1S5NEEDBOTCOUNT: TdxDBGridColumn;
    dxDBGrid1S2BOTCOUNT: TdxDBGridColumn;
    dxDBGrid1S32BOTCOUNT: TdxDBGridColumn;
    dxDBGrid1S33BOTCOUNT: TdxDBGridColumn;
    dxDBGrid1S34BOTCOUNT: TdxDBGridColumn;
    dxDBGrid1S25BOTCOUNT: TdxDBGridColumn;
    dxDBGrid1S25NEEDBOTCOUNT: TdxDBGridColumn;
    dxDBGrid1s5Bottlecount: TdxDBGridColumn;
    SupplyCDSS25RBOTCOUNT: TIntegerField;
    dxDBGrid1S25RBOTCOUNT: TdxDBGridColumn;
    SupplyCDSPLANBOTCOUNT: TIntegerField;
    dxDBGrid1S31BOTCOUNT: TdxDBGridColumn;
    Button5: TButton;
    Button6: TButton;
    SupplyCDSTBOTTLECOUNT: TIntegerField;
    dxDBGrid1CBOTTLECOUNTP: TdxDBGridColumn;
    SupplyCDSCBOTTLECOUNT2N: TIntegerField;
    dxDBGrid1CBOTTLECOUNT2: TdxDBGridColumn;
    SupplyCDSCBOTTLECOUNT: TIntegerField;
    SupplyCDSSBOTTLECOUNT: TIntegerField;
    dxDBGrid1SBOTTLECOUNT2: TdxDBGridColumn;
    dxDBGrid1S1TRANSBOTCOUNT: TdxDBGridColumn;
    dxDBGrid1S1PLANBUYBOTCOUNT: TdxDBGridColumn;
    dxDBGrid1FPERCENT: TdxDBGridColumn;
    SupplyCDSS31BOTCOUNT: TIntegerField;
    dxDBGrid1S15BOTCOUNT: TdxDBGridColumn;
    SupplyCDSCBOTTLECOUNT2SP: TIntegerField;
    SupplyCDSCBOTTLECOUNT2R32: TIntegerField;
    dxDBGrid1CBOTTLECOUNT2N: TdxDBGridColumn;
    dxDBGrid1CBOTTLECOUNT2SP: TdxDBGridColumn;
    dxDBGrid1CBOTTLECOUNT2R32: TdxDBGridColumn;
    SupplyCDSS15BOTCOUNT: TIntegerField;
    SupplyCDSDRINKGROUP: TStringField;
    dxDBGrid1DRINKGROUP2: TdxDBGridColumn;
    SupplyCDSDAYSTORAGER: TIntegerField;
    dxDBGrid1DAYSTORAGE2: TdxDBGridColumn;
    SupplyCDSS38BOTCOUNTDAY: TIntegerField;
    dxDBGrid1I34BOTCOUNT: TdxDBGridColumn;
    SupplyCDSS34BOTCOUNT: TIntegerField;
    SupplyCDSS1TRANSBOTCOUNT: TIntegerField;
    dxDBGrid1DAYSTORAGER: TdxDBGridColumn;
    dxDBGrid1s38botcountday: TdxDBGridColumn;
    SupplyCDSDAYSTORAGE: TIntegerField;
    SupplyCDSDRINKNAME: TStringField;
    SupplyCDSmatrikm: TStringField;
    SupplyCDSmatrikr: TStringField;
    dxDBGrid1matrikr: TdxDBGridColumn;
    dxDBGrid1matrikc: TdxDBGridColumn;
    dxDBGrid1matrikm: TdxDBGridColumn;
    dxDBGrid1Column59: TdxDBGridColumn;
    SupplyCDSCLASTPRICE: TFloatField;
    SupplyCDSS50BOTCOUNT: TIntegerField;
    SupplyCDSRBOTTLECOUNT: TIntegerField;
    dxDBGrid1BOTTLEPRICE51: TdxDBGridColumn;
    dxDBGrid1BOTTLEPRICE51P: TdxDBGridColumn;
    SupplyCDSDBOTTLEPRICE51: TFloatField;
    SupplyCDSRBOTTLEPRICE: TFloatField;
    SupplyCDSBOTTLEPRICE51P: TFloatField;
    SupplyCDSFIRMNAME: TStringField;
    dxDBGrid1TRADEMARKNAME: TdxDBGridColumn;
    SupplyCDSS38BOTCOUNT: TIntegerField;
    dxDBGrid1S50BOTCOUNT: TdxDBGridColumn;
    SupplyCDSCBOTTLECOUNT50R: TIntegerField;
    dxDBGrid1MAXORDERDATE: TdxDBGridColumn;
    dxDBGrid1cbottlecount50r: TdxDBGridColumn;
    SupplyCDSCBOTTLECOUNT2: TIntegerField;
    SupplyCDSMAXORDERDATE: TDateTimeField;
    SupplyCDSRESERVSETI: TIntegerField;
    dxDBGrid1Reservseti: TdxDBGridColumn;
    SupplyCDSretailreserve: TIntegerField;
    SupplyCDSBOTTLEPRICE52: TFloatField;
    dxDBGrid1BOTTLEPRICE52: TdxDBGridColumn;
    SupplyCDSBOTTLEPRICE53: TFloatField;
    dxDBGrid1BOTTLEPRICE53: TdxDBGridColumn;
    dxDBGrid1CBOTTLECOUNT51: TdxDBGridColumn;
    dxDBGrid1CBOTTLECOUNT51P: TdxDBGridColumn;
    SupplyCDSCBOTTLECOUNT51: TIntegerField;
    SupplyCDSCBOTTLECOUNT51P: TIntegerField;
    SupplyCDSCBOTTLECOUNT52: TIntegerField;
    SupplyCDSCBOTTLECOUNT53: TIntegerField;
    dxDBGrid1CBOTTLECOUNT53: TdxDBGridColumn;
    dxDBGrid1CBOTTLECOUNT52: TdxDBGridColumn;
    SupplyCDSTRADEMARKSERIESNAME: TStringField;
    dxDBGridTRADEMARKSERIESNAME: TdxDBGridColumn;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSupplyResult: TfSupplyResult;

implementation

uses uMain;


{$R *.DFM}

procedure TfSupplyResult.Button1Click(Sender: TObject);
begin
dxDBGrid1.Bands.Items[1].Visible:= not(dxDBGrid1.Bands.Items[1].Visible);
if (dxDBGrid1.Bands.Items[1].Visible) then
button1.Caption:='Скрыть склад'
else
button1.Caption:='Показать склад';

end;

procedure TfSupplyResult.Button2Click(Sender: TObject);
begin
Close;
end;
procedure TfSupplyResult.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with fMain.SaveDialog do
  begin
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName := AFileName;
    if Execute then
      AMethod(FileName, True);
  end;
end;

procedure TfSupplyResult.Button3Click(Sender: TObject);
begin
  Save('xls', 'Microsoft Excel 5.0 Worksheet (*.xls)|*.xls', 'ExpGrid.xls', dxDBGrid1.SaveToXLS);
end;

procedure TfSupplyResult.Button4Click(Sender: TObject);
begin
dxDBGrid1.Bands.Items[2].Visible:= not(dxDBGrid1.Bands.Items[2].Visible);
if (dxDBGrid1.Bands.Items[2].Visible) then
button4.Caption:='Скрыть продажи'
else
button4.Caption:='Показать продажи';
end;

procedure TfSupplyResult.Button5Click(Sender: TObject);
begin
dxDBGrid1.Bands.Items[3].Visible:= not(dxDBGrid1.Bands.Items[3].Visible);
if (dxDBGrid1.Bands.Items[3].Visible) then
button5.Caption:='Скрыть Заказ'
else
button5.Caption:='Показать Заказ';

end;

procedure TfSupplyResult.Button6Click(Sender: TObject);
begin
dxDBGrid1.Bands.Items[4].Visible:= not(dxDBGrid1.Bands.Items[4].Visible);
if (dxDBGrid1.Bands.Items[4].Visible) then
button6.Caption:='Скрыть Перемещение'
else
button6.Caption:='Показать Перемещение';
end;

procedure TfSupplyResult.FormActivate(Sender: TObject);
begin
 Self.WindowState:=wsMaximized;
end;

procedure TfSupplyResult.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
begin
 fMain.FloatToBcd(self);

 RetVal:=1;
 CompName:='Supply';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   SupplyCDS.ProviderName:=CompName+'DSP';
   SupplyCDS.RemoteServer:=fMain.SocketConnection;
   SupplyCDS.CommandText:=
    'select * from buytrans_supplycalc(:begindate, :enddate, :minbottlea,:minbottleb,:minbottlec,1,1) '+
    'order by drinkgroup, factory';
  end;

end;

end.
