unit uEgaisAct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxTextEdit, cxCheckBox;

type
  TfEgaisAct = class(TForm)
    CommentarycxTE: TcxTextEdit;
    ApplaycxButton: TcxButton;
    AcceptxCB: TcxCheckBox;
    procedure AcceptxCBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEgaisAct: TfEgaisAct;

implementation

{$R *.dfm}

procedure TfEgaisAct.AcceptxCBPropertiesEditValueChanged(Sender: TObject);
begin
 if AcceptxCB.Checked then
  begin
   if Self.Tag=3 then fEgaisAct.CommentarycxTE.Text:='Запрашиваем отмену акта ТТН';
   if Self.Tag=2 then fEgaisAct.CommentarycxTE.Text:='Принимаем продукцию';
   if Self.Tag=1 then fEgaisAct.CommentarycxTE.Text:='Подтверждаем отмену акта ТТН';
   if Self.Tag=0 then fEgaisAct.CommentarycxTE.Text:='Принимаем изменения';
   fEgaisAct.AcceptxCB.Caption:='Подтвердить';
  end
 else
  begin
   if Self.Tag=2 then fEgaisAct.CommentarycxTE.Text:='Отказываемся от товара';
   if Self.Tag=1 then fEgaisAct.CommentarycxTE.Text:='Отклоняем отмену акта ТТН';
   if Self.Tag=0 then fEgaisAct.CommentarycxTE.Text:='Не принимаем изменения';
   fEgaisAct.AcceptxCB.Caption:='Отклонить';
  end;
end;

end.
