unit uRegradingDetailAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxLabel, cxTextEdit, cxMaskEdit,
  StdCtrls, cxButtons, ExtCtrls, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxCurrencyEdit;

type
  TfRegradingDetailAdd = class(TForm)
    BottomPanel: TPanel;
    ApplaycxButton: TcxButton;
    CancelcxButton: TcxButton;
    cxLabel1: TcxLabel;
    Bevel1: TBevel;
    cxLabel2: TcxLabel;
    DrinkIDcxME: TcxMaskEdit;
    cxLabel6: TcxLabel;
    DrinkNamecxLCB: TcxLookupComboBox;
    ProdactionDatecxDE: TcxDateEdit;
    cxLabel3: TcxLabel;
    NewSSPricecxCE: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    TTNDatecxDE: TcxDateEdit;
    cxLabel7: TcxLabel;
    EgaisFixDatecxDE: TcxDateEdit;
    TTNNumbercxME: TcxMaskEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    EgaisFixNumbercxME: TcxMaskEdit;
    Bevel2: TBevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRegradingDetailAdd: TfRegradingDetailAdd;

implementation

{$R *.dfm}

end.
