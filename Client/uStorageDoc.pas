unit uStorageDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, StdCtrls, Buttons, RXCtrls, cxSplitter, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, cxCurrencyEdit, DBClient, Menus,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,cxExportGrid4Link,
  cxImageComboBox, frxClass, frxDBSet;

type
  TfStorageDoc = class(TForm)
    BuyDeltaDocFactTopPanel: TPanel;
    ViewcxGridDBTV: TcxGridDBTableView;
    ViewcxGridLevel: TcxGridLevel;
    ViewcxGrid: TcxGrid;
    Panel20: TPanel;
    RxLabel4: TRxLabel;
    RefreshBB: TBitBtn;
    BegincxDE: TcxDateEdit;
    EndcxDE: TcxDateEdit;
    AddBB: TBitBtn;
    ViewCDS: TClientDataSet;
    ViewDS: TDataSource;
    ViewPM: TPopupMenu;
    AddMI: TMenuItem;
    DeleteMI: TMenuItem;
    ViewCDSDEPARTMENTID: TIntegerField;
    ViewCDSDEPARTMENTNAME: TStringField;
    ViewCDSTERMINALID: TIntegerField;
    ViewCDSTERMINLANAME: TStringField;
    ViewCDSSTORAGEDOCID: TIntegerField;
    ViewCDSPRESENT: TDateTimeField;
    ViewCDSBASIS: TStringField;
    ViewCDSCOUNTUNIT: TIntegerField;
    ViewCDSISSCAN: TIntegerField;
    ViewCDSISENTER: TIntegerField;
    ViewCDSWHENINSERT: TDateTimeField;
    ViewCDSWHOINSERT: TStringField;
    ViewcxGridDBTVDEPARTMENTID: TcxGridDBColumn;
    ViewcxGridDBTVDEPARTMENTNAME: TcxGridDBColumn;
    ViewcxGridDBTVTERMINALID: TcxGridDBColumn;
    ViewcxGridDBTVTERMINLANAME: TcxGridDBColumn;
    ViewcxGridDBTVSTORAGEDOCID: TcxGridDBColumn;
    ViewcxGridDBTVPRESENT: TcxGridDBColumn;
    ViewcxGridDBTVBASIS: TcxGridDBColumn;
    ViewcxGridDBTVCOUNTUNIT: TcxGridDBColumn;
    ViewcxGridDBTVISSCAN: TcxGridDBColumn;
    ViewcxGridDBTVISENTER: TcxGridDBColumn;
    ViewcxGridDBTVWHENINSERT: TcxGridDBColumn;
    ViewcxGridDBTVWHOINSERT: TcxGridDBColumn;
    PrintfrxDBDataset: TfrxDBDataset;
    PrintfrxReport: TfrxReport;
    N1: TMenuItem;
    PrintMI: TMenuItem;
    PrintCDS: TClientDataSet;
    PrintCDSDEPARTMENTID: TIntegerField;
    PrintCDSDEPARTMENTNAME: TStringField;
    PrintCDSTERMINALID: TIntegerField;
    PrintCDSTERMINLANAME: TStringField;
    PrintCDSPRESENT: TDateTimeField;
    PrintCDSBASIS: TStringField;
    PrintCDSCOUNTUNIT: TIntegerField;
    PrintCDSWHENINSERT: TDateTimeField;
    PrintCDSWHOINSERT: TStringField;
    PrintCDSSTORAGEDOCBARCODE: TStringField;
    PrintCDSDOCSQNNO: TStringField;
    SetNotClearMI: TMenuItem;
    N3: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure RefreshBBClick(Sender: TObject);
    procedure AddBBClick(Sender: TObject);
    procedure BuyDeltaDocFactBegincxDEPropertiesChange(Sender: TObject);
    procedure BuyDeltaDocFactEndcxDEPropertiesChange(Sender: TObject);
    procedure DeleteMIClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ViewPMPopup(Sender: TObject);
    procedure ViewCDSBeforeOpen(DataSet: TDataSet);
    procedure PrintMIClick(Sender: TObject);
    procedure PrintCDSBeforeOpen(DataSet: TDataSet);
    procedure SetNotClearMIClick(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  fStorageDoc: TfStorageDoc;

implementation

uses uMain,DynamicProvider, uStorageDocAdd;

{$R *.dfm}

procedure TfStorageDoc.BuyDeltaDocFactBegincxDEPropertiesChange(
  Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  EndcxDE.Date:=BegincxDE.Date;
end;

procedure TfStorageDoc.BuyDeltaDocFactEndcxDEPropertiesChange(
  Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  BegincxDE.Date:=EndcxDE.Date;
end;

procedure TfStorageDoc.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
 fMain.FloatToBcd(self);

 RetVal:=1;
 CompName:='StorageDocView';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   ViewCDS.ProviderName:=CompName+'DSP';
   ViewCDS.RemoteServer:=fMain.SocketConnection;
   ViewCDS.CommandText:=
    'select * from buytrans_storagedocview(:begindate,:enddate)';
  end;

 RetVal:=1;
 CompName:='StorageDocPrint';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   PrintCDS.ProviderName:=CompName+'DSP';
   PrintCDS.RemoteServer:=fMain.SocketConnection;
   PrintCDS.CommandText:=
    'select * from buytrans_storagedocprint(:storagedocid)';
  end;

 BegincxDE.Date:=Date;
 EndcxDE.Date:=Date;
end;

procedure TfStorageDoc.FormActivate(Sender: TObject);
begin
 RefreshBBClick(self)
end;

procedure TfStorageDoc.RefreshBBClick(Sender: TObject);
begin
 fMain.RefreshCDS(ViewCDS);
end;

procedure TfStorageDoc.ViewPMPopup(Sender: TObject);
begin
 DeleteMI.Enabled:=(ViewCDS.RecordCount>0);
end;

procedure TfStorageDoc.AddBBClick(Sender: TObject);
begin
 if (not Assigned(fStorageDocAdd)) then
  Application.CreateForm(TfStorageDocAdd, fStorageDocAdd);
 if fStorageDocAdd.ShowModal=mrOk then
  begin
   BegincxDE.Date:=fStorageDocAdd.PresentcxDE.Date;
   EndcxDE.Date:=fStorageDocAdd.PresentcxDE.Date;
   fMain.RefreshCDS(ViewCDS);
   ViewCDS.Last;
  end
end;

procedure TfStorageDoc.DeleteMIClick(Sender: TObject);
begin
 if MessageDLG('Удалить документ?',mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
  exit;
 with fMain do
  begin
   try
    SocketConnection.AppServer.DBStartTransaction;
    InUpDelCDS.Close;
    InUpDelCDS.CommandText:=
     'delete from storagedoc where id='+ViewCDSSTORAGEDOCID.AsString;
    InUpDelCDS.Execute;
    SocketConnection.AppServer.DBCommit;
   except on E:Exception do
    begin
     SocketConnection.AppServer.DBRollBack;
     MessageDLG('Ошибка:'+E.Message+#10#13+InUpDelCDS.CommandText,mtError,[mbOK],0);
     exit;
    end;//on
   end;//try..excep
   RefreshBBClick(self);
  end;
end;

procedure TfStorageDoc.ViewCDSBeforeOpen(DataSet: TDataSet);
begin
 ViewCDS.Params[0].AsDateTime:=BegincxDE.Date;
 ViewCDS.Params[1].AsDateTime:=EndcxDE.Date;
end;

procedure TfStorageDoc.PrintMIClick(Sender: TObject);
begin
 fMain.RefreshCDS(PrintCDS);
 PrintfrxReport.PrepareReport;
 PrintfrxReport.ShowReport;
end;

procedure TfStorageDoc.PrintCDSBeforeOpen(DataSet: TDataSet);
begin
 PrintCDS.Params[0].AsInteger:=ViewCDSSTORAGEDOCID.AsInteger;
end;

procedure TfStorageDoc.SetNotClearMIClick(Sender: TObject);
begin
 if MessageDLG('Отменить сканирование?',mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
  exit;
 with fMain do
  begin
   try
    SocketConnection.AppServer.DBStartTransaction;
    InUpDelCDS.Close;
    InUpDelCDS.CommandText:=
     'delete from storagedoc_loader where storagedocid='+ViewCDSSTORAGEDOCID.AsString;
    InUpDelCDS.Execute;
    SocketConnection.AppServer.DBCommit;
   except on E:Exception do
    begin
     SocketConnection.AppServer.DBRollBack;
     MessageDLG('Ошибка:'+E.Message+#10#13+InUpDelCDS.CommandText,mtError,[mbOK],0);
     exit;
    end;//on
   end;//try..excep
   RefreshBBClick(self);
  end;
end;

end.
