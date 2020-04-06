unit uDrinkEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxLabel, cxTextEdit,
  cxMaskEdit;

type
  TfDrinkEdit = class(TForm)
    DrinkcxME: TcxMaskEdit;
    DrinkcxLabel: TcxLabel;
    ChangecxButton: TcxButton;
    procedure DrinkcxMEKeyPress(Sender: TObject; var Key: Char);
    procedure ChangecxButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDrinkEdit: TfDrinkEdit;

implementation

uses uMain;

{$R *.dfm}

procedure TfDrinkEdit.DrinkcxMEKeyPress(Sender: TObject; var Key: Char);
var CmdTxt,MsgTxt:string;

begin
 if DrinkcxME.Text='' then
  exit;
 if Key=#13 then
  with fMain do
   begin

    if Self.Tag=6 then
     begin
      CmdTxt:='select d.printmark from drinkbuy db join drinkkind dk on dk.id=db.drinkkindid join drink d on d.id=dk.drinkid where db.id='+DrinkcxME.Text;
      MsgTxt:='Позиция с заданным кодом не найдена. '+CmdTxt;
     end
    else
     begin

      if Length(DrinkcxME.Text)=13 then
       CmdTxt:='select d.printmark from drink d where d.strichcode='+#39+DrinkcxME.Text+#39
      else
       CmdTxt:='select d.printmark from drink d where d.id='+DrinkcxME.Text;
      MsgTxt:='Товар с заданным кодом не найден. '+CmdTxt;
     end;

     AnyCommandCDS.Close;
     AnyCommandCDS.CommandText:=CmdTxt;
     AnyCommandCDS.Open;
    if AnyCommandCDS.IsEmpty then
     MessageDLG(MsgTxt,mtInformation,[mbOk],0)
    else
     DrinkcxLabel.Caption:=AnyCommandCDS.Fields[0].AsString;
   end;
end;

procedure TfDrinkEdit.ChangecxButtonClick(Sender: TObject);
begin
 if DrinkcxME.Text='' then
  exit;

 ModalResult:=mrOk;
end;

end.
