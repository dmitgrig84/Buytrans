unit uEgaisBuy;

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
  TfEgaisBuy = class(TForm)
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
    EgaisBuyCDS: TClientDataSet;
    EgaisBuyDS: TDataSource;
    EgaisBuyCDSID: TIntegerField;
    EgaisBuyCDSIDENTITY: TStringField;
    EgaisBuyCDSNUMBER: TStringField;
    EgaisBuyCDSPRESENT: TDateTimeField;
    EgaisBuyCDSHTYPE: TStringField;
    EgaisBuyCDSUNITTYPE: TStringField;
    EgaisBuyCDSFIRMNAME: TStringField;
    EgaisBuyCDSINN: TStringField;
    EgaisBuyCDSKPP: TStringField;
    EgaisBuyDetailCDS: TClientDataSet;
    EgaisBuyDetailDS: TDataSource;
    EgaisBuyDetailCDSID: TIntegerField;
    EgaisBuyDetailCDSIDENTITY: TStringField;
    EgaisBuyDetailCDSQUANTITY: TIntegerField;
    EgaisBuyDetailCDSINFORMA_REGID: TStringField;
    EgaisBuyDetailCDSINFORMB_REGID: TStringField;
    EgaisBuyDetailCDSALCCODE: TStringField;
    EgaisBuyDetailCDSEGAISDRINKNAME: TStringField;
    EgaisBuyDetailCDSDRINKID: TIntegerField;
    EgaisBuyDetailCDSDRINKNAME: TStringField;
    DetailcxGridDBTVID: TcxGridDBColumn;
    DetailcxGridDBTVIDENTITY: TcxGridDBColumn;
    DetailcxGridDBTVQUANTITY: TcxGridDBColumn;
    DetailcxGridDBTVINFORMA_REGID: TcxGridDBColumn;
    DetailcxGridDBTVINFORMB_REGID: TcxGridDBColumn;
    DetailcxGridDBTVALCCODE: TcxGridDBColumn;
    DetailcxGridDBTVEGAISDRINKNAME: TcxGridDBColumn;
    DetailcxGridDBTVDRINKID: TcxGridDBColumn;
    DetailcxGridDBTVDRINKNAME: TcxGridDBColumn;
    PM: TPopupMenu;
    BuyCreateMI: TMenuItem;
    ViewcxGridDBTVID: TcxGridDBColumn;
    ViewcxGridDBTVIDENTITY: TcxGridDBColumn;
    ViewcxGridDBTVNUMBER: TcxGridDBColumn;
    ViewcxGridDBTVPRESENT: TcxGridDBColumn;
    ViewcxGridDBTVHTYPE: TcxGridDBColumn;
    ViewcxGridDBTVUNITTYPE: TcxGridDBColumn;
    ViewcxGridDBTVFIRMNAME: TcxGridDBColumn;
    ViewcxGridDBTVINN: TcxGridDBColumn;
    ViewcxGridDBTVKPP: TcxGridDBColumn;
    ViewcxGridDBTVEGAISBUYSTATUSID: TcxGridDBColumn;
    EgaisIL: TImageList;
    EgaisBuyDetailCDSDRINKCOUNT: TIntegerField;
    EgaisBuyDetailCDSDELTACOUNT: TIntegerField;
    DetailcxGridDBTVDRINKCOUNT: TcxGridDBColumn;
    DetailcxGridDBTVDELTACOUNT: TcxGridDBColumn;
    AcceptMI: TMenuItem;
    DetailPM: TPopupMenu;
    DetailDrinkMI: TMenuItem;
    EgaisBuyCDSHOSTFIRMID: TIntegerField;
    ViewcxGridDBTVHOSTFIRMID: TcxGridDBColumn;
    EgaisBuyCDSCLIENTREGID: TStringField;
    ViewcxGridDBTVCLIENTREGID: TcxGridDBColumn;
    EgaisBuyCDSFLAGBUYCREATE: TSmallintField;
    EgaisBuyCDSFLAGBUYACCEPT: TSmallintField;
    EgaisBuyCDSEGAISBUYSTATUSID: TIntegerField;
    LineMI: TMenuItem;
    IsReturnMI: TMenuItem;
    IL: TImageList;
    EgaisBuyCDSISRETURN: TSmallintField;
    ViewcxGridDBTVISRETURN: TcxGridDBColumn;
    EgaisBuyCDSWBREGID: TStringField;
    EgaisBuyCDSEGAISFIXNUMBER: TStringField;
    ViewcxGridDBTVEGAISFIXNUMBER: TcxGridDBColumn;
    ViewcxGridDBTVWBREGID: TcxGridDBColumn;
    EgaisBuyDetailCDSPRICE: TBCDField;
    DetailcxGridDBTVPRICE: TcxGridDBColumn;
    EgaisBuyDetailCDSBOTTLINGDATE: TStringField;
    DetailcxGridDBTVBOTTLINGDATE: TcxGridDBColumn;
    EgaisBuyCDSSHIPPINGPRESENT: TDateTimeField;
    ViewcxGridDBTVSHIPPINGPRESENT: TcxGridDBColumn;
    EgaisBuyDetailCDSSCANPERCENT: TFloatField;
    EgaisBuyDetailCDSCOUNTERRORUNIT: TIntegerField;
    DetailcxGridDBTVSCANPERCENT: TcxGridDBColumn;
    DetailcxGridDBTVCOUNTERRORUNIT: TcxGridDBColumn;
    EgaisBuyDetailCDSFLAGRETURNRESOLUTION: TIntegerField;
    DetailcxGridDBTVFLAGRETURNRESOLUTION: TcxGridDBColumn;
    EgaisBuyDetailCDSEXCISECOUNT: TIntegerField;
    DetailcxGridDBTVEXCISECOUNT: TcxGridDBColumn;
    EgaisBuyCDSEXCISEFLAG: TSmallintField;
    ViewcxGridDBTVEXCISEFLAG: TcxGridDBColumn;
    EgaisBuyCDSDISTRIBUTIONID: TIntegerField;
    EgaisBuyCDSADDRESS: TStringField;
    ViewcxGridDBTVADDRESS: TcxGridDBColumn;
    ViewcxGridDBTVDISTRIBUTIONID: TcxGridDBColumn;
    EgaisBuyDetailCDSSUMPRICE: TBCDField;
    DetailcxGridDBTVSUMPRICE: TcxGridDBColumn;
    EgaisBuyDetailCDSPROVIDERINN: TStringField;
    EgaisBuyDetailCDSPROVIDERKPP: TStringField;
    AlcCodeMI: TMenuItem;
    DetailcxGridDBTVPROVIDERKPP: TcxGridDBColumn;
    DetailcxGridDBTVPROVIDERINN: TcxGridDBColumn;
    EgaisBuyCDSREPEALFLAG: TSmallintField;
    RequestRepealMI: TMenuItem;
    EgaisResultMI: TMenuItem;
    EgaisBuyDetailCDSPROVIDERNAME: TStringField;
    EgaisBuyDetailCDSIMPORTERINN: TStringField;
    EgaisBuyDetailCDSIMPORTERKPP: TStringField;
    EgaisBuyDetailCDSIMPORTERNAME: TStringField;
    DetailcxGridDBTVPROVIDERNAME: TcxGridDBColumn;
    DetailcxGridDBTVIMPORTERINN: TcxGridDBColumn;
    DetailcxGridDBTVIMPORTERKPP: TcxGridDBColumn;
    DetailcxGridDBTVIMPORTERNAME: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure BegincxDEPropertiesChange(Sender: TObject);
    procedure EndcxDEPropertiesChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RefreshcxButtonClick(Sender: TObject);
    procedure EgaisBuyCDSBeforeOpen(DataSet: TDataSet);
    procedure EgaisBuyDSDataChange(Sender: TObject; Field: TField);
    procedure EgaisBuyDetailCDSBeforeOpen(DataSet: TDataSet);
    procedure BuyCreateMIClick(Sender: TObject);
    procedure PMPopup(Sender: TObject);
    procedure AcceptMIClick(Sender: TObject);
    procedure DetailDrinkMIClick(Sender: TObject);
    procedure DetailPMPopup(Sender: TObject);
    procedure IsReturnMIClick(Sender: TObject);
    procedure ViewcxGridDBTVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure DetailcxGridDBTVCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure AlcCodeMIClick(Sender: TObject);
    procedure RequestRepealMIClick(Sender: TObject);
    procedure EgaisResultMIClick(Sender: TObject);
  private
    { Private declarations }
  public
   fBuyLink:TfBuy;
  end;

var
  fEgaisBuy: TfEgaisBuy;

implementation

uses uMain,DynamicProvider, uDrinkEdit, uEgaisAct, uXmlViewer;

{$R *.dfm}

procedure TfEgaisBuy.FormCreate(Sender: TObject);
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
 CompName:='EgaisBuy';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   EgaisBuyCDS.ProviderName:=CompName+'DSP';
   EgaisBuyCDS.RemoteServer:=fMain.SocketConnection;
   EgaisBuyCDS.CommandText:='select * from buytrans_egaisbuy(:begindate,:enddate,:storageid)';
  end;

 RetVal:=1;
 CompName:='EgaisBuyDetail';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   EgaisBuyDetailCDS.ProviderName:=CompName+'DSP';
   EgaisBuyDetailCDS.RemoteServer:=fMain.SocketConnection;
   EgaisBuyDetailCDS.CommandText:='select * from buytrans_egaisbuydetail(:egaisbuyid,1)';
  end;

 RetVal:=1;
 CompName:='EgaisBuyStorage';
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
    'select * from buytrans_egaisbuystorage';
   StoragecxLCB.Properties.ListSource:=DS;
   StoragecxLCB.Properties.KeyFieldNames:='STORAGEID';
   StoragecxLCB.Properties.ListFieldNames:='STORAGENAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 fMain.AnyCommandCDS.Close;
 fMain.AnyCommandCDS.CommandText:=
  'select * from egaisbuystatus order by id';
 fMain.AnyCommandCDS.Open;
 Img:=TBitmap.Create;
 Items:=(ViewcxGridDBTVEGAISBUYSTATUSID.Properties as TcxImageComboBoxProperties).Items;
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
end;

procedure TfEgaisBuy.BegincxDEPropertiesChange(Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  EndcxDE.Date:=BegincxDE.Date;
end;

procedure TfEgaisBuy.EndcxDEPropertiesChange(Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  BegincxDE.Date:=EndcxDE.Date;
end;


procedure TfEgaisBuy.FormActivate(Sender: TObject);
begin
 fMain.RefreshCDS(TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet));
end;

procedure TfEgaisBuy.RefreshcxButtonClick(Sender: TObject);
begin
 if StoragecxLCB.Text<>'' then
  fMain.RefreshCDS(EgaisBuyCDS)
 else
  MessageDlg('Не выбран склад.',mtError,[mbOk],0);
end;

procedure TfEgaisBuy.EgaisBuyCDSBeforeOpen(DataSet: TDataSet);
begin
 EgaisBuyCDS.Params[0].AsDateTime:=BegincxDE.Date;
 EgaisBuyCDS.Params[1].AsDateTime:=EndcxDE.Date;
 EgaisBuyCDS.Params[2].AsInteger:=StoragecxLCB.EditValue;
end;

procedure TfEgaisBuy.EgaisBuyDSDataChange(Sender: TObject; Field: TField);
begin
 fMain.RefreshCDS(EgaisBuyDetailCDS);
end;

procedure TfEgaisBuy.EgaisBuyDetailCDSBeforeOpen(DataSet: TDataSet);
begin
 EgaisBuyDetailCDS.Params[0].AsInteger:=EgaisBuyCDSID.AsInteger;
end;

procedure TfEgaisBuy.BuyCreateMIClick(Sender: TObject);
var buyid:integer;
begin
 if EgaisBuyCDS.IsEmpty then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'select * from buytrans_egaisbuycreate('+
      EgaisBuyCDSID.AsString+','+
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
   InputDateFiltercxDE.Date:=EgaisBuyCDSPRESENT.AsDateTime;
   DirectorViewFiltercxICBPropertiesCloseUp(self);
   BuyCDS.Locate('ID',buyid,[]);
  end;

 fMain.RefreshCDS(EgaisBuyCDS);
end;

procedure TfEgaisBuy.PMPopup(Sender: TObject);
var flag:boolean;
begin
 flag:=not EgaisBuyCDS.IsEmpty;

 BuyCreateMI.Visible:=flag and (EgaisBuyCDSFLAGBUYCREATE.AsInteger<>0);
 AcceptMI.Visible:=flag and (EgaisBuyCDSFLAGBUYACCEPT.AsInteger<>0);
 IsReturnMI.Visible:=BuyCreateMI.Visible;
 LineMI.Visible:=IsReturnMI.Visible;
 RequestRepealMI.Visible:=flag and (EgaisBuyCDSREPEALFLAG.AsInteger=1);
end;

procedure TfEgaisBuy.AcceptMIClick(Sender: TObject);
begin
 if EgaisBuyCDS.IsEmpty then
  exit;

 if (not Assigned(fEgaisAct)) then
  Application.CreateForm(TfEgaisAct, fEgaisAct);
 fEgaisAct.Tag:=2;

 if EgaisBuyCDSFLAGBUYACCEPT.AsInteger=1 then
  fEgaisAct.AcceptxCB.Checked:=false;
 if EgaisBuyCDSFLAGBUYACCEPT.AsInteger=2 then
  fEgaisAct.AcceptxCB.Checked:=true;

 fEgaisAct.AcceptxCBPropertiesEditValueChanged(Sender);

 if fEgaisAct.ShowModal=mrOk then
  begin
   if MessageDlg('Вы действительно хотите отправить подтверждение накладной в ЕГАИС?'+#10+#13+
                 'Её далнейшее редактирование будет запрещено.' ,mtConfirmation,[mbYes,mbNo],0)<>mrYes then
    exit;

   with fMain do
    try
     SocketConnection.AppServer.DBStartTransaction;
     InUpDelCDS.Close;
     InUpDelCDS.CommandText:=
      'execute procedure buytrans_egaisbuyactcreate('+EgaisBuyCDSID.AsString+','+#39+fEgaisAct.CommentarycxTE.Text+#39+')';
     InUpDelCDS.Execute;
     SocketConnection.AppServer.DBCommit;
    except on E: Exception do
     begin
      SocketConnection.AppServer.DBRollback;
      MessageDlg('Ошибка добавления накладной!' + #13+ ' ' + E.Message,mtError,[mbOk],0);
      exit;
     end; //on
    end; //try..except
   fMain.RefreshCDS(EgaisBuyCDS);
  end;
end;

procedure TfEgaisBuy.DetailDrinkMIClick(Sender: TObject);
begin
 if (not Assigned(fDrinkEdit)) then
  Application.CreateForm(TfDrinkEdit, fDrinkEdit);

 fDrinkEdit.Caption:=(Sender as TMenuItem).Caption;
 if fDrinkEdit.ShowModal=mrOk then
  begin
   with fMain do
    try
     SocketConnection.AppServer.DBStartTransaction;
     InUpDelCDS.Close;
     InUpDelCDS.CommandText:=
        'execute procedure buytrans_egaisbuydetaildrink('+fDrinkEdit.DrinkcxME.Text+','+EgaisBuyDetailCDSID.AsString+')';
     InUpDelCDS.Execute;
     SocketConnection.AppServer.DBCommit;
    except on E: Exception do
     begin
      SocketConnection.AppServer.DBRollback;
      MessageDlg('Ошибка добавления накладной!' + #13+ ' ' + E.Message,mtError,[mbOk],0);
     end; //on
    end; //try..except
    fMain.RefreshCDS(EgaisBuyDetailCDS);
  end;
end;

procedure TfEgaisBuy.DetailPMPopup(Sender: TObject);
begin
 DetailDrinkMI.Visible:=(EgaisBuyCDSEGAISBUYSTATUSID.AsInteger in [0,1,2]);
end;

procedure TfEgaisBuy.IsReturnMIClick(Sender: TObject);
begin
 if MessageDlg('Вы действительно хотите изменить тип накладной в ЕГАИС?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'update egaisbuy eb set eb.isreturn=abs(eb.isreturn-1) where eb.id='+EgaisBuyCDSID.AsString;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E: Exception do
   begin
    SocketConnection.AppServer.DBRollback;
    MessageDlg('Ошибка: '+E.Message,mtError,[mbOk],0);
    exit;
   end; //on
  end; //try..except
 fMain.RefreshCDS(EgaisBuyCDS);
end;

procedure TfEgaisBuy.ViewcxGridDBTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.DisplayTexts[ViewcxGridDBTVISRETURN.Index]='1') then
  ACanvas.Brush.Color := $00DFDFFF;

 if (AViewInfo.GridRecord.DisplayTexts[ViewcxGridDBTVEXCISEFLAG.Index]='1') then
  ACanvas.Brush.Color := $00B5E8B9;
end;

procedure TfEgaisBuy.DetailcxGridDBTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.DisplayTexts[DetailcxGridDBTVFLAGRETURNRESOLUTION.Index]='0') then
  ACanvas.Brush.Color := $000000C6;
end;

procedure TfEgaisBuy.AlcCodeMIClick(Sender: TObject);
var ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
begin
 if MessageDLG('Вы действительно хотите запросить данные по выбранным алкокодам?'+#10#13+
               'Ответ будет получен через несколько минут.',mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
  exit;

 with DetailcxGridDBTV.DataController do
  begin
   BeginUpdate;
   for i:= 0 to GetSelectedCount - 1 do
    begin
     ARowIndex := GetSelectedRowIndex(I);
     ARowInfo := GetRowInfo(ARowIndex);
     if ARowInfo.Level < Groups.GroupingItemCount then
      Continue
     else
      begin
       try
        fMain.SocketConnection.AppServer.DBStartTransaction;
        fMain.InUpDelCDS.Close;
        fMain.InUpDelCDS.CommandText:=
         'execute procedure buytrans_egaisrestsalccode('+#39+Values[ARowInfo.RecordIndex, DetailcxGridDBTVALCCODE.Index]+#39+')';
        fMain.InUpDelCDS.Execute;
        fMain.SocketConnection.AppServer.DBCommit;
       except on E:Exception do
        begin
         fMain.SocketConnection.AppServer.DBRollBack;
         MessageDLG(E.Message,mtError,[mbOK],0);
         break;
        end;//on
       end;//try..except
      end;
    end;//for  GetSelectedCount
   EndUpdate;
  end;//with cxGEDIdbTVOrders.DataController}
 fMain.RefreshCDS(EgaisBuyDetailCDS);
end;

procedure TfEgaisBuy.RequestRepealMIClick(Sender: TObject);
begin
 if EgaisBuyCDS.IsEmpty then
  exit;

 if (not Assigned(fEgaisAct)) then
  Application.CreateForm(TfEgaisAct, fEgaisAct);
 fEgaisAct.Tag:=3;
 fEgaisAct.AcceptxCB.Checked:=true;
 fEgaisAct.AcceptxCBPropertiesEditValueChanged(Sender);

 if fEgaisAct.ShowModal=mrOk then
  begin
   if MessageDlg('Вы действительно хотите отправить запрос на отмену акта ТТН в ЕГАИС?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
    exit;

   with fMain do
    try
     SocketConnection.AppServer.DBStartTransaction;
     InUpDelCDS.Close;
     InUpDelCDS.CommandText:=
      'execute procedure buytrans_egaisbuyrepeal('+EgaisBuyCDSID.AsString+','+#39+fEgaisAct.CommentarycxTE.Text+#39+')';
     InUpDelCDS.Execute;
     SocketConnection.AppServer.DBCommit;
    except on E: Exception do
     begin
      SocketConnection.AppServer.DBRollback;
      MessageDlg('Ошибка добавления накладной!' + #13+ ' ' + E.Message,mtError,[mbOk],0);
      exit;
     end; //on
    end; //try..except
   fMain.RefreshCDS(EgaisBuyCDS);
  end;
end;

procedure TfEgaisBuy.EgaisResultMIClick(Sender: TObject);
begin
 if (not Assigned(fXmlViewer)) then
  Application.CreateForm(TfXmlViewer, fXmlViewer);
 fXmlViewer.Tag:=4;
 fXmlViewer.XmlCDS.Tag:=EgaisBuyCDSID.AsInteger;
 fXmlViewer.ShowModal;
end;

end.
