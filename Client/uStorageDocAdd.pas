unit uStorageDocAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxSpinEdit, cxTextEdit, cxLabel, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, Buttons, ExtCtrls, DB, DBClient;

type
  TfStorageDocAdd = class(TForm)
    BuyAddButtonPanel: TPanel;
    ApplayBB: TBitBtn;
    CancelBB: TBitBtn;
    NewBuyTypeLabel: TLabel;
    TerminalcxLCB: TcxLookupComboBox;
    NewBuyDateLabel: TLabel;
    PresentcxDE: TcxDateEdit;
    cxLabel12: TcxLabel;
    BasiscxTE: TcxTextEdit;
    cxLabel15: TcxLabel;
    CountUnitcxSE: TcxSpinEdit;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure ApplayBBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fStorageDocAdd: TfStorageDocAdd;

implementation

uses uMain,DynamicProvider;

{$R *.dfm}

procedure TfStorageDocAdd.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
 RetVal:=1;
 CompName:='StorageDocTerminal';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (FindDynamicClientDataSet(self,CDS,CompName+'CDS',true,fMain.SocketConnection,CompName+'DSP')
  and FindDynamicDataSource(self,DS,CompName+'DS',true,CDS) and RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   CDS.CommandText:=
    'select tr.id,tr.name from employeetoterminal ett '+
    'join terminal tr on tr.id=ett.terminalid '+
    'where ett.login=user';
   TerminalcxLCB.Properties.ListSource:=DS;
   TerminalcxLCB.Properties.KeyFieldNames:='ID';
   TerminalcxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
   fMain.RefreshCDS(CDS);
  end;

 PresentcxDE.Date:=Date;
end;

procedure TfStorageDocAdd.ApplayBBClick(Sender: TObject);
begin
 if TerminalcxLCB.Text='' then
  begin
   MessageDlg('Не выбран терминал.',mtError,[mbOk],0);
   exit;
  end;//if

 if PresentcxDE.Text='' then
  begin
   MessageDlg('Не задана дата.',mtError,[mbOk],0);
   exit;
  end;//if

 if (BasiscxTE.Text='') then
  begin
   MessageDlg('Не указано основание.',mtError,[mbOk],0);
   exit;
  end;//if

 if CountUnitcxSE.Value<=0 then
  begin
   MessageDlg('Не задано кол-во.',mtError,[mbOk],0);
   exit;
  end;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'insert into storagedoc(terminalid,present,basis,countunit) '+
    'values('+IntToStr(TerminalcxLCB.EditValue)+','+
             #39+DateToStr(PresentcxDE.Date)+#39+','+
             #39+BasiscxTE.Text+#39+','+
             IntToStr(CountUnitcxSE.Value)+')';
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E: Exception do
   begin
    SocketConnection.AppServer.DBRollback;
    MessageDlg('Ошибка добавления документа!' + #13+ ' ' + E.Message+#13+InUpDelCDS.CommandText,mtError,[mbOk],0);
    exit;
   end; //on
  end; //try..except

end;

end.
