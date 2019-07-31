unit uDelivered;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, StdCtrls, ExtCtrls, cxTextEdit, cxMaskEdit;

type
  TfDelivered = class(TForm)
    StatusScannerLB: TListBox;
    TypeRG: TRadioGroup;
    Panel1: TPanel;
    EnterScannerButton: TButton;
    BarcodeScannercxME: TcxMaskEdit;
    ReasonPanel: TPanel;
    Label1: TLabel;
    ReasoncxME: TcxMaskEdit;
    ScannerDocStatusPanel: TPanel;
    procedure TypeRGClick(Sender: TObject);
    procedure BarcodeScannercxMEKeyPress(Sender: TObject; var Key: Char);
    procedure EnterScannerButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDelivered: TfDelivered;

implementation

uses uMain;

{$R *.dfm}

procedure TfDelivered.FormCreate(Sender: TObject);
begin
 TypeRG.Items.Clear;
 with fMain.AnyCommandCDS do
  begin
   Close;
   CommandText:='select * from saledeliveredtype order by id';
   Open;
   while not EOF do
    begin
     TypeRG.Items.Add(FieldByName('name').AsString);
     Next;
    end
  end;
 TypeRG.ItemIndex:=0;
end;

procedure TfDelivered.TypeRGClick(Sender: TObject);
begin
 ScannerDocStatusPanel.Visible:=false;
 TypeRG.Visible:=false;
 ReasonPanel.Visible:=(TypeRG.ItemIndex=0);
 TypeRG.Visible:=true;
 ScannerDocStatusPanel.Visible:=true;
end;

procedure TfDelivered.BarcodeScannercxMEKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then
  begin
   if (TypeRG.ItemIndex=0) and (ReasoncxME.Text='') then
    begin
     ScannerDocStatusPanel.Caption:=
      'Не введена причина отмены статуса доставленной накладной';
     exit;
    end;

   fMain.SocketConnection.AppServer.DBStartTransaction;
   try
    fMain.InUpDelCDS.Close;
    fMain.InUpDelCDS.CommandText:=
     'select * from buytrans_deliveredscan('+
       #39+BarcodeScannercxME.Text+#39+','+
       IntToStr(BarcodeScannercxME.Tag)+','+
       IntToStr(TypeRG.ItemIndex)+','+
       #39+ReasoncxME.Text+#39+',0)';
    fMain.InUpDelCDS.Open;
    ScannerDocStatusPanel.Caption:=fMain.InUpDelCDS.Fields[0].AsString;
    BarcodeScannercxME.Tag:=fMain.InUpDelCDS.Fields[1].AsInteger;
    fMain.SocketConnection.AppServer.DBCommit;
    TypeRG.ItemIndex:=1;
   except on E:Exception do
    begin
     fMain.SocketConnection.AppServer.DBRollback;
     MessageDlg('При изменении данных произошла ошибка. Исходное сообщение ->"'+
             E.Message+'"',mtError,[mbOk],0);
    end;//on
   end;//except

   if StatusScannerLB.Items.Count>6 then
    StatusScannerLB.Items.Delete(0);
   StatusScannerLB.Items.Add(ScannerDocStatusPanel.Caption);
   BarcodeScannercxME.Clear;
   BarcodeScannercxME.SetFocus;
  end;
end;

procedure TfDelivered.EnterScannerButtonClick(Sender: TObject);
begin
 if Self.Tag=0 then exit;
 fMain.SocketConnection.AppServer.DBStartTransaction;
 try
  fMain.InUpDelCDS.Close;
  fMain.InUpDelCDS.CommandText:=
   'execute procedure buytrans_returnisdeliveredup('+IntToStr(Self.Tag)+','+IntToStr(TypeRG.ItemIndex)+')';
  fMain.InUpDelCDS.Execute;
  fMain.SocketConnection.AppServer.DBCommit;
 except on E:Exception do
  begin
   fMain.SocketConnection.AppServer.DBRollback;
   MessageDlg('Ошибка: '+E.Message,mtError,[mbOk],0);
  end;//on
 end;//except
end;

procedure TfDelivered.FormActivate(Sender: TObject);
begin
 TypeRG.ItemIndex:=1;
end;

end.
