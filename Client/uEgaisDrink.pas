unit uEgaisDrink;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxLabel, cxTextEdit,
  cxMaskEdit;

type
  TfEgaisDrink = class(TForm)
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
  fEgaisDrink: TfEgaisDrink;

implementation

uses uMain;

{$R *.dfm}

procedure TfEgaisDrink.DrinkcxMEKeyPress(Sender: TObject; var Key: Char);
begin
 if DrinkcxME.Text='' then
  exit;
 if Key=#13 then
  with fMain do
   begin
    AnyCommandCDS.Close;
    if Length(DrinkcxME.Text)=13 then
     AnyCommandCDS.CommandText:=
      'select d.printmark from drink d where d.strichcode='+#39+DrinkcxME.Text+#39
    else
     AnyCommandCDS.CommandText:=
      'select d.printmark from drink d where d.id='+DrinkcxME.Text;
    AnyCommandCDS.Open;
    if AnyCommandCDS.IsEmpty then
     MessageDLG('Товар с заданным кодом не найден.',mtInformation,[mbOk],0)
    else
     DrinkcxLabel.Caption:=AnyCommandCDS.Fields[0].AsString;
   end;
end;

procedure TfEgaisDrink.ChangecxButtonClick(Sender: TObject);
begin
 if DrinkcxME.Text='' then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'execute procedure buytrans_egaisbuydetaildrink('+self.DrinkcxME.Text+','+IntToStr(self.Tag)+')';
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E: Exception do
   begin
    SocketConnection.AppServer.DBRollback;
    MessageDlg('Ошибка добавления накладной!' + #13+ ' ' + E.Message,mtError,[mbOk],0);
    exit;
   end; //on
  end; //try..except
end;

end.
