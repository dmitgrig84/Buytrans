unit uTransportationEditPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxLabel, uTransportation, cxCurrencyEdit;

type
  TfTransportationEditPrice = class(TForm)
    RetailPricecxLabel: TcxLabel;
    ChangecxButton: TcxButton;
    RetailPricecxCE: TcxCurrencyEdit;
    CancelcxButton: TcxButton;
    procedure FormActivate(Sender: TObject);
    procedure ChangecxButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
  fTransportationLink:TfTransportation;
    { Public declarations }
  end;

var
  fTransportationEditPrice: TfTransportationEditPrice;

implementation

uses uMain;

{$R *.dfm}

procedure TfTransportationEditPrice.FormActivate(Sender: TObject);
begin
  RetailPricecxCE.EditValue := fTransportationLink.TransportationDetailCDSRETAILPRICE.Value;
end;

procedure TfTransportationEditPrice.ChangecxButtonClick(Sender: TObject);
begin
 if RetailPricecxCE.Text='' then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'update drinktransportation dtr set dtr.retailprice = ' +FloatToStr(RetailPricecxCE.EditValue) +
    ' where dtr.id = ' + fTransportationLink.TransportationDetailCDSTRANSPORTATIONDETAILID.AsString;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
   fMain.RefreshCDS(fTransportationLink.TransportationDetailCDS);
  except on E: Exception do
   begin
    SocketConnection.AppServer.DBRollback;
    MessageDlg('Ошибка: ' + E.Message,mtError,[mbOk],0);
    exit;
   end; //on
  end; //try..except

  Close;
end;

end.
