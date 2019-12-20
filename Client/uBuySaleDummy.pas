unit uBuySaleDummy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxLabel, cxTextEdit, cxMaskEdit, StdCtrls, Buttons,
  ExtCtrls,uBuy;

type
  TfBuySaleDummy = class(TForm)
    BuyAddButtonPanel: TPanel;
    ApplayBB: TBitBtn;
    CancelBB: TBitBtn;
    DistributionIDcxME: TcxMaskEdit;
    cxLabel1: TcxLabel;
    ContractorcxME: TcxMaskEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    TradeemployeecxME: TcxMaskEdit;
    cxLabel4: TcxLabel;
    DistributionAddresscxME: TcxMaskEdit;
    procedure DistributionIDcxMEKeyPress(Sender: TObject; var Key: Char);
    procedure CancelBBClick(Sender: TObject);
    procedure ApplayBBClick(Sender: TObject);
    procedure DistributionIDcxMEEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
   fBuyLink:TfBuy;
  end;

var
  fBuySaleDummy: TfBuySaleDummy;

implementation

uses DynamicProvider, uMain;

{$R *.dfm}

procedure TfBuySaleDummy.CancelBBClick(Sender: TObject);
begin
 Close;
end;

procedure TfBuySaleDummy.DistributionIDcxMEKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then
  begin
   with fMain do
    begin
     AnyCommandCDS.Close;
     AnyCommandCDS.CommandText:=
      'select * from buytrans_buysaledummydb('+DistributionIDcxME.Text+')';
     AnyCommandCDS.Open;
     if AnyCommandCDS.IsEmpty then
      MessageDlg('Не найдено ни одного адреса ТТ.',mtError,[mbOk],0);

     ContractorcxME.Text:=AnyCommandCDS.FieldByName('firmname').AsString;
     TradeemployeecxME.Text:=AnyCommandCDS.FieldByName('tename').AsString;
     DistributionAddresscxME.Text:=AnyCommandCDS.FieldByName('address').AsString;
    end;
   ApplayBB.SetFocus;
  end;
end;

procedure TfBuySaleDummy.ApplayBBClick(Sender: TObject);

begin
 if DistributionIDcxME.Text='' then
  exit;

 if ContractorcxME.Text='' then
  exit;

 if TradeemployeecxME.Text='' then
  exit;

 if DistributionAddresscxME.Text='' then
  exit;

 ModalResult:=mrOk;
end;

procedure TfBuySaleDummy.DistributionIDcxMEEnter(Sender: TObject);
begin
 ContractorcxME.Clear;
 TradeemployeecxME.Clear;
 DistributionAddresscxME.Clear;
end;

procedure TfBuySaleDummy.FormActivate(Sender: TObject);
begin
 DistributionIDcxME.Clear;
 DistributionIDcxMEEnter(Sender);
end;

end.
