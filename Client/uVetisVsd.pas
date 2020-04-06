unit uVetisVSD;

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
  TfVetisVsd = class(TForm)
    TopPanel: TPanel;
    Panel20: TPanel;
    RxLabel4: TRxLabel;
    BegincxDE: TcxDateEdit;
    EndcxDE: TcxDateEdit;
    RefreshcxButton: TcxButton;
    VsdcxGrid: TcxGrid;
    VsdcxGridDBTV: TcxGridDBTableView;
    VsdcxGL: TcxGridLevel;
    cxSplitter: TcxSplitter;
    VetisConnectcxLCB: TcxLookupComboBox;
    VsdCDS: TClientDataSet;
    VsdDS: TDataSource;
    VsdLinkCDS: TClientDataSet;
    VsdLinkDS: TDataSource;
    VsdPM: TPopupMenu;
    LinkPM: TPopupMenu;
    DetailDrinkMI: TMenuItem;
    RequestRepealMI: TMenuItem;
    RequestFromVetiscxButton: TcxButton;
    VsdCDSUUID: TStringField;
    VsdCDSID: TIntegerField;
    VsdCDSISSUEDATE: TDateTimeField;
    VsdCDSVETDFORM: TStringField;
    VsdCDSVETDTYPE: TStringField;
    VsdCDSCONSIGNORENTERPRISEGUID: TStringField;
    VsdCDSCONSIGNEEENTERPRISEGUID: TStringField;
    VsdCDSTRANSPORTTYPE: TIntegerField;
    VsdCDSTRANSPORTNUMBER: TStringField;
    VsdCDSTRANSPORTSTORAGETYPE: TStringField;
    VsdCDSPRODUCTITEMGUID: TStringField;
    VsdCDSVOLUME: TFloatField;
    VsdCDSUNITGUID: TStringField;
    VsdCDSDATEOFPRODUCTIONFD: TDateTimeField;
    VsdCDSEXPIRYDATEFD: TDateTimeField;
    VsdCDSAUTHENTICATIONPURPOSEUUID: TStringField;
    VsdCDSAUTHENTICATIONPURPOSEGUID: TStringField;
    VsdCDSCARGOINSPECTED: TStringField;
    VsdCDSCARGOEXPERTIZED: TStringField;
    VsdCDSLOCATIONPROSPERITY: TStringField;
    VsdCDSRDTYPE: TIntegerField;
    VsdCDSRDISSUENUMBER: TStringField;
    VsdCDSRDISSUEDATE: TDateTimeField;
    VsdCDSRDRELATIONSHIPTYPE: TIntegerField;
    LogcxButton: TcxButton;
    VsdCDSVETDFORMNAME: TStringField;
    VsdCDSVETDTYPENAME: TStringField;
    VsdCDSCONSIGNORBUSINESSNAME: TStringField;
    VsdCDSCONSIGNORENTERPRISEADDRESS: TStringField;
    VsdCDSCONSIGNEEENTERPRISEADDRESS: TStringField;
    VsdCDSCONSIGNEEBUSINESSNAME: TStringField;
    VsdCDSTRANSPORTTYPENAME: TStringField;
    VsdCDSTRANSPORTSTORAGETYPENAME: TStringField;
    VsdCDSPRODUCTITEMNAME: TStringField;
    VsdcxGridDBTVID: TcxGridDBColumn;
    VsdcxGridDBTVUUID: TcxGridDBColumn;
    VsdcxGridDBTVISSUEDATE: TcxGridDBColumn;
    VsdcxGridDBTVVETDFORM: TcxGridDBColumn;
    VsdcxGridDBTVVETDFORMNAME: TcxGridDBColumn;
    VsdcxGridDBTVVETDTYPE: TcxGridDBColumn;
    VsdcxGridDBTVVETDTYPENAME: TcxGridDBColumn;
    VsdcxGridDBTVCONSIGNORBUSINESSNAME: TcxGridDBColumn;
    VsdcxGridDBTVCONSIGNORENTERPRISEGUID: TcxGridDBColumn;
    VsdcxGridDBTVCONSIGNORENTERPRISEADDRESS: TcxGridDBColumn;
    VsdcxGridDBTVCONSIGNEEBUSINESSNAME: TcxGridDBColumn;
    VsdcxGridDBTVCONSIGNEEENTERPRISEGUID: TcxGridDBColumn;
    VsdcxGridDBTVCONSIGNEEENTERPRISEADDRESS: TcxGridDBColumn;
    VsdcxGridDBTVTRANSPORTTYPE: TcxGridDBColumn;
    VsdcxGridDBTVTRANSPORTTYPENAME: TcxGridDBColumn;
    VsdcxGridDBTVTRANSPORTNUMBER: TcxGridDBColumn;
    VsdcxGridDBTVTRANSPORTSTORAGETYPE: TcxGridDBColumn;
    VsdcxGridDBTVTRANSPORTSTORAGETYPENAME: TcxGridDBColumn;
    VsdcxGridDBTVPRODUCTITEMGUID: TcxGridDBColumn;
    VsdcxGridDBTVPRODUCTITEMNAME: TcxGridDBColumn;
    VsdcxGridDBTVVOLUME: TcxGridDBColumn;
    VsdcxGridDBTVUNITGUID: TcxGridDBColumn;
    VsdcxGridDBTVDATEOFPRODUCTIONFD: TcxGridDBColumn;
    VsdcxGridDBTVEXPIRYDATEFD: TcxGridDBColumn;
    VsdcxGridDBTVAUTHENTICATIONPURPOSEUUID: TcxGridDBColumn;
    VsdcxGridDBTVAUTHENTICATIONPURPOSEGUID: TcxGridDBColumn;
    VsdcxGridDBTVCARGOINSPECTED: TcxGridDBColumn;
    VsdcxGridDBTVCARGOEXPERTIZED: TcxGridDBColumn;
    VsdcxGridDBTVLOCATIONPROSPERITY: TcxGridDBColumn;
    VsdcxGridDBTVRDTYPE: TcxGridDBColumn;
    VsdcxGridDBTVRDISSUENUMBER: TcxGridDBColumn;
    VsdcxGridDBTVRDRELATIONSHIPTYPE: TcxGridDBColumn;
    VsdcxGridDBTVRDISSUEDATE: TcxGridDBColumn;
    BottomPanel: TPanel;
    LinkcxGrid: TcxGrid;
    LinkcxGridLevel: TcxGridLevel;
    LinkcxGridDBBTV: TcxGridDBBandedTableView;
    PicrMI: TMenuItem;
    VsdCDSVETISCONNECTID: TIntegerField;
    VsdCDSVETISSTATUSID: TIntegerField;
    DrinkEditMI: TMenuItem;
    DistributionEditMI: TMenuItem;
    VsdcxGridDBTVVETISSTATUSID: TcxGridDBColumn;
    BuyDetailLinkMI: TMenuItem;
    VsdLinkCDSVETISVSDLINKID: TIntegerField;
    VsdLinkCDSBUYNUMBERDOC: TStringField;
    VsdLinkCDSBUYPRESENT: TDateTimeField;
    VsdLinkCDSBUYDETAILID: TIntegerField;
    VsdLinkCDSDRINKKINDID: TIntegerField;
    VsdLinkCDSDRINKID: TIntegerField;
    VsdLinkCDSPRINTMARK: TStringField;
    VsdLinkCDSBUYVOLUME: TFloatField;
    VsdLinkCDSDELTAVOLUME: TFloatField;
    LinkcxGridDBBTVVETISVSDLINKID: TcxGridDBBandedColumn;
    LinkcxGridDBBTVBUYNUMBERDOC: TcxGridDBBandedColumn;
    LinkcxGridDBBTVBUYPRESENT: TcxGridDBBandedColumn;
    LinkcxGridDBBTVBUYDETAILID: TcxGridDBBandedColumn;
    LinkcxGridDBBTVDRINKKINDID: TcxGridDBBandedColumn;
    LinkcxGridDBBTVDRINKID: TcxGridDBBandedColumn;
    LinkcxGridDBBTVPRINTMARK: TcxGridDBBandedColumn;
    LinkcxGridDBBTVBUYVOLUME: TcxGridDBBandedColumn;
    LinkcxGridDBBTVDELTAVOLUME: TcxGridDBBandedColumn;
    VsdIL: TImageList;
    XmlViewerMI: TMenuItem;
    VsdCDSUNITNAME: TStringField;
    VsdcxGridDBTVUNITNAME: TcxGridDBColumn;
    HandLinkMI: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure BegincxDEPropertiesChange(Sender: TObject);
    procedure EndcxDEPropertiesChange(Sender: TObject);
    procedure RefreshcxButtonClick(Sender: TObject);
    procedure VsdCDSBeforeOpen(DataSet: TDataSet);
    procedure VsdPMPopup(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RequestFromVetiscxButtonClick(Sender: TObject);
    procedure RequestRepealMIClick(Sender: TObject);
    procedure LogcxButtonClick(Sender: TObject);
    procedure VsdDSDataChange(Sender: TObject; Field: TField);
    procedure BuyDetailCDSBeforeOpen(DataSet: TDataSet);
    procedure PicrMIClick(Sender: TObject);
    procedure DrinkEditMIClick(Sender: TObject);
    procedure DistributionEditMIClick(Sender: TObject);
    procedure VsdcxGridDBTVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure BuyDetailLinkMIClick(Sender: TObject);
    procedure DetailDrinkMIClick(Sender: TObject);
    procedure XmlViewerMIClick(Sender: TObject);
    procedure HandLinkMIClick(Sender: TObject);
  private
    { Private declarations }
  public
   fBuyLink:TfBuy;

  end;

var
  fVetisVsd: TfVetisVsd;

implementation

uses uMain,DynamicProvider, uDistributionEdit, uDrinkEdit, uLogViewer,
  uXmlViewer;

{$R *.dfm}


procedure TfVetisVsd.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;

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
 CompName:='VetisVsd';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   VsdCDS.ProviderName:=CompName+'DSP';
   VsdCDS.RemoteServer:=fMain.SocketConnection;
   VsdCDS.CommandText:='select * from buytrans_vetisvsdview(:begindate,:enddate,:storageid,:buid)';
  end;

 RetVal:=1;
 CompName:='VetisVsdLink';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   VsdLinkCDS.ProviderName:=CompName+'DSP';
   VsdLinkCDS.RemoteServer:=fMain.SocketConnection;
   VsdLinkCDS.CommandText:='select * from buytrans_vetisvsdlink(:vetisvsdid)';
  end;

 BegincxDE.Date:=Date;

 fMain.ImageStatusColumnFromBase('select id,name,img from vetisvetdstatus order by id',VsdcxGridDBTVVETISSTATUSID,VsdIL);

 fMain.RefreshCDS(TClientDataSet(VetisConnectcxLCB.Properties.ListSource.DataSet));
 if TClientDataSet(VetisConnectcxLCB.Properties.ListSource.DataSet).RecordCount=1 then
  VetisConnectcxLCB.EditValue:=TClientDataSet(VetisConnectcxLCB.Properties.ListSource.DataSet).Fields[0].AsInteger;

end;

procedure TfVetisVsd.BegincxDEPropertiesChange(Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  EndcxDE.Date:=BegincxDE.Date;
end;

procedure TfVetisVsd.EndcxDEPropertiesChange(Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  BegincxDE.Date:=EndcxDE.Date;
end;


procedure TfVetisVsd.RefreshcxButtonClick(Sender: TObject);
begin
 if VetisConnectcxLCB.Text<>'' then
  fMain.RefreshCDS(VsdCDS)
 else
  MessageDlg('Не выбрана площадка ХС.',mtError,[mbOk],0);
end;

procedure TfVetisVsd.VsdCDSBeforeOpen(DataSet: TDataSet);
begin
 VsdCDS.Params[0].AsDateTime:=BegincxDE.Date;
 VsdCDS.Params[1].AsDateTime:=EndcxDE.Date;
 VsdCDS.Params[2].AsInteger:=VetisConnectcxLCB.EditValue;
 VsdCDS.Params[3].AsInteger:=Self.Tag; 
end;

procedure TfVetisVsd.VsdPMPopup(Sender: TObject);
var menuItem :TMenuItem;
    am:array of TNotifyEvent;
begin
 if VsdCDS.IsEmpty then exit;

 fMain.AnyCommandCDS.Close;
 fMain.AnyCommandCDS.CommandText:=
  'select * from  buytrans_vetisvsdpm('+VsdCDSID.AsString+') order by id';
 fMain.AnyCommandCDS.Open;
 SetLength(am,8);
 am[0]:=nil;
 am[1]:=RequestRepealMIClick;
 am[2]:=PicrMIClick;
 am[3]:=DistributionEditMIClick;
 am[4]:=DrinkEditMIClick;
 am[5]:=BuyDetailLinkMIClick;
 am[6]:=HandLinkMIClick;
 VsdPM.Items.Clear;
 while not fMain.AnyCommandCDS.Eof do
  begin
   menuItem:=TMenuItem.Create(VsdPM);
   menuItem.Caption:=fMain.AnyCommandCDS.FieldByName('name').AsString;
   menuItem.OnClick:=am[fMain.AnyCommandCDS.FieldByName('clickindex').AsInteger];
   VsdPM.Items.Add(menuItem);
   fMain.AnyCommandCDS.Next;
  end;

 menuItem:=TMenuItem.Create(VsdPM);
 menuItem.Caption:='Результат обработки ВЕТИС';
 menuItem.OnClick:=XmlViewerMIClick;
 VsdPM.Items.Add(menuItem);
end;

procedure TfVetisVsd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfVetisVsd.RequestFromVetiscxButtonClick(Sender: TObject);

begin
 if VetisConnectcxLCB.Text<>'' then
  begin
   {if (EndcxDE.Date-BegincxDE.Date<0) or (EndcxDE.Date-BegincxDE.Date>31) then
    begin
     MessageDlg('Интервал дат не может превышать 31 день. ', mtError, [mbOk] , 0);
     exit;
    end;}

   if MessageDlg('Запросить в ВЕТИС все входящие ВСД?'{ оформленные в период с '+BegincxDE.Text+' по '+EndcxDE.Text+'?'}, mtConfirmation, [mbYes, mbNo] , 0)<> mrYes then
    exit;

   fMain.RequestFromVetis(VetisConnectcxLCB.EditValue,9,'vetDocumentType=INCOMING'{;begindate='+BegincxDE.Text+';enddate='+EndcxDE.Text{;vetDocumentStatus=CONFIRMED});
   fMain.RefreshCDS(VsdCDS);
  end
 else
  MessageDlg('Не выбрана площадка ХС.',mtError,[mbOk],0);
end;

procedure TfVetisVsd.RequestRepealMIClick(Sender: TObject);
begin
 if VsdCDS.IsEmpty then
  exit;

 fMain.AnyCommandCDS.Close;
 fMain.AnyCommandCDS.CommandText:=
  'select * from  vetis_vsdhandbookneed('+VsdCDSID.AsString+')';
 fMain.AnyCommandCDS.Open;
 fMain.AnyCommandCDS.First;
 while not fMain.AnyCommandCDS.Eof do
  begin
   fMain.RequestFromVetis(fMain.AnyCommandCDS.FieldByName('vetisconnectid').AsInteger,
                    fMain.AnyCommandCDS.FieldByName('vetissoapactionid').AsInteger,
                    fMain.AnyCommandCDS.FieldByName('paramsstring').AsString);
   fMain.AnyCommandCDS.Next;
  end;
 fMain.RefreshCDS(VsdCDS);
end;

procedure TfVetisVsd.LogcxButtonClick(Sender: TObject);
begin
 if (not Assigned(fLogViewer)) then
  Application.CreateForm(TfLogViewer, fLogViewer);
  
 if (not fLogViewer.Active) then
  fLogViewer.Show;
end;

procedure TfVetisVsd.VsdDSDataChange(Sender: TObject; Field: TField);
begin
 fMain.RefreshCDS(VsdLinkCDS);
end;

procedure TfVetisVsd.BuyDetailCDSBeforeOpen(DataSet: TDataSet);
begin
 TClientDataSet(DataSet).Params[0].AsInteger:=VsdCDSID.AsInteger;
end;

procedure TfVetisVsd.PicrMIClick(Sender: TObject);
begin
 fMain.RequestFromVetis(VsdCDSVETISCONNECTID.AsInteger,6,'vetisvsdid='+VsdCDSID.AsString);
 fMain.RefreshCDS(VsdCDS);
end;

procedure TfVetisVsd.DistributionEditMIClick(Sender: TObject);
begin
 if (not Assigned(fDistributionEdit)) then
  Application.CreateForm(TfDistributionEdit, fDistributionEdit);
 fDistributionEdit.Caption:=(Sender as TMenuItem).Caption;
 if fDistributionEdit.ShowModal=mrOk then
  begin
   with fMain do
    try
     SocketConnection.AppServer.DBStartTransaction;
     InUpDelCDS.Close;
     InUpDelCDS.CommandText:=
      'execute procedure buytrans_vetisdistributionedit('+VsdCDSID.AsString+','+fDistributionEdit.DistributionIDcxME.Text+')';
     InUpDelCDS.Execute;
     SocketConnection.AppServer.DBCommit;
    except on E: Exception do
     begin
      SocketConnection.AppServer.DBRollback;
      MessageDlg('Ошибка: '+E.Message,mtError,[mbOk],0);
     end; //on
    end; //try..except
   fMain.RefreshCDS(VsdCDS);
  end;
end;

procedure TfVetisVsd.DrinkEditMIClick(Sender: TObject);
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
        'execute procedure buytrans_vetisdrinkedit('+VsdCDSID.AsString+','+fDrinkEdit.DrinkcxME.Text+')';
     InUpDelCDS.Execute;
     SocketConnection.AppServer.DBCommit;
    except on E: Exception do
     begin
      SocketConnection.AppServer.DBRollback;
      MessageDlg('Ошибка: ' + E.Message,mtError,[mbOk],0);
     end; //on
    end; //try..except
   fMain.RefreshCDS(VsdCDS);
  end;
end;

procedure TfVetisVsd.VsdcxGridDBTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.DisplayTexts[VsdcxGridDBTVVETISSTATUSID.Index]='0') then
  ACanvas.Brush.Color := $00DFDFFF;
end;

procedure TfVetisVsd.BuyDetailLinkMIClick(Sender: TObject);
begin
 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'execute procedure buytrans_vetisvsdtobuydetail('+VsdCDSID.AsString+',null)';
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E: Exception do
   begin
    SocketConnection.AppServer.DBRollback;
    MessageDlg('Ошибка: '+E.Message,mtError,[mbOk],0);
    exit;
   end; //on
  end; //try..except
 fMain.RefreshCDS(VsdCDS);
end;

procedure TfVetisVsd.DetailDrinkMIClick(Sender: TObject);
begin
 if MessageDlg('Вы действительно хотите удалить привязку к поступлению ХОСТ?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'delete from vetisvsdlink vl where vl.id='+VsdLinkCDSVETISVSDLINKID.AsString;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E: Exception do
   begin
    SocketConnection.AppServer.DBRollback;
    MessageDlg('Ошибка: '+E.Message,mtError,[mbOk],0);
    exit;
   end; //on
  end; //try..except
 fMain.RefreshCDS(VsdLinkCDS);
 fMain.RefreshCDS(VsdCDS); 
end;

procedure TfVetisVsd.XmlViewerMIClick(Sender: TObject);
begin
 if (not Assigned(fXmlViewer)) then
  Application.CreateForm(TfXmlViewer, fXmlViewer);
 fXmlViewer.Tag:=6;
 fXmlViewer.XmlCDS.Tag:=VsdCDSID.AsInteger;
 fXmlViewer.ShowModal;
end;

procedure TfVetisVsd.HandLinkMIClick(Sender: TObject);
begin
 if (not Assigned(fDrinkEdit)) then
  Application.CreateForm(TfDrinkEdit, fDrinkEdit);

 fDrinkEdit.Caption:=(Sender as TMenuItem).Caption;
 fDrinkEdit.Tag:=6;
 if fDrinkEdit.ShowModal=mrOk then
  begin
   with fMain do
    try
     SocketConnection.AppServer.DBStartTransaction;
     InUpDelCDS.Close;
     InUpDelCDS.CommandText:=
      'execute procedure buytrans_vetisvsdtobuydetail('+VsdCDSID.AsString+','+fDrinkEdit.DrinkcxME.Text+')';
     InUpDelCDS.Execute;
     SocketConnection.AppServer.DBCommit;
    except on E: Exception do
     begin
      SocketConnection.AppServer.DBRollback;
      MessageDlg('Ошибка: ' + E.Message,mtError,[mbOk],0);
     end; //on
    end; //try..except
   fMain.RefreshCDS(VsdCDS);
  end;
end;

end.
