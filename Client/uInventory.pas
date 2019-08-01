unit uInventory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, Menus, DBClient, cxContainer,
  cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, Buttons, RXCtrls,
  cxButtons, cxImageComboBox, ImgList;

type
  TfInventory = class(TForm)
    InventoryCDS: TClientDataSet;
    InventoryDS: TDataSource;
    InventorycxGrid: TcxGrid;
    InventorycxGridDBTV: TcxGridDBTableView;
    InventorycxGL: TcxGridLevel;
    InventoryPM: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    InventoryIsNotMakeMI: TMenuItem;
    TopPanel: TPanel;
    Panel20: TPanel;
    RxLabel4: TRxLabel;
    BegincxDE: TcxDateEdit;
    EndcxDE: TcxDateEdit;
    InventoryCDSINVENTORYID: TIntegerField;
    InventoryCDSSTORAGEID: TIntegerField;
    InventoryCDSSTORAGENAME: TStringField;
    InventoryCDSPRESENT: TDateTimeField;
    InventoryCDSSQNNO: TStringField;
    InventoryCDSEMPLOYEENAME: TStringField;
    InventoryCDSBASIS: TStringField;
    InventoryCDSISMAKE: TSmallintField;
    InventoryCDSWHOINSERT: TStringField;
    InventorycxGridDBTVINVENTORYID: TcxGridDBColumn;
    InventorycxGridDBTVSTORAGEID: TcxGridDBColumn;
    InventorycxGridDBTVSTORAGENAME: TcxGridDBColumn;
    InventorycxGridDBTVPRESENT: TcxGridDBColumn;
    InventorycxGridDBTVSQNNO: TcxGridDBColumn;
    InventorycxGridDBTVEMPLOYEENAME: TcxGridDBColumn;
    InventorycxGridDBTVBASIS: TcxGridDBColumn;
    InventorycxGridDBTVISMAKE: TcxGridDBColumn;
    InventorycxGridDBTVWHOINSERT: TcxGridDBColumn;
    AddMI: TMenuItem;
    EditMI: TMenuItem;
    DeleteMI: TMenuItem;
    N5: TMenuItem;
    AddcxButton: TcxButton;
    EditcxButton: TcxButton;
    DeletecxButton: TcxButton;
    PrintcxButton: TcxButton;
    EntercxButton: TcxButton;
    N4: TMenuItem;
    PrintMI: TMenuItem;
    EnterMI: TMenuItem;
    RefreshcxButton: TcxButton;
    InventoryDetailCDS: TClientDataSet;
    InventoryDetailCDSDRINKID: TIntegerField;
    InventoryDetailCDSDRINKKINDID: TIntegerField;
    InventoryDetailCDSNAME: TStringField;
    InventoryDetailCDSBOTTLECOUNT: TFloatField;
    InventoryDetailCDSPRICE: TFloatField;
    InventoryDetailCDSSUMPRICE: TFloatField;
    InventoryDetailCDSISREADY: TSmallintField;
    InventoryDetailCDSISMAKE: TSmallintField;
    InventoryDetailCDSDOCTYPENAME: TStringField;
    InventoryDetailCDSREMPRICE: TFloatField;
    InventoryDetailCDSREMBOTTLECOUNT: TFloatField;
    InventoryDetailCDSREMSUMPRICE: TFloatField;
    InventoryDetailCDSBUYPRICE: TFloatField;
    InventoryDetailCDSBUYBOTTLECOUNT: TFloatField;
    InventoryDetailCDSBUYSUMPRICE: TFloatField;
    InventoryCDSEGAISREMOVINGSTATUSID: TIntegerField;
    EgaisIL: TImageList;
    InventorycxGridDBTVEGAISREMOVINGSTATUSID: TcxGridDBColumn;
    SendEgaisMI: TMenuItem;
    NotSendEgaisMI: TMenuItem;
    InventoryCDSEGAISSENDFLAG: TSmallintField;
    InventoryDetailCDSUNITNAME: TStringField;
    InventoryCDSTABLEID: TIntegerField;
    InventoryCDSISREGRADINGNAME: TStringField;
    InventorycxGridDBTVISREGRADINGNAME: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure InventoryCDSBeforeOpen(DataSet: TDataSet);
    procedure BegincxDEPropertiesChange(Sender: TObject);
    procedure EndcxDEPropertiesChange(Sender: TObject);
    procedure AddMIClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EditMIClick(Sender: TObject);
    procedure DeleteMIClick(Sender: TObject);
    procedure InventorycxGridDBTVCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure EntercxButtonClick(Sender: TObject);
    procedure RefreshcxButtonClick(Sender: TObject);
    procedure PrintcxButtonClick(Sender: TObject);
    procedure InventoryPMPopup(Sender: TObject);
    procedure SendEgaisMIClick(Sender: TObject);
    procedure NotSendEgaisMIClick(Sender: TObject);
    procedure InventoryIsNotMakeMIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fInventory: TfInventory;

implementation

uses uMain, uInventoryAdd, uInventoryPrint;

{$R *.dfm}

procedure TfInventory.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfInventory.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
    Img:TBitmap;
    BS:TStream;
    Items: TcxImageComboBoxItems;
    Item: TcxImageComboBoxItem;
begin
 fMain.FloatToBcd(self);
 
 RetVal:=1;
 CompName:='Inventory';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   InventoryCDS.Close;
   InventoryCDS.CommandText:=
    'select * from buytrans_inventoryview(:begindate,:enddate)';
   InventoryCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='InventoryDetail';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (RetVal<>0) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   InventoryDetailCDS.CommandText:=
    'select drinkid, unitname, drinkkindid, name, '+
    ' coalesce(remprice,buyprice) price, '+
    ' coalesce(rembottlecount,buybottlecount) bottlecount, '+
    ' coalesce(remsumprice,buysumprice) sumprice, '+
    ' doctypename, isready, ismake, '+
    ' remprice, rembottlecount, remsumprice, '+
    ' buyprice, buybottlecount, buysumprice '+
    'from buytrans_inventorydetailview(:inventoryid,:tableid) '+
    'order by orderby desc,name';
   InventoryDetailCDS.RemoteServer:=fMain.SocketConnection;
  end;

 fMain.AnyCommandCDS.Close;
 fMain.AnyCommandCDS.CommandText:=
  'select * from egaisremovingstatus order by id';
 fMain.AnyCommandCDS.Open;
 Img:=TBitmap.Create;
 Items:=(InventorycxGridDBTVEGAISREMOVINGSTATUSID.Properties as TcxImageComboBoxProperties).Items;
 Items.Clear;

 while not fMain.AnyCommandCDS.Eof do
  begin
   try
    Items.BeginUpdate;
    Item := Items.Add as TcxImageComboBoxItem;
    Item.Value := fMain.AnyCommandCDS.FieldByName('ID').Value;
    Item.Description := fMain.AnyCommandCDS.FieldByName('NAME').AsString;

    if not fMain.AnyCommandCDS.FieldByName('IMG').IsNull then
     begin
      BS:= fMain.AnyCommandCDS.CreateBlobStream(fMain.AnyCommandCDS.FieldByName('IMG') as TBlobField, bmRead);
      BS.Position:=0;
      Img.LoadFromStream(BS);
      EgaisIL.AddMasked(Img,Img.TransparentColor);
      Item.ImageIndex := fMain.AnyCommandCDS.FieldByName('ID').AsInteger;
     end;
   finally
    Items.EndUpdate;
   end;
   fMain.AnyCommandCDS.Next;
  end;


 BegincxDE.Date:=Date;
 EndcxDE.Date:=Date;

 AddMI.Enabled:=(Pos('I',fMain.AdvancedGrant)>0);
 EditMI.Enabled:=AddMI.Enabled;
 DeleteMI.Enabled:=AddMI.Enabled;
 EnterMI.Enabled:=AddMI.Enabled;

 AddcxButton.Enabled:=AddMI.Enabled;
 EditcxButton.Enabled:=AddMI.Enabled;
 DeletecxButton.Enabled:=AddMI.Enabled;
 EntercxButton.Enabled:=AddMI.Enabled;
end;

procedure TfInventory.InventoryCDSBeforeOpen(DataSet: TDataSet);
begin
 InventoryCDS.Params[0].AsDateTime:=BegincxDE.Date;
 InventoryCDS.Params[1].AsDateTime:=EndcxDE.Date;
end;

procedure TfInventory.BegincxDEPropertiesChange(Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  EndcxDE.Date:=BegincxDE.Date;
end;

procedure TfInventory.EndcxDEPropertiesChange(Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  BegincxDE.Date:=EndcxDE.Date;
end;

procedure TfInventory.AddMIClick(Sender: TObject);
begin
 if (not Assigned(fInventoryAdd)) then
  Application.CreateForm(TfInventoryAdd, fInventoryAdd);
 fInventoryAdd.fInventoryLink:=self;
 fInventoryAdd.Tag:=0;
 fInventoryAdd.ShowModal;
end;

procedure TfInventory.FormActivate(Sender: TObject);
begin
 RefreshcxButtonClick(self);
end;

procedure TfInventory.EditMIClick(Sender: TObject);
begin
 if InventoryCDS.IsEmpty then
  exit;
 if (not Assigned(fInventoryAdd)) then
  Application.CreateForm(TfInventoryAdd, fInventoryAdd);
 fInventoryAdd.fInventoryLink:=self;
 fInventoryAdd.Tag:=InventoryCDSINVENTORYID.AsInteger;
 fInventoryAdd.ApplaycxButton.Tag:=InventoryCDSTABLEID.AsInteger;
 fInventoryAdd.ShowModal;
end;

procedure TfInventory.DeleteMIClick(Sender: TObject);
begin
 if InventoryCDS.IsEmpty then
  exit;

 if MessageDlg('Удалить инвентаризационную опись-акт? ', mtConfirmation, [mbYes, mbNo] , 0)<> mrYes then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'delete from inventory where id = '+InventoryCDSINVENTORYID.AsString;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
   RefreshCDS(InventoryCDS);
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    ShowMessage('Ошибка при удалении позиции по накладной. Исх. сообщение> '+E.Message);
   end;//on
  end;//try..except}
end;

procedure TfInventory.InventorycxGridDBTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.Values[InventorycxGridDBTVISMAKE.Index]=0) then
  ACanvas.Brush.Color := $00DFDFFF;
end;

procedure TfInventory.EntercxButtonClick(Sender: TObject);
begin
 if MessageDlg('После проведения документа вы не сможете внести '+
               'в него какие либо изменения. Если вы не полностью '+
               'уверены в достоверности данных, то проверте их еще раз.'+#13#10+
               'Вы действительно хотите провести данный документ?',
               mtConfirmation,[mbNo,mbYes],0)=mrYes then
 with fMain do
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:='update inventory set make=1'+' where id='+InventoryCDSInventoryID.AsString;
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
   RefreshCDS(InventoryCDS);
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollback;
      MessageDlg('Ошибка: '+E.Message+'"',mtError,[mbOk],0);
   end;
  end;
end;

procedure TfInventory.RefreshcxButtonClick(Sender: TObject);
begin
 fMain.RefreshCDS(InventoryCDS);
end;

procedure TfInventory.PrintcxButtonClick(Sender: TObject);
begin
 if (not Assigned(fInventoryPrint)) then
  Application.CreateForm(TfInventoryPrint, fInventoryPrint);
 fInventoryPrint.fInventoryLink:=self;
 fInventoryPrint.ShowModal;
end;

procedure TfInventory.InventoryPMPopup(Sender: TObject);
begin
 InventoryIsNotMakeMI.Visible:=(InventoryCDSISMAKE.AsInteger=1) and (Pos('Z', fMain.AdvancedGrant) > 0);
 SendEgaisMI.Visible:=(InventoryCDSEGAISSENDFLAG.AsInteger=1);
 NotSendEgaisMI.Visible:=(InventoryCDSEGAISSENDFLAG.AsInteger=2);
end;

procedure TfInventory.SendEgaisMIClick(Sender: TObject);
begin
 if MessageDlg('Вы действительно хотите отправить акт в ЕГАИС?'+#10+#13+
                 'Её далнейшее редактирование будет запрещено.' ,mtConfirmation,[mbYes,mbNo],0)<>mrYes then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'execute procedure buytrans_inventoryegaissend('+InventoryCDSINVENTORYID.AsString+',1)';
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E: Exception do
   begin
    SocketConnection.AppServer.DBRollback;
    MessageDlg('Ошибка добавления акта!' + #13+ ' ' + E.Message,mtError,[mbOk],0);
    exit;
   end; //on
  end; //try..except
 fMain.RefreshCDS(InventoryCDS);
end;

procedure TfInventory.NotSendEgaisMIClick(Sender: TObject);
begin
 if MessageDlg('Вы действительно хотите отменить отправку акта в ЕГАИС?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'execute procedure buytrans_inventoryegaissend('+InventoryCDSINVENTORYID.AsString+',0)';
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E: Exception do
   begin
    SocketConnection.AppServer.DBRollback;
    MessageDlg('Ошибка добавления акта!' + #13+ ' ' + E.Message,mtError,[mbOk],0);
    exit;
   end; //on
  end; //try..except
 fMain.RefreshCDS(InventoryCDS);
end;

procedure TfInventory.InventoryIsNotMakeMIClick(Sender: TObject);
begin
 if MessageDlg('Открытие разрешает изменения в акте инвентаризации. Продолжить?', mtConfirmation,[mbYes, mbNo], 0)<>mrYes then
   exit;

 if InventoryCDSISMAKE.AsInteger <> 1 then
  begin
   MessageDLG('Нельзя открыть не проведенный акт инвентаризации', mtError, [mbOK], 0);
   exit;
  end;

  with fMain do
   try
    SocketConnection.AppServer.DBStartTransaction;
    // Изменяем состояние инвентаризации на состояние "активна"
    InUpDelCDS.Close;
    InUpDelCDS.CommandText :=
      'update inventory il set il.ismake = 0 where il.id = ' + InventoryCDSINVENTORYID.AsString;
    InUpDelCDS.Execute;
    SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDlg('Ошибка: ' + E.Message,mtError,[mbOk],0);
   end; //on E:Exception
  end; //try
 RefreshcxButtonClick(Self);
end;

end.
