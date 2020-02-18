unit uEgaisSaleAct;

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
  cxImageComboBox;

type
  TfEgaisSaleAct = class(TForm)
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
    StoragecxLCB: TcxLookupComboBox;
    EgaisSaleActCDS: TClientDataSet;
    EgaisBuyDS: TDataSource;
    EgaisSaleActDetailCDS: TClientDataSet;
    EgaisBuyDetailDS: TDataSource;
    EgaisSaleActDetailCDSID: TIntegerField;
    PM: TPopupMenu;
    BuyCreateMI: TMenuItem;
    AcceptMI: TMenuItem;
    EgaisSaleActCDSID: TIntegerField;
    EgaisSaleActCDSCONTRACTORNAME: TStringField;
    EgaisSaleActCDSCONTRACTORINN: TStringField;
    EgaisSaleActCDSCONTRACTORKPP: TStringField;
    EgaisSaleActCDSDISTRIBUTIONID: TIntegerField;
    EgaisSaleActCDSADDRESS: TStringField;
    EgaisSaleActCDSCLIENTREGID: TStringField;
    EgaisSaleActCDSSALEID: TIntegerField;
    EgaisSaleActCDSSQNNO: TStringField;
    EgaisSaleActCDSPRESENT: TDateTimeField;
    EgaisSaleActCDSACTNUMBER: TStringField;
    EgaisSaleActCDSACTPRESENT: TDateTimeField;
    EgaisSaleActCDSWBREGID: TStringField;
    EgaisSaleActCDSNOTE: TStringField;
    EgaisSaleActCDSEGAISSTATUS: TSmallintField;
    ViewcxGridDBTVID: TcxGridDBColumn;
    ViewcxGridDBTVCONTRACTORNAME: TcxGridDBColumn;
    ViewcxGridDBTVCONTRACTORINN: TcxGridDBColumn;
    ViewcxGridDBTVCONTRACTORKPP: TcxGridDBColumn;
    ViewcxGridDBTVDISTRIBUTIONID: TcxGridDBColumn;
    ViewcxGridDBTVADDRESS: TcxGridDBColumn;
    ViewcxGridDBTVCLIENTREGID: TcxGridDBColumn;
    ViewcxGridDBTVSALEID: TcxGridDBColumn;
    ViewcxGridDBTVSQNNO: TcxGridDBColumn;
    ViewcxGridDBTVPRESENT: TcxGridDBColumn;
    ViewcxGridDBTVACTNUMBER: TcxGridDBColumn;
    ViewcxGridDBTVACTPRESENT: TcxGridDBColumn;
    ViewcxGridDBTVWBREGID: TcxGridDBColumn;
    ViewcxGridDBTVNOTE: TcxGridDBColumn;
    ViewcxGridDBTVEGAISSTATUS: TcxGridDBColumn;
    EgaisSaleActCDSCONTRACTORID: TIntegerField;
    ViewcxGridDBTVCONTRACTORID: TcxGridDBColumn;
    EgaisIL: TImageList;
    EgaisSaleActDetailCDSDRINKSALEID: TIntegerField;
    EgaisSaleActDetailCDSDRINKKINDID: TIntegerField;
    EgaisSaleActDetailCDSALCCODE: TStringField;
    EgaisSaleActDetailCDSDRINKID: TIntegerField;
    EgaisSaleActDetailCDSDRINKNAME: TStringField;
    EgaisSaleActDetailCDSINFORMA_REGID: TStringField;
    EgaisSaleActDetailCDSINFORMB_REGID: TStringField;
    EgaisSaleActDetailCDSSALECOUNTUNIT: TIntegerField;
    EgaisSaleActDetailCDSREALCOUNTUNIT: TIntegerField;
    EgaisSaleActDetailCDSDELTACOUNT: TIntegerField;
    DetailcxGridDBTVID: TcxGridDBColumn;
    DetailcxGridDBTVDRINKSALEID: TcxGridDBColumn;
    DetailcxGridDBTVDRINKKINDID: TcxGridDBColumn;
    DetailcxGridDBTVALCCODE: TcxGridDBColumn;
    DetailcxGridDBTVDRINKID: TcxGridDBColumn;
    DetailcxGridDBTVDRINKNAME: TcxGridDBColumn;
    DetailcxGridDBTVINFORMA_REGID: TcxGridDBColumn;
    DetailcxGridDBTVINFORMB_REGID: TcxGridDBColumn;
    DetailcxGridDBTVSALECOUNTUNIT: TcxGridDBColumn;
    DetailcxGridDBTVREALCOUNTUNIT: TcxGridDBColumn;
    DetailcxGridDBTVDELTACOUNT: TcxGridDBColumn;
    EgaisSaleActCDSFLAGCREATE: TSmallintField;
    EgaisSaleActCDSFLAGACCEPTED: TSmallintField;
    LineMI: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure BegincxDEPropertiesChange(Sender: TObject);
    procedure EndcxDEPropertiesChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RefreshcxButtonClick(Sender: TObject);
    procedure EgaisSaleActCDSBeforeOpen(DataSet: TDataSet);
    procedure EgaisBuyDSDataChange(Sender: TObject; Field: TField);
    procedure EgaisSaleActDetailCDSBeforeOpen(DataSet: TDataSet);
    procedure BuyCreateMIClick(Sender: TObject);
    procedure PMPopup(Sender: TObject);
    procedure AcceptMIClick(Sender: TObject);
    procedure DetailDrinkMIClick(Sender: TObject);
    procedure DetailPMPopup(Sender: TObject);
  private
    { Private declarations }
  public
   fBuyLink:TfBuy;
  end;

var
  fEgaisSaleAct: TfEgaisSaleAct;

implementation

uses uMain, DynamicProvider, uEgaisAct;

{$R *.dfm}

procedure TfEgaisSaleAct.FormCreate(Sender: TObject);
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
 CompName:='EgaisSaleAct';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   EgaisSaleActCDS.ProviderName:=CompName+'DSP';
   EgaisSaleActCDS.RemoteServer:=fMain.SocketConnection;
   EgaisSaleActCDS.CommandText:='select * from buytrans_egaissaleact(:begindate,:enddate,:storageid)';
  end;

 RetVal:=1;
 CompName:='EgaisSaleActDetail';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   EgaisSaleActDetailCDS.ProviderName:=CompName+'DSP';
   EgaisSaleActDetailCDS.RemoteServer:=fMain.SocketConnection;
   EgaisSaleActDetailCDS.CommandText:='select * from buytrans_egaissaleactdetail(:egaissaleactid)';
  end;

 RetVal:=1;
 CompName:='EgaisSaleActStorage';
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
    'select * from buytrans_egaissaleactstorage';
   StoragecxLCB.Properties.ListSource:=DS;
   StoragecxLCB.Properties.KeyFieldNames:='STORAGEID';
   StoragecxLCB.Properties.ListFieldNames:='STORAGENAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;
 BegincxDE.Date:=Date;

 fMain.AnyCommandCDS.Close;
 fMain.AnyCommandCDS.CommandText:=
  'select * from egaissalestatus order by id';
 fMain.AnyCommandCDS.Open;
 Img:=TBitmap.Create;
 Items:=(ViewcxGridDBTVEGAISSTATUS.Properties as TcxImageComboBoxProperties).Items;
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

end;

procedure TfEgaisSaleAct.BegincxDEPropertiesChange(Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  EndcxDE.Date:=BegincxDE.Date;
end;

procedure TfEgaisSaleAct.EndcxDEPropertiesChange(Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  BegincxDE.Date:=EndcxDE.Date;
end;


procedure TfEgaisSaleAct.FormActivate(Sender: TObject);
begin
 fMain.RefreshCDS(TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet));
 if StoragecxLCB.Text<>'' then
  fMain.RefreshCDS(EgaisSaleActCDS);
end;

procedure TfEgaisSaleAct.RefreshcxButtonClick(Sender: TObject);
begin
 if StoragecxLCB.Text<>'' then
  fMain.RefreshCDS(EgaisSaleActCDS)
 else
  MessageDlg('Не выбран склад.',mtError,[mbOk],0);
end;

procedure TfEgaisSaleAct.EgaisSaleActCDSBeforeOpen(DataSet: TDataSet);
begin
 EgaisSaleActCDS.Params[0].AsDateTime:=BegincxDE.Date;
 EgaisSaleActCDS.Params[1].AsDateTime:=EndcxDE.Date;
 EgaisSaleActCDS.Params[2].AsInteger:=StoragecxLCB.EditValue;
end;

procedure TfEgaisSaleAct.EgaisBuyDSDataChange(Sender: TObject; Field: TField);
begin
 fMain.RefreshCDS(EgaisSaleActDetailCDS);
end;

procedure TfEgaisSaleAct.EgaisSaleActDetailCDSBeforeOpen(DataSet: TDataSet);
begin
 EgaisSaleActDetailCDS.Params[0].AsInteger:=EgaisSaleActCDSID.AsInteger;
end;

procedure TfEgaisSaleAct.BuyCreateMIClick(Sender: TObject);
var buyid:integer;
begin
 if EgaisSaleActCDS.IsEmpty then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'select * from buytrans_egaissaleactcreate('+
    EgaisSaleActCDSID.AsString+','+
    IntToStr(StoragecxLCB.EditValue)+')';
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
   InputDateFiltercxDE.Date:=EgaisSaleActCDSACTPRESENT.AsDateTime;
   DirectorViewFiltercxICBPropertiesCloseUp(self);
   BuyCDS.Locate('ID',buyid,[]);
  end;

 fMain.RefreshCDS(EgaisSaleActCDS);
end;

procedure TfEgaisSaleAct.PMPopup(Sender: TObject);
var flag:boolean;
begin
 flag:=not EgaisSaleActCDS.IsEmpty;

 BuyCreateMI.Visible:=flag and (EgaisSaleActCDSFLAGCREATE.AsInteger=1);
 AcceptMI.Visible:=flag and (not EgaisSaleActCDSFLAGACCEPTED.IsNull);
 LineMI.Visible:=BuyCreateMI.Visible and AcceptMI.Visible;
end;

procedure TfEgaisSaleAct.AcceptMIClick(Sender: TObject);
begin
 if EgaisSaleActCDS.IsEmpty or EgaisSaleActCDSFLAGACCEPTED.IsNull then
  exit;

 if (not Assigned(fEgaisAct)) then
  Application.CreateForm(TfEgaisAct, fEgaisAct);

 if EgaisSaleActCDSFLAGACCEPTED.AsInteger=0 then
  begin
   fEgaisAct.CommentarycxTE.Text:='Отказываемся от изменений';
   fEgaisAct.AcceptxCB.Checked:=false;
   fEgaisAct.AcceptxCB.Caption:='Отклонить';
  end;

 if EgaisSaleActCDSFLAGACCEPTED.AsInteger=1 then
  begin
   fEgaisAct.CommentarycxTE.Text:='Принимаем изменения';
   fEgaisAct.AcceptxCB.Checked:=true;
   fEgaisAct.AcceptxCB.Caption:='Подтвердить';
  end;

 if fEgaisAct.ShowModal=mrOk then
  begin
   if MessageDlg('Вы действительно хотите отправить подтверждение акта расхождения в ЕГАИС?'+#10+#13+
                 'Её далнейшее редактирование будет запрещено.' ,mtConfirmation,[mbYes,mbNo],0)<>mrYes then
    exit;

   with fMain do
    try
     SocketConnection.AppServer.DBStartTransaction;
     InUpDelCDS.Close;
     InUpDelCDS.CommandText:=
      'execute procedure buytrans_egaissaleactanswer ('+EgaisSaleActCDSSALEID.AsString+','+#39+fEgaisAct.CommentarycxTE.Text+#39+')';
     InUpDelCDS.Execute;
     SocketConnection.AppServer.DBCommit;
    except on E: Exception do
     begin
      SocketConnection.AppServer.DBRollback;
      MessageDlg('Ошибка добавления накладной!' + #13+ ' ' + E.Message,mtError,[mbOk],0);
      exit;
     end; //on
    end; //try..except}
   fMain.RefreshCDS(EgaisSaleActCDS);
  end;
end;

procedure TfEgaisSaleAct.DetailDrinkMIClick(Sender: TObject);
begin
{ if (not Assigned(fEgaisDrink)) then
  Application.CreateForm(TfEgaisDrink, fEgaisDrink);
 fEgaisDrink.Tag:=EgaisBuyDetailCDSID.AsInteger;
 if fEgaisDrink.ShowModal=mrOk then
  fMain.RefreshCDS(EgaisBuyDetailCDS);}
end;

procedure TfEgaisSaleAct.DetailPMPopup(Sender: TObject);
begin
// DetailDrinkMI.Visible:=(EgaisBuyCDSSTATUS.AsInteger in [0,1,2]);
end;

end.
