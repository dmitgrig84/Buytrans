unit uSupply;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdVcl, DB, DBClient,  MConnect,
  SConnect, ComCtrls, ToolEdit, Mask, ExtCtrls, RXSpin, StdCtrls,
  RXCtrls, Buttons, DateUtils;

type
  TfSupply = class(TForm)
    GroupBox1: TGroupBox;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    minbottlea: TRxSpinEdit;
    minbottleb: TRxSpinEdit;
    minbottlec: TRxSpinEdit;
    RxSpeedButton1: TButton;
    RxLabel1: TRxLabel;
    Label2: TLabel;
    Label3: TLabel;
    deBegin: TDateEdit;
    deEnd: TDateEdit;
    LabelB: TLabel;
    LabelE: TLabel;
    procedure RxSpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public

  end;

var
  fSupply: TfSupply;

implementation

uses Reg, ConstUnit, uMain, uSupplyResult;

{$R *.DFM}

procedure TfSupply.FormCreate(Sender: TObject);
begin
 deBegin.Text :=DateToStr(Date-7);
 deEnd.Text:=DateToStr(Date);

 minbottlea.Value:=StrToFloat(ReadStringFromRegistry('minbottlea',SettingsFolder,Root,'100'));
 minbottleb.Value:=StrToFloat(ReadStringFromRegistry('minbottleb',SettingsFolder,Root,'100'));
 minbottlec.Value:=StrToFloat(ReadStringFromRegistry('minbottlec',SettingsFolder,Root,'5'));
end;

procedure TfSupply.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfSupply.RxSpeedButton1Click(Sender: TObject);
var gid: Integer;
begin
 LabelB.Caption:= 'Начало выполнения отчета '+ TimeToStr(Time);
 if (not Assigned(fSupplyResult)) then
  Application.CreateForm(TfSupplyResult, fSupplyResult);

 if fSupplyResult.SupplyCDS.Active then
  fSupplyResult.SupplyCDS.Close;

 fMain.SocketConnection.AppServer.DBStartTransaction;
 try
  fMain.InUpDelCDS.Close;
  fMain.InUpDelCDS.CommandText:=
    'select gen_id(gen_supplyparams_id,1) gid from storage where id = 1';
  fMain.InUpDelCDS.Open;
  gid := fMain.InUpDelCDS.FieldByName('gid').AsInteger;

  fMain.InUpDelCDS.Close;
  fMain.InUpDelCDS.CommandText:=
   'insert into supplyparams (id, begindate, enddate, minbottlea, minbottleb, minbottlec, ascashe) '+
   'values ('+IntToStr(gid)+','''+ deBegin.Text+''','''+deEnd.Text+''','+minbottlea.Text+','+minbottleb.Text+','+minbottlec.Text+',0)';
  fMain.InUpDelCDS.Execute;
  fMain.SocketConnection.AppServer.DBCommit;
 except on E: Exception do
  begin
   fMain.SocketConnection.AppServer.DBRollBack;
   ShowMessage('Ошибка:' +#13 + E.Message);
  end; //on
 end; //try

 fSupplyResult.SupplyCDS.params[0].Value:=deBegin.Text;
 fSupplyResult.SupplyCDS.params[1].Value:=deEnd.Text;
 fSupplyResult.SupplyCDS.params[2].Value:=minbottlea.Value;
 fSupplyResult.SupplyCDS.params[3].Value:=minbottleb.Value;
 fSupplyResult.SupplyCDS.params[4].Value:=minbottlec.Value;
 fMain.RefreshCDS(fSupplyResult.SupplyCDS);

 LabelE.Caption:= 'Окончание выполнения отчета '+ TimeToStr(Time);
 fSupplyResult.ShowModal;
 fSupplyResult.Free;
end;

end.
