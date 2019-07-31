unit uInventoryListClose;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, Buttons,
  ExtCtrls, DB, DBClient;

type
  TfInventoryListClose = class(TForm)
    InputInventoryIDLbl: TLabel;
    InputCodeOkBB: TBitBtn;
    InputCodeCancelBB: TBitBtn;
    InventoryActcxLCB: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure InputCodeOkBBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fInventoryListClose: TfInventoryListClose;

implementation

uses DynamicProvider, uMain;

{$R *.dfm}

procedure TfInventoryListClose.FormCreate(Sender: TObject);
var RetVal: OleVariant;
    CompName: string;
    CDS: TClientDataSet;
    DS: TDataSource;
begin
 RetVal := 1;
 CompName := 'InventoryNotMake';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (FindDynamicClientDataSet(Self ,CDS, CompName + 'CDS', True, fMain.SocketConnection, CompName + 'DSP')
  and FindDynamicDataSource(Self, DS, CompName + 'DS', True, CDS) and RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName ,mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   CDS.CommandText:='select * from buytrans_invnotmake(:inventorylistid)';
   InventoryActcxLCB.Properties.ListSource := DS;
   InventoryActcxLCB.Properties.KeyFieldNames := 'ID';
   InventoryActcxLCB.Properties.ListFieldNames := 'ID;NAME;PRESENT;BASIS';
  end;
end;

procedure TfInventoryListClose.InputCodeOkBBClick(Sender: TObject);
begin
 if InventoryActcxLCB.EditValue < 0 then
  MessageDLG('Не выбрана инвентаризационная опись-акт.', mtError, [mbOK], 0)
 else
  Self.ModalResult:=mrOk;
end;

end.
