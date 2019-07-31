unit uInventoryExcise;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, uInventoryList;

type
  TfInventoryExcise = class(TForm)
    ApplyButton: TButton;
    ResultLabel: TLabel;
    Label2: TLabel;
    Image1: TImage;
    ExcisecxME: TcxMaskEdit;
    procedure ApplyButtonClick(Sender: TObject);
    procedure ExciseEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
   fInventoryListLink: TfInventoryList;
   counter : Integer;
    { Public declarations }
  end;

var
  fInventoryExcise: TfInventoryExcise;

implementation

uses uMain;

{$R *.dfm}


procedure TfInventoryExcise.ApplyButtonClick(Sender: TObject);
begin
 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:= 'INSERT INTO EXCISEOPERATION (OPERATIONTYPEID, OPERATIONID, EXCISECODE) ' +
     'VALUES (2, ' + IntToStr(Self.Tag) + ',' + #39 + ExcisecxME.Text + #39 + ')';

   InUpDelCDS.Execute;
   counter := counter + 1;
   ResultLabel.Caption := 'Отсканировано ' + IntToStr(counter) +
                        ' из ' + fInventoryListLink.iFactBottlecount;
   SocketConnection.AppServer.DBCommit;
   ResultLabel.Font.Color:=clGreen;
  except on E:Exception do
   begin
   SocketConnection.AppServer.DBRollback;
   MessageDlg('Ошибка:'+E.Message+'"',mtError,[mbOk],0);
   ResultLabel.Caption:='Ошибка';
   ResultLabel.Font.Color:=clRed;
  end;//on
 end;//except
 ExcisecxME.Clear;
 ExcisecxME.SetFocus;
end;

procedure TfInventoryExcise.ExciseEditKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key=#13) then
  begin
   if (Length(ExcisecxME.Text)=68) then
    ApplyButtonClick(nil)
   else
    begin
     ResultLabel.Caption := 'Неверный код';
     ResultLabel.Font.Color := clRed;
     ExcisecxME.Clear;
    end;
 end;

end;

procedure TfInventoryExcise.FormCreate(Sender: TObject);
begin
 ResultLabel.Caption := '';
 counter := 0;
end;

end.
