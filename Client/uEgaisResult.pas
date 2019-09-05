unit uEgaisResult;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit, DBTables,DB,
  ExtCtrls, Menus, StdCtrls, cxButtons, cxRadioGroup;

type
  TfEgaisResult = class(TForm)
    ResultcxMemo: TcxMemo;
    BottomPanel: TPanel;
    GetcxButton: TcxButton;
    UTF8cxRB: TcxRadioButton;
    AnsicxRB: TcxRadioButton;
    procedure GetcxButtonClick(Sender: TObject);
    procedure UTF8cxRBClick(Sender: TObject);
    procedure AnsicxRBClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEgaisResult: TfEgaisResult;

implementation

uses uMain;

{$R *.dfm}

procedure TfEgaisResult.GetcxButtonClick(Sender: TObject);
begin
 ResultcxMemo.Clear;
 with fMain.AnyCommandCDS do
  begin
   Close;
   CommandText:='select * from buytrans_egaiserror('+IntToStr(Self.Tag)+','+IntToStr(ResultcxMemo.Tag)+')';
   Open;

   if (not IsEmpty) then
    ResultcxMemo.Lines.LoadFromStream(CreateBlobStream(TBlobField(FieldByName('xmlfile')),bmRead));
  end;
end;

procedure TfEgaisResult.UTF8cxRBClick(Sender: TObject);
begin
  ResultcxMemo.Lines.Text:=UTF8ToAnsi(ResultcxMemo.Lines.Text);
end;

procedure TfEgaisResult.AnsicxRBClick(Sender: TObject);
begin
  ResultcxMemo.Lines.Text:=AnsiToUTF8(ResultcxMemo.Lines.Text);
end;

procedure TfEgaisResult.FormActivate(Sender: TObject);
begin
 GetcxButtonClick(Sender);
 UTF8cxRB.Checked:=true;
 UTF8cxRBClick(Sender);
end;

end.
