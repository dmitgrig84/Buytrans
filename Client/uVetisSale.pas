unit uVetisSale;

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
  cxImageComboBox, cxCurrencyEdit, cxGridBandedTableView,
  cxGridDBBandedTableView;

type
  TfVetisSale = class(TForm)
    TopPanel: TPanel;
    Panel20: TPanel;
    RxLabel4: TRxLabel;
    BegincxDE: TcxDateEdit;
    EndcxDE: TcxDateEdit;
    RefreshcxButton: TcxButton;
    SalecxGrid: TcxGrid;
    SalecxGridDBTV: TcxGridDBTableView;
    SalecxGL: TcxGridLevel;
    cxSplitter: TcxSplitter;
    VetisConnectcxLCB: TcxLookupComboBox;
    SaleCDS: TClientDataSet;
    SaleDS: TDataSource;
    DetailCDS: TClientDataSet;
    DetailDS: TDataSource;
    SalePM: TPopupMenu;
    DetailPM: TPopupMenu;
    LogcxButton: TcxButton;
    BottomPanel: TPanel;
    DetailcxGrid: TcxGrid;
    DetailcxGridLevel: TcxGridLevel;
    DetailcxGridDBBTV: TcxGridDBBandedTableView;
    SaleCDSSALEID: TIntegerField;
    SaleCDSPRESENT: TDateTimeField;
    SaleCDSNUMBER: TStringField;
    SaleCDSFIRMID: TIntegerField;
    SaleCDSFIRMNAME: TStringField;
    SaleCDSFIRMINN: TStringField;
    SaleCDSVETISCONTRACTORGUID: TStringField;
    SaleCDSVETISDISTRIBUTIONIDGUID: TStringField;
    SaleCDSDISTRIBUTIONID: TIntegerField;
    SaleCDSADDESS: TStringField;
    SalecxGridDBTVSALEID: TcxGridDBColumn;
    SalecxGridDBTVNUMBER: TcxGridDBColumn;
    SalecxGridDBTVPRESENT: TcxGridDBColumn;
    SalecxGridDBTVFIRMID: TcxGridDBColumn;
    SalecxGridDBTVVETISCONTRACTORGUID: TcxGridDBColumn;
    SalecxGridDBTVFIRMNAME: TcxGridDBColumn;
    SalecxGridDBTVFIRMINN: TcxGridDBColumn;
    SalecxGridDBTVDISTRIBUTIONID: TcxGridDBColumn;
    SalecxGridDBTVVETISDISTRIBUTIONIDGUID: TcxGridDBColumn;
    SalecxGridDBTVADDESS: TcxGridDBColumn;
    DetailCDSSALEDETAILID: TIntegerField;
    DetailCDSDRINKKINDID: TIntegerField;
    DetailCDSVETISSTOCKGUID: TStringField;
    DetailCDSDRINKID: TIntegerField;
    DetailCDSPRINTMARK: TStringField;
    DetailCDSCOUNTUNIT: TFloatField;
    DetailcxGridDBBTVSALEDETAILID: TcxGridDBBandedColumn;
    DetailcxGridDBBTVDRINKKINDID: TcxGridDBBandedColumn;
    DetailcxGridDBBTVVETISSTOCKGUID: TcxGridDBBandedColumn;
    DetailcxGridDBBTVDRINKID: TcxGridDBBandedColumn;
    DetailcxGridDBBTVPRINTMARK: TcxGridDBBandedColumn;
    DetailcxGridDBBTVCOUNTUNIT: TcxGridDBBandedColumn;
    RequestRepealMI: TMenuItem;
    PocrMI: TMenuItem;
    SaleCDSVETISCONNECTID: TIntegerField;
    SaleCDSVETISSTATUSID: TIntegerField;
    SalecxGridDBTVVETISSTATUSID: TcxGridDBColumn;
    StatusIL: TImageList;
    DetailCDSVETISSTATUSID: TIntegerField;
    DetailcxGridDBBTVVETISSTATUSID: TcxGridDBBandedColumn;
    DetailCDSVSDUUID: TStringField;
    DetailcxGridDBBTVVSDUUID: TcxGridDBBandedColumn;
    XmlViewerMI: TMenuItem;
    DetailCDSVETISPRODUCTGUID: TStringField;
    DetailCDSVETISPRODUCTNAME: TStringField;
    DetailCDSVETISUNITGUID: TStringField;
    DetailCDSVETISUNITNAME: TStringField;
    DetailcxGridDBBTVVETISUNITNAME: TcxGridDBBandedColumn;
    DetailcxGridDBBTVVETISPRODUCTNAME: TcxGridDBBandedColumn;
    SaleCDSVEHICLENUMBER: TStringField;
    SalecxGridDBTVVEHICLENUMBER: TcxGridDBColumn;
    WithDrawMI: TMenuItem;
    DetailCDSWITHDRAWNAME: TStringField;
    RequestFromVetiscxButton: TcxButton;
    SaleCDSWEIGHT: TFloatField;
    SalecxGridDBTVWEIGHT: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure BegincxDEPropertiesChange(Sender: TObject);
    procedure EndcxDEPropertiesChange(Sender: TObject);
    procedure RefreshcxButtonClick(Sender: TObject);
    procedure SaleCDSBeforeOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaleDSDataChange(Sender: TObject; Field: TField);
    procedure DetailCDSBeforeOpen(DataSet: TDataSet);
    procedure SalePMPopup(Sender: TObject);
    procedure RequestRepealMIClick(Sender: TObject);
    procedure PocrMIClick(Sender: TObject);
    procedure LogcxButtonClick(Sender: TObject);
    procedure XmlViewerMIClick(Sender: TObject);
    procedure WithDrawMIClick(Sender: TObject);
    procedure DetailPMPopup(Sender: TObject);
    procedure RequestFromVetiscxButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
   fBuyLink:TfBuy;
  end;

var
  fVetisSale: TfVetisSale;

implementation

uses uMain,DynamicProvider, uLogViewer, uXmlViewer;

{$R *.dfm}


procedure TfVetisSale.FormCreate(Sender: TObject);
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
 CompName:='VetisConnect';
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
    'select * from buytrans_vetisconnect';
   VetisConnectcxLCB.Properties.ListSource:=DS;
   VetisConnectcxLCB.Properties.KeyFieldNames:='VETISCONNECTID';
   VetisConnectcxLCB.Properties.ListFieldNames:='VETISCONNECTNAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='VetisSale';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   SaleCDS.ProviderName:=CompName+'DSP';
   SaleCDS.RemoteServer:=fMain.SocketConnection;
   SaleCDS.CommandText:='select * from buytrans_vetissaleview(:begindate,:enddate,:vcid)';
  end;

 RetVal:=1;
 CompName:='VetisSaleDetail';
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
   DetailCDS.CommandText:='select * from buytrans_vetissaledetail(:saleid)';
  end;

 BegincxDE.Date:=Date;

 fMain.ImageStatusColumnFromBase('select id,name,img from vetisvetdstatus order by id',SalecxGridDBTVVETISSTATUSID,StatusIL);
 fMain.ImageStatusColumnFromBase('select id,name,img from vetisvetdstatus order by id',DetailcxGridDBBTVVETISSTATUSID,StatusIL);

 fMain.RefreshCDS(TClientDataSet(VetisConnectcxLCB.Properties.ListSource.DataSet));
 if TClientDataSet(VetisConnectcxLCB.Properties.ListSource.DataSet).RecordCount=1 then
  VetisConnectcxLCB.EditValue:=TClientDataSet(VetisConnectcxLCB.Properties.ListSource.DataSet).Fields[0].AsInteger;
end;

procedure TfVetisSale.BegincxDEPropertiesChange(Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  EndcxDE.Date:=BegincxDE.Date;
end;

procedure TfVetisSale.EndcxDEPropertiesChange(Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  BegincxDE.Date:=EndcxDE.Date;
end;


procedure TfVetisSale.RefreshcxButtonClick(Sender: TObject);
begin
 if VetisConnectcxLCB.Text<>'' then
  fMain.RefreshCDS(SaleCDS)
 else
  MessageDlg('Не выбрана площадка ХС.',mtError,[mbOk],0);
end;

procedure TfVetisSale.SaleCDSBeforeOpen(DataSet: TDataSet);
begin
 SaleCDS.Params[0].AsDateTime:=BegincxDE.Date;
 SaleCDS.Params[1].AsDateTime:=EndcxDE.Date;
 SaleCDS.Params[2].AsInteger:=VetisConnectcxLCB.EditValue;
end;

procedure TfVetisSale.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfVetisSale.SaleDSDataChange(Sender: TObject; Field: TField);
begin
 fMain.RefreshCDS(DetailCDS);
end;

procedure TfVetisSale.DetailCDSBeforeOpen(DataSet: TDataSet);
begin
  DetailCDS.Params[0].AsInteger:=SaleCDSSALEID.AsInteger;
end;

procedure TfVetisSale.SalePMPopup(Sender: TObject);
var menuItem :TMenuItem;
    am:array of TNotifyEvent;
begin
 if SaleCDS.IsEmpty then exit;

 fMain.AnyCommandCDS.Close;
 fMain.AnyCommandCDS.CommandText:=
  'select * from  buytrans_vetissalepm('+SaleCDSSALEID.AsString+') order by id';
 fMain.AnyCommandCDS.Open;
 SetLength(am,3);
 am[0]:=nil;
 am[1]:=RequestRepealMIClick;
 am[2]:=PocrMIClick;
 SalePM.Items.Clear;
 while not fMain.AnyCommandCDS.Eof do
  begin
   menuItem:=TMenuItem.Create(SalePM);
   menuItem.Caption:=fMain.AnyCommandCDS.FieldByName('name').AsString;
   //menuItem.Bitmap.LoadFromStream();
   menuItem.OnClick:=am[fMain.AnyCommandCDS.FieldByName('clickindex').AsInteger];
   SalePM.Items.Add(menuItem);
   fMain.AnyCommandCDS.Next;
  end;
 if (SaleCDSVETISSTATUSID.AsInteger>1) then
  begin
   menuItem:=TMenuItem.Create(SalePM);
   menuItem.Caption:='Результат обработки ВЕТИС';
   menuItem.OnClick:=XmlViewerMIClick;
   SalePM.Items.Add(menuItem);
  end;
end;

procedure TfVetisSale.RequestRepealMIClick(Sender: TObject);
begin
 if SaleCDS.IsEmpty then
  exit;

 fMain.AnyCommandCDS.Close;
 fMain.AnyCommandCDS.CommandText:=
  'select * from  vetis_salehandbookneed('+SaleCDSSALEID.AsString+')';
 fMain.AnyCommandCDS.Open;
 fMain.AnyCommandCDS.First;
 while not fMain.AnyCommandCDS.Eof do
  begin
   fMain.RequestFromVetis(fMain.AnyCommandCDS.FieldByName('vetisconnectid').AsInteger,
                    fMain.AnyCommandCDS.FieldByName('vetissoapactionid').AsInteger,
                    fMain.AnyCommandCDS.FieldByName('paramsstring').AsString);
   fMain.AnyCommandCDS.Next;
  end;
 fMain.RefreshCDS(SaleCDS);
end;

procedure TfVetisSale.PocrMIClick(Sender: TObject);
var ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
begin
   with SalecxGridDBTV.DataController do
    begin
     BeginUpdate;
     try
      if GetSelectedCount > 0 then
       begin
        try
         for i:= 0 to GetSelectedCount - 1 do
          begin
           ARowIndex := GetSelectedRowIndex(I);
           ARowInfo := GetRowInfo(ARowIndex);
           if ARowInfo.Level < Groups.GroupingItemCount then
            Continue
           else
            begin
             fMain.RequestFromVetis(SaleCDSVETISCONNECTID.AsInteger,11,'saleid='+IntToStr(Values[ARowInfo.RecordIndex, SalecxGridDBTVSALEID.Index]));
             if ((GetSelectedCount-1)>i) then //делаем задежку между запросами
              sleep(1000);
            end

          end; // for

         ClearSelection;
        except on E:Exception do
         begin
          MessageDlg('Ошибка:'+E.Message, mtError, [mbOk], 0);
          exit;
         end; //on E:Exception
        end;
       end;//if GetSelectedCount > 0 then
     finally
      EndUpdate;
      fMain.RefreshCDS(SaleCDS);
     end;
    end;//with
end;

procedure TfVetisSale.LogcxButtonClick(Sender: TObject);
begin
 if (not Assigned(fLogViewer)) then
  Application.CreateForm(TfLogViewer, fLogViewer);
  
 if (not fLogViewer.Active) then
  fLogViewer.Show;
end;

procedure TfVetisSale.XmlViewerMIClick(Sender: TObject);
begin
 if (not Assigned(fXmlViewer)) then
  Application.CreateForm(TfXmlViewer, fXmlViewer);
 fXmlViewer.Tag:=7;
 fXmlViewer.XmlCDS.Tag:=SaleCDSSALEID.AsInteger;
 fXmlViewer.ShowModal;
end;

procedure TfVetisSale.WithDrawMIClick(Sender: TObject);
begin
 fMain.RequestFromVetis(SaleCDSVETISCONNECTID.AsInteger,15,'vsduuid='+DetailCDSVSDUUID.AsString);
 fMain.RefreshCDS(SaleCDS);
end;

procedure TfVetisSale.DetailPMPopup(Sender: TObject);
begin
 WithDrawMI.Visible:=(not DetailCDSWITHDRAWNAME.IsNull);
 WithDrawMI.Caption:=DetailCDSWITHDRAWNAME.AsString;
end;

procedure TfVetisSale.RequestFromVetiscxButtonClick(Sender: TObject);
begin
 if VetisConnectcxLCB.Text<>'' then
  begin
   {if (EndcxDE.Date-BegincxDE.Date<0) or (EndcxDE.Date-BegincxDE.Date>31) then
    begin
     MessageDlg('Интервал дат не может превышать 31 день. ', mtError, [mbOk] , 0);
     exit;
    end;}

   if MessageDlg('Запросить в ВЕТИС все ВСД созданные или измененные за период с '+BegincxDE.Text+' по '+EndcxDE.Text+'?', mtConfirmation, [mbYes, mbNo] , 0)<> mrYes then
    exit;

   fMain.RequestFromVetis(VetisConnectcxLCB.EditValue,16,'vetDocumentType=OUTGOING;begindate='+BegincxDE.Text+';enddate='+EndcxDE.Text);
   fMain.RefreshCDS(SaleCDS);
  end
 else
  MessageDlg('Не выбрана площадка ХС.',mtError,[mbOk],0);
end;

end.
