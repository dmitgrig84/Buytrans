unit uRDIBuy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxSplitter, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, RXCtrls, ExtCtrls, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, DBClient,uBuy, cxImage, ImgList,
  cxImageComboBox, cxCurrencyEdit;

type
  TfRDIBuy = class(TForm)
    TopPanel: TPanel;
    Panel20: TPanel;
    RxLabel4: TRxLabel;
    BegincxDE: TcxDateEdit;
    EndcxDE: TcxDateEdit;
    RefreshcxButton: TcxButton;
    ViewcxGrid: TcxGrid;
    ViewcxGridDBTV: TcxGridDBTableView;
    ViewcxGL: TcxGridLevel;
    DetailcxGrid: TcxGrid;
    DetailcxGridDBTV: TcxGridDBTableView;
    DetailcxGridL: TcxGridLevel;
    cxSplitter: TcxSplitter;
    ViewCDS: TClientDataSet;
    ViewDS: TDataSource;
    DetailCDS: TClientDataSet;
    DetailDS: TDataSource;
    PM: TPopupMenu;
    BuyCreateMI: TMenuItem;
    ViewIL: TImageList;
    DetailPM: TPopupMenu;
    IL: TImageList;
    ViewCDSSUPORDERID: TIntegerField;
    ViewCDSBUYFIRMID: TIntegerField;
    ViewCDSBUYFIRMNAME: TStringField;
    ViewCDSBUYDBID: TIntegerField;
    ViewCDSBUYDBADDRESS: TStringField;
    ViewCDSORDERNUM: TStringField;
    ViewCDSORDERDATE: TDateTimeField;
    ViewCDSORDERSUM: TBCDField;
    ViewCDSORDERSUMVAT: TBCDField;
    ViewCDSSTATUS: TWordField;
    ViewCDSBUYID: TIntegerField;
    ViewCDSWHENINSERT: TDateTimeField;
    ViewCDSFLAGEXISTSORDER: TSmallintField;
    ViewCDSSTORAGEDBID: TIntegerField;
    ViewCDSSTORAGEADDESS: TStringField;
    ViewCDSSTORAGEFIRMNAME: TStringField;
    ViewCDSSTORAGEID: TIntegerField;
    ViewCDSSTORAGENAME: TStringField;
    ViewcxGridDBTVSUPORDERID: TcxGridDBColumn;
    ViewcxGridDBTVBUYFIRMID: TcxGridDBColumn;
    ViewcxGridDBTVBUYFIRMNAME: TcxGridDBColumn;
    ViewcxGridDBTVBUYDBID: TcxGridDBColumn;
    ViewcxGridDBTVBUYDBADDRESS: TcxGridDBColumn;
    ViewcxGridDBTVORDERNUM: TcxGridDBColumn;
    ViewcxGridDBTVORDERDATE: TcxGridDBColumn;
    ViewcxGridDBTVORDERSUM: TcxGridDBColumn;
    ViewcxGridDBTVORDERSUMVAT: TcxGridDBColumn;
    ViewcxGridDBTVSTATUS: TcxGridDBColumn;
    ViewcxGridDBTVWHENINSERT: TcxGridDBColumn;
    ViewcxGridDBTVBUYID: TcxGridDBColumn;
    ViewcxGridDBTVFLAGEXISTSORDER: TcxGridDBColumn;
    ViewcxGridDBTVSTORAGEDBID: TcxGridDBColumn;
    ViewcxGridDBTVSTORAGEFIRMNAME: TcxGridDBColumn;
    ViewcxGridDBTVSTORAGEADDESS: TcxGridDBColumn;
    ViewcxGridDBTVSTORAGEID: TcxGridDBColumn;
    ViewcxGridDBTVSTORAGENAME: TcxGridDBColumn;
    DetailCDSID: TIntegerField;
    DetailCDSSUPDRINKID: TIntegerField;
    DetailCDSCOUNTUNIT: TFloatField;
    DetailCDSPRICE: TBCDField;
    DetailCDSSUMPRICE: TBCDField;
    DetailCDSBUYDETAILID: TIntegerField;
    DetailCDSINFORMAREGID: TStringField;
    DetailCDSINFORMBREGID: TStringField;
    DetailCDSSUMNDS: TBCDField;
    DetailCDSALCCODE: TStringField;
    DetailCDSDRINKID: TIntegerField;
    DetailCDSPRINTMARK: TStringField;
    DetailCDSPRODACTIONDATE: TStringField;
    DetailCDSSUPPRINTMARK: TStringField;
    DetailCDSHOSTCOUNTUNIT: TFloatField;
    DetailCDSDELTACOUNTUNIT: TFloatField;
    DetailcxGridDBTVID: TcxGridDBColumn;
    DetailcxGridDBTVSUPDRINKID: TcxGridDBColumn;
    DetailcxGridDBTVSUPPRINTMARK: TcxGridDBColumn;
    DetailcxGridDBTVCOUNTUNIT: TcxGridDBColumn;
    DetailcxGridDBTVPRICE: TcxGridDBColumn;
    DetailcxGridDBTVPRODACTIONDATE: TcxGridDBColumn;
    DetailcxGridDBTVALCCODE: TcxGridDBColumn;
    DetailcxGridDBTVINFORMBREGID: TcxGridDBColumn;
    DetailcxGridDBTVINFORMAREGID: TcxGridDBColumn;
    DetailcxGridDBTVSUMPRICE: TcxGridDBColumn;
    DetailcxGridDBTVSUMNDS: TcxGridDBColumn;
    DetailcxGridDBTVBUYDETAILID: TcxGridDBColumn;
    DetailcxGridDBTVDRINKID: TcxGridDBColumn;
    DetailcxGridDBTVPRINTMARK: TcxGridDBColumn;
    DetailcxGridDBTVHOSTCOUNTUNIT: TcxGridDBColumn;
    DetailcxGridDBTVDELTACOUNTUNIT: TcxGridDBColumn;
    EditDistributionIDMI: TMenuItem;
    ViewCDSSUPORDERTYPEID: TIntegerField;
    DetailCDSRETAILPRICE: TBCDField;
    DetailcxGridDBTVRETAILPRICE: TcxGridDBColumn;
    DeleteMI: TMenuItem;
    ExportToExcelcxButton: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure BegincxDEPropertiesChange(Sender: TObject);
    procedure EndcxDEPropertiesChange(Sender: TObject);
    procedure RefreshcxButtonClick(Sender: TObject);
    procedure ViewCDSBeforeOpen(DataSet: TDataSet);
    procedure ViewDSDataChange(Sender: TObject; Field: TField);
    procedure DetailCDSBeforeOpen(DataSet: TDataSet);
    procedure BuyCreateMIClick(Sender: TObject);
    procedure PMPopup(Sender: TObject);
    procedure EditDistributionIDMIClick(Sender: TObject);
    procedure DeleteMIClick(Sender: TObject);
    procedure ExportToExcelcxButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
   fBuyLink:TfBuy;
  end;

var
  fRDIBuy: TfRDIBuy;

implementation

uses uMain,DynamicProvider,uDistributionEdit;

{$R *.dfm}

procedure TfRDIBuy.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
    Img:TBitmap;
    BS:TStream;
    Items: TcxImageComboBoxItems;
    Item: TcxImageComboBoxItem;
begin
 RetVal:=1;
 CompName:='RDIBuy';
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
   ViewCDS.CommandText:='select * from buytrans_rdibuy(:begindate,:enddate)';
  end;

 RetVal:=1;
 CompName:='RDIBuyDetail';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   DetailCDS.ProviderName:=CompName+'DSP';
   DetailCDS.RemoteServer:=fMain.SocketConnection;
   DetailCDS.CommandText:='select * from buytrans_rdibuydetail(:suporderid,:supordertypeid)';
  end;

 BegincxDE.Date:=Date;
end;

procedure TfRDIBuy.BegincxDEPropertiesChange(Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  EndcxDE.Date:=BegincxDE.Date;
end;

procedure TfRDIBuy.EndcxDEPropertiesChange(Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  BegincxDE.Date:=EndcxDE.Date;
end;


procedure TfRDIBuy.RefreshcxButtonClick(Sender: TObject);
begin
 fMain.RefreshCDS(ViewCDS);
end;

procedure TfRDIBuy.ViewCDSBeforeOpen(DataSet: TDataSet);
begin
 ViewCDS.Params[0].AsDateTime:=BegincxDE.Date;
 ViewCDS.Params[1].AsDateTime:=EndcxDE.Date;
end;

procedure TfRDIBuy.ViewDSDataChange(Sender: TObject; Field: TField);
begin
 fMain.RefreshCDS(DetailCDS);
end;

procedure TfRDIBuy.DetailCDSBeforeOpen(DataSet: TDataSet);
begin
 DetailCDS.Params[0].AsInteger:=ViewCDSSUPORDERID.AsInteger;
 DetailCDS.Params[1].AsInteger:=ViewCDSSUPORDERTYPEID.AsInteger;
end;

procedure TfRDIBuy.BuyCreateMIClick(Sender: TObject);
var buyid:integer;
begin
 if ViewCDS.IsEmpty then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'select * from buytrans_rdibuycreate('+ViewCDSSUPORDERTYPEID.AsString+','+ViewCDSSUPORDERID.AsString+')';
   InUpDelCDS.Open;
   buyid:=InUpDelCDS.Fields[0].AsInteger;
   SocketConnection.AppServer.DBCommit;
  except on E: Exception do
   begin
    SocketConnection.AppServer.DBRollback;
    MessageDlg('Ошибка добавления накладной!' + #13+ ' ' + E.Message,mtError,[mbOk],0);
    exit;
   end; //on
  end; //try..except

 with fBuyLink do
  begin
   InputDateFiltercxDE.Date:=ViewCDSORDERDATE.AsDateTime;
   DirectorViewFiltercxICBPropertiesCloseUp(self);
   BuyCDS.Locate('ID',buyid,[]);
  end;

 fMain.RefreshCDS(ViewCDS);
end;

procedure TfRDIBuy.PMPopup(Sender: TObject);
var flag:boolean;
begin
 flag:=not ViewCDS.IsEmpty;

 BuyCreateMI.Visible:=flag and ViewCDSBUYID.IsNull and (ViewCDSFLAGEXISTSORDER.AsInteger=0);
 EditDistributionIDMI.Visible:=BuyCreateMI.Visible and (ViewCDSSUPORDERTYPEID.AsInteger in [1,2]);
 DeleteMI.Visible:=BuyCreateMI.Visible and (ViewCDSSUPORDERTYPEID.AsInteger=3);
end;

procedure TfRDIBuy.EditDistributionIDMIClick(Sender: TObject);
begin
 if (not Assigned(fDistributionEdit)) then
  Application.CreateForm(TfDistributionEdit, fDistributionEdit);
 fDistributionEdit.Caption:='Смена кода ТТ склада поступления';
 if fDistributionEdit.ShowModal=mrOk then
  begin
   with fMain do
    try
     SocketConnection.AppServer.DBStartTransaction;
     InUpDelCDS.Close;
     InUpDelCDS.CommandText:=
     'execute procedure buytrans_rdibuydistributionedit('+
       ViewCDSSUPORDERID.AsString+','+
       fDistributionEdit.DistributionIDcxME.Text+')';
     InUpDelCDS.Execute;
     SocketConnection.AppServer.DBCommit;
    except on E: Exception do
     begin
      SocketConnection.AppServer.DBRollback;
      MessageDlg('Ошибка:'+E.Message+#10#13+InUpDelCDS.CommandText,mtError,[mbOk],0);
     end; //on
    end; //try..except
    fMain.RefreshCDS(ViewCDS);
  end;
end;

procedure TfRDIBuy.DeleteMIClick(Sender: TObject);
begin
 if MessageDlg('Вы уверены в удалении документа.', mtConfirmation, [mbYes, mbNo] , 0)<>mrYes then
  exit;

 try
  with fMain do
   try
    SocketConnection.AppServer.DBStartTransaction;
    InUpDelCDS.Close;
    InUpDelCDS.CommandText:=
     'execute procedure buytrans_rdibuydelete( '+ViewCDSSUPORDERTYPEID.AsString+','+ViewCDSSUPORDERID.AsString+')';
    InUpDelCDS.Execute;
    SocketConnection.AppServer.DBCommit;
   except on E:Exception do
    begin
     SocketConnection.AppServer.DBRollBack;
     MessageDlg('Ошибка:'+E.Message+#10#13+InUpDelCDS.CommandText,mtError,[mbOk],0);
    end;//on
   end;//try..except}
 finally
  fMain.RefreshCDS(ViewCDS);
 end;
end;

procedure TfRDIBuy.ExportToExcelcxButtonClick(Sender: TObject);
begin
 fMain.ExportToExcel(Self.Caption+' с '+DateToStr(BegincxDE.Date)+' по '+DateToStr(EndcxDE.Date)+'.xls',ViewcxGrid);
end;

end.
