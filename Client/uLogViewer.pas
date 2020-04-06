unit uLogViewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons;

type
  TfLogViewer = class(TForm)
    TopPanel: TPanel;
    LogMemo: TMemo;
    RefreshcxButton: TcxButton;
    procedure RefreshcxButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLogViewer: TfLogViewer;

implementation

{$R *.dfm}

procedure TfLogViewer.RefreshcxButtonClick(Sender: TObject);
begin
 LogMemo.Lines.Clear;
end;

end.
