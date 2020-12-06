unit uEgaisRests3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxMaskEdit, cxSplitter, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, cxButtons, ExtCtrls,
  DBClient,DynamicProvider, cxImageComboBox,CLIPBrd, cxExportGrid4Link;

type
  TfEgaisRests3 = class(TForm)
    TopPanel: TPanel;
    RightTopPanel: TPanel;
    RefreshcxButton: TcxButton;
    ExportToExcelcxButton: TcxButton;
    StoragecxLCB: TcxLookupComboBox;
    ViewcxGrid: TcxGrid;
    ViewcxGridDBTV: TcxGridDBTableView;
    ViewcxGridLevel: TcxGridLevel;
    cxSplitter: TcxSplitter;
    EgaisRests3CDS: TClientDataSet;
    EgaisRests3DS: TDataSource;
    EgaisRests3CDSOUTEGAISIDENTIFIERID: TIntegerField;
    EgaisRests3CDSINEGAISIDENTIFIERID: TIntegerField;
    EgaisRests3CDSDRINKKINDID: TIntegerField;
    EgaisRests3CDSDRINKID: TIntegerField;
    EgaisRests3CDSPRINTMARK: TStringField;
    EgaisRests3CDSREPLYID: TStringField;
    EgaisRests3CDSOUTWHENINSERT: TDateTimeField;
    EgaisRests3CDSOUTWHENREPLYID: TDateTimeField;
    EgaisRests3CDSINWHENINSERT: TDateTimeField;
    EgaisRests3CDSINSTATUS: TSmallintField;
    EgaisRests3CDSALCCODE: TStringField;
    EgaisRests3CDSINFORMA_REGID: TStringField;
    EgaisRests3CDSINFORMB_REGID: TStringField;
    EgaisRests3CDSHOSTCOUNTUNIT: TIntegerField;
    EgaisRests3CDSHOSTCOUNTUNITEXCISE: TIntegerField;
    EgaisRests3CDSEGAISCOUNTUNITEXCISE: TIntegerField;
    ViewcxGridDBTVOUTEGAISIDENTIFIERID: TcxGridDBColumn;
    ViewcxGridDBTVINEGAISIDENTIFIERID: TcxGridDBColumn;
    ViewcxGridDBTVDRINKKINDID: TcxGridDBColumn;
    ViewcxGridDBTVDRINKID: TcxGridDBColumn;
    ViewcxGridDBTVPRINTMARK: TcxGridDBColumn;
    ViewcxGridDBTVREPLYID: TcxGridDBColumn;
    ViewcxGridDBTVOUTWHENINSERT: TcxGridDBColumn;
    ViewcxGridDBTVOUTWHENREPLYID: TcxGridDBColumn;
    ViewcxGridDBTVINWHENINSERT: TcxGridDBColumn;
    ViewcxGridDBTVINSTATUS: TcxGridDBColumn;
    ViewcxGridDBTVALCCODE: TcxGridDBColumn;
    ViewcxGridDBTVINFORMA_REGID: TcxGridDBColumn;
    ViewcxGridDBTVINFORMB_REGID: TcxGridDBColumn;
    ViewcxGridDBTVHOSTCOUNTUNIT: TcxGridDBColumn;
    ViewcxGridDBTVHOSTCOUNTUNITEXCISE: TcxGridDBColumn;
    ViewcxGridDBTVEGAISCOUNTUNITEXCISE: TcxGridDBColumn;
    BottomPanel: TPanel;
    ExciseEgaiscxGrid: TcxGrid;
    ExciseEgaiscxGridDBTV: TcxGridDBTableView;
    ExciseEgaiscxGridLevel: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    ExciseHostcxGrid: TcxGrid;
    ExciseHostcxGridDBTV: TcxGridDBTableView;
    ExciseHostcxGridLevel: TcxGridLevel;
    ExciseHostCDS: TClientDataSet;
    ExciseHostDS: TDataSource;
    ExciseHostCDSEXCISECODE: TStringField;
    ExciseHostCDSFLAGERROR: TSmallintField;
    ExciseEgaisCDS: TClientDataSet;
    ExciseEgaisCDSEXCISECODE: TStringField;
    ExciseEgaisCDSFLAGERROR: TSmallintField;
    ExciseEgaisDS: TDataSource;
    ExciseHostcxGridDBTVEXCISECODE: TcxGridDBColumn;
    ExciseHostcxGridDBTVFLAGERROR: TcxGridDBColumn;
    ExciseEgaiscxGridDBTVEXCISECODE: TcxGridDBColumn;
    ExciseEgaiscxGridDBTVFLAGERROR: TcxGridDBColumn;
    EgaisRests3CDSNOWCASHWCOUNTUNIT: TIntegerField;
    ViewcxGridDBTVNOWCASHWCOUNTUNIT: TcxGridDBColumn;
    ViewPM: TPopupMenu;
    ReplyRestsMI: TMenuItem;
    PM: TPopupMenu;
    CopyClipBoardMI: TMenuItem;
    EgaisActFixBarcodeMI: TMenuItem;
    Line2MI: TMenuItem;
    EgaisRests3CDSNOWEXCISECOUNTUNIT: TIntegerField;
    ViewcxGridDBTVNOWEXCISECOUNTUNIT: TcxGridDBColumn;
    DrinkKindIDcxME: TcxMaskEdit;
    ActFixBarcodeMI: TMenuItem;
    LineMI: TMenuItem;
    ExciseHostCDSBOXCODE: TStringField;
    ExciseHostcxGridDBTVBOXCODE: TcxGridDBColumn;
    ExciseEgaisCDSBOXCODE: TStringField;
    ExciseEgaiscxGridDBTVBOXCODE: TcxGridDBColumn;
    InformBRegidcxME: TcxMaskEdit;
    ActChargeOnMI: TMenuItem;
    EgaisResultMI: TMenuItem;
    SplitDKMI: TMenuItem;
    EgaisRests3CDSDIRECTIONNAME: TStringField;
    ViewcxGridDBTVDIRECTIONNAME: TcxGridDBColumn;
    EgaisRests3CDSDIRECTIONID: TIntegerField;
    N1: TMenuItem;
    RemovingExMI: TMenuItem;
    EgaisTransferWithExciseFixMI: TMenuItem;
    EgaisRests3CDSFORMDECLARATION: TSmallintField;
    EgaisRests3CDSBARCODE: TStringField;
    ViewcxGridDBTVBARCODE: TcxGridDBColumn;
    BarcodecxME: TcxMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RefreshcxButtonClick(Sender: TObject);
    procedure EgaisRests3CDSBeforeOpen(DataSet: TDataSet);
    procedure EgaisRests3DSDataChange(Sender: TObject; Field: TField);
    procedure ExciseHostCDSBeforeOpen(DataSet: TDataSet);
    procedure ExciseHostcxGridDBTVCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ExciseEgaiscxGridDBTVCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ReplyRestsMIClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure CopyClipBoardMIClick(Sender: TObject);
    procedure PMPopup(Sender: TObject);
    procedure ViewPMPopup(Sender: TObject);
    procedure EgaisActFixBarcodeMIClick(Sender: TObject);
    procedure ViewcxGridDBTVCustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure ActFixBarcodeMIClick(Sender: TObject);
    procedure InformBRegidcxMEEnter(Sender: TObject);
    procedure DrinkKindIDcxMEEnter(Sender: TObject);
    procedure StoragecxLCBPropertiesEditValueChanged(Sender: TObject);
    procedure EgaisResultMIClick(Sender: TObject);
    procedure ActChargeOnMIClick(Sender: TObject);
    procedure SplitDKMIClick(Sender: TObject);
    procedure RemovingExMIClick(Sender: TObject);
    procedure ExportToExcelcxButtonClick(Sender: TObject);
    procedure EgaisTransferWithExciseFixMIClick(Sender: TObject);
    procedure BarcodecxMEEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEgaisRests3: TfEgaisRests3;

implementation

uses uMain, uExciseFix, uXmlViewer, uEgaisActChargeOn,
  uEgaisTransferWithExciseFix;

{$R *.dfm}

procedure TfEgaisRests3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfEgaisRests3.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;

begin
 RetVal:=1;
 CompName:='EgaisRestsStorageCDS';
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
    'select * from buytrans_egaisrestsstorage';
   StoragecxLCB.Properties.ListSource:=DS;
   StoragecxLCB.Properties.KeyFieldNames:='EGAISCONNECTID';
   StoragecxLCB.Properties.ListFieldNames:='EGAISCONNECTNAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='EgaisRests3';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   EgaisRests3CDS.ProviderName:=CompName+'DSP';
   EgaisRests3CDS.RemoteServer:=fMain.SocketConnection;
   EgaisRests3CDS.CommandText:='select * from buytrans_egaisrests3view(:egaisconnectid,:drinkkindid)';
  end;

 RetVal:=1;
 CompName:='EgaisRests3ExciseHost';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   ExciseHostCDS.ProviderName:=CompName+'DSP';
   ExciseHostCDS.RemoteServer:=fMain.SocketConnection;
   ExciseHostCDS.CommandText:='select * from buytrans_egaisrests3hostexcise(:eiid)';
  end;

 RetVal:=1;
 CompName:='EgaisRests3ExciseEgais';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   ExciseEgaisCDS.ProviderName:=CompName+'DSP';
   ExciseEgaisCDS.RemoteServer:=fMain.SocketConnection;
   ExciseEgaisCDS.CommandText:='select * from buytrans_egaisrests3egaisexcise(:eiid)';
  end;

 fMain.RefreshCDS(TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet));
end;

procedure TfEgaisRests3.RefreshcxButtonClick(Sender: TObject);
begin
 fMain.RefreshCDS(TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet));
 if StoragecxLCB.EditValue=null then
  MessageDlg('Задайте склад, по которому необходимо увидеть остатки ЕГАИС',mtError,[mbOk],0)
 else
  fMain.RefreshCDS(EgaisRests3CDS);
end;

procedure TfEgaisRests3.EgaisRests3CDSBeforeOpen(DataSet: TDataSet);
begin
 if ((StoragecxLCB.Visible) and (StoragecxLCB.EditValue<>null)) then
  EgaisRests3CDS.Params[0].AsInteger:=StoragecxLCB.EditValue;

 EgaisRests3CDS.Params[1].Clear;
 if (DrinkKindIDcxME.Visible and (DrinkKindIDcxME.Text<>'')) then
  EgaisRests3CDS.Params[1].AsString:=DrinkKindIDcxME.Text;
 if (InformBRegidcxME.Visible) and (InformBRegidcxME.Text<>'') then
  EgaisRests3CDS.Params[1].AsString:=InformBRegidcxME.Text;
 if (BarcodecxME.Visible) and (BarcodecxME.Text<>'') then
  EgaisRests3CDS.Params[1].AsString:=BarcodecxME.Text;

end;

procedure TfEgaisRests3.EgaisRests3DSDataChange(Sender: TObject;
  Field: TField);
begin
 fMain.RefreshCDS(ExciseHostCDS);
 fMain.RefreshCDS(ExciseEgaisCDS);
end;

procedure TfEgaisRests3.ExciseHostCDSBeforeOpen(DataSet: TDataSet);
begin
 TClientDataSet(DataSet).Params[0].AsInteger:=EgaisRests3CDSOUTEGAISIDENTIFIERID.AsInteger;
end;

procedure TfEgaisRests3.ExciseHostcxGridDBTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.DisplayTexts[ExciseHostcxGridDBTVFLAGERROR.Index]='1') then
  ACanvas.Brush.Color := $000000C6;
end;

procedure TfEgaisRests3.ExciseEgaiscxGridDBTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.DisplayTexts[ExciseEgaiscxGridDBTVFLAGERROR.Index]='1') then
  ACanvas.Brush.Color := $000000C6;
end;

procedure TfEgaisRests3.ReplyRestsMIClick(Sender: TObject);
var ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
begin
 with ViewcxGridDBTV.DataController do
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
         'execute procedure buytrans_egaisrests3reply('+IntToStr(StoragecxLCB.EditValue)+','+IntToStr(Values[ARowInfo.RecordIndex, ViewcxGridDBTVDRINKKINDID.Index])+')';
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

 RefreshcxButtonClick(nil);
end;

procedure TfEgaisRests3.FormResize(Sender: TObject);
begin
 ExciseHostcxGrid.Width:=round(Self.Width/2);
end;

procedure TfEgaisRests3.CopyClipBoardMIClick(Sender: TObject);
begin
 ((((Sender as TMenuItem).Parent.Owner as TPopupMenu).PopupComponent as TcxGrid).Views[0] as TcxGridDBTableView).CopyToClipboard(false);
end;

procedure TfEgaisRests3.PMPopup(Sender: TObject);

begin
 if TClientDataSet((((Sender as TPopupMenu).PopupComponent as TcxGrid).Views[0] as TcxGridDBTableView).DataController.DataSource.DataSet).Active then
 begin
 EgaisActFixBarcodeMI.Visible:=TClientDataSet((((Sender as TPopupMenu).PopupComponent as TcxGrid).Views[0] as TcxGridDBTableView).DataController.DataSource.DataSet).RecordCount>0;
 CopyClipBoardMI.Visible:=EgaisActFixBarcodeMI.Visible;

 if (Sender as TPopupMenu).PopupComponent = ExciseEgaiscxGrid then
  begin
   EgaisActFixBarcodeMI.Caption:='Отмена фиксации АМ';
   EgaisActFixBarcodeMI.Tag:=0;
   RemovingExMI.Visible:=(ExciseEgaisCDSFLAGERROR.Value=1) and
   (TClientDataSet((((Sender as TPopupMenu).PopupComponent as TcxGrid).Views[0] as TcxGridDBTableView).DataController.DataSource.DataSet).RecordCount>0);
  end
 else
   begin
   EgaisActFixBarcodeMI.Visible:=false;
   RemovingExMI.Visible:=False;
   end
 end
 else
   begin
   CopyClipBoardMI.Visible :=false;
   EgaisActFixBarcodeMI.Visible:=false;
   RemovingExMI.Visible:=False;
   end
 {else
  begin
   EgaisActFixBarcodeMI.Caption:='Фиксация АМ';
   EgaisActFixBarcodeMI.Tag:=1;
  end;}
end;

procedure TfEgaisRests3.ViewPMPopup(Sender: TObject);
var flag:boolean;
begin
 flag:=not EgaisRests3CDS.IsEmpty;
 ActChargeOnMI.Visible:=flag and EgaisRests3CDSINFORMA_REGID.IsNull and EgaisRests3CDSINFORMB_REGID.IsNull;
 EgaisTransferWithExciseFixMI.Visible:=flag and (not ActChargeOnMI.Visible) and
                                        (not EgaisRests3CDSINFORMA_REGID.IsNull) and
                                        (not EgaisRests3CDSINFORMB_REGID.IsNull) and
                                        (EgaisRests3CDSNOWEXCISECOUNTUNIT.AsInteger=0) and
                                        (EgaisRests3CDSFORMDECLARATION.AsInteger=11);
 ReplyRestsMI.Visible:=flag and (not ActChargeOnMI.Visible) and (EgaisRests3CDSFORMDECLARATION.AsInteger=11);
 ActFixBarcodeMI.Visible:=flag and (not ActChargeOnMI.Visible) and (EgaisRests3CDSFORMDECLARATION.AsInteger=11);
 EgaisResultMI.Visible:=flag;
 LineMI.Visible:=ActFixBarcodeMI.Visible or EgaisResultMI.Visible;
 SplitDKMI.Visible:=ActChargeOnMI.Visible and (EgaisRests3CDSNOWEXCISECOUNTUNIT.AsInteger>0) and (EgaisRests3CDSNOWCASHWCOUNTUNIT.AsInteger>EgaisRests3CDSNOWEXCISECOUNTUNIT.AsInteger);
end;

procedure TfEgaisRests3.EgaisActFixBarcodeMIClick(Sender: TObject);
var cxGridDBTV:TcxGridDBTableView;
    ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
begin
 cxGridDBTV:=((((Sender as TMenuItem).Parent.Owner as TPopupMenu).PopupComponent as TcxGrid).Views[0] as TcxGridDBTableView);
// ShowMessage(IntToStr(cxGridDBTV.FindItemByName(cxGridDBTV.Name+cxGridDBTV.DataController.KeyFieldNames).index));
 with cxGridDBTV.DataController do
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
         'execute procedure buytrans_egaisrests3fixexcise('+IntToStr(i)+','+
          IntToStr(TClientDataSet(DataSource.DataSet).Params[0].asInteger)+','+
          #39+Values[ARowInfo.RecordIndex, cxGridDBTV.FindItemByName(cxGridDBTV.Name+KeyFieldNames).Index]+#39+','+
          IntToStr((Sender as TMenuItem).Tag)+')';
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
  end;//with cxGEDIdbTVOrders.DataController

 RefreshcxButtonClick(nil);
end;

procedure TfEgaisRests3.ViewcxGridDBTVCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 DrinkKindIDcxME.Visible:=ViewcxGridDBTVDRINKKINDID.Visible;
 StoragecxLCB.Visible:=ViewcxGridDBTVPRINTMARK.Visible;
 InformBRegidcxME.Visible:=ViewcxGridDBTVINFORMB_REGID.Visible;
 BarcodecxME.Visible:=ViewcxGridDBTVBARCODE.Visible;

 if AViewInfo.Column.Name=ViewcxGridDBTVBARCODE.Name then
  begin
   BarcodecxME.Left:=AViewInfo.RealBounds.Left+2;
   BarcodecxME.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=ViewcxGridDBTVDRINKKINDID.Name then
  begin
   DrinkKindIDcxME.Left:=AViewInfo.RealBounds.Left+2;
   DrinkKindIDcxME.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=ViewcxGridDBTVPRINTMARK.Name then
  begin
   StoragecxLCB.Left:=AViewInfo.RealBounds.Left+2;
   StoragecxLCB.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

 if AViewInfo.Column.Name=ViewcxGridDBTVINFORMB_REGID.Name then
  begin
   InformBRegidcxME.Left:=AViewInfo.RealBounds.Left+2;
   InformBRegidcxME.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;

end;

procedure TfEgaisRests3.ActFixBarcodeMIClick(Sender: TObject);
begin
 if (not Assigned(fExciseFix)) then
  Application.CreateForm(TfExciseFix, fExciseFix);
 fExciseFix.ViewCDS.Params[0].AsInteger:=EgaisRests3CDSDRINKKINDID.AsInteger;
 fExciseFix.ShowModal;
 fMain.RefreshCDS(EgaisRests3CDS);
end;

procedure TfEgaisRests3.InformBRegidcxMEEnter(Sender: TObject);
begin
 DrinkKindIDcxME.Clear;
 BarcodecxME.Clear;
end;

procedure TfEgaisRests3.DrinkKindIDcxMEEnter(Sender: TObject);
begin
 InformBRegidcxME.Clear;
 BarcodecxME.Clear;
end;

procedure TfEgaisRests3.BarcodecxMEEnter(Sender: TObject);
begin
 InformBRegidcxME.Clear;
 DrinkKindIDcxME.Clear;
end;

procedure TfEgaisRests3.StoragecxLCBPropertiesEditValueChanged(
  Sender: TObject);
begin
 RefreshcxButtonClick(Sender);
end;

procedure TfEgaisRests3.EgaisResultMIClick(Sender: TObject);
begin
 if (not Assigned(fXmlViewer)) then
  Application.CreateForm(TfXmlViewer, fXmlViewer);
 fXmlViewer.Tag:=8;
 fXmlViewer.XmlCDS.Tag:=EgaisRests3CDSDRINKKINDID.AsInteger;
 fXmlViewer.ShowModal;
end;

procedure TfEgaisRests3.ActChargeOnMIClick(Sender: TObject);
begin
 if (not Assigned(fEgaisActChargeOn)) then
  Application.CreateForm(TfEgaisActChargeOn, fEgaisActChargeOn);
 fEgaisActChargeOn.ViewCDS.Params[0].AsInteger:=EgaisRests3CDSDRINKKINDID.AsInteger;
 fEgaisActChargeOn.SendDKToEgaiscxButton.Tag:=EgaisRests3CDSDIRECTIONID.AsInteger;
 fEgaisActChargeOn.ShowModal;
 fMain.RefreshCDS(EgaisRests3CDS);
end;

procedure TfEgaisRests3.EgaisTransferWithExciseFixMIClick(Sender: TObject);
begin
 if (not Assigned(fEgaisTransferWithExciseFix)) then
  Application.CreateForm(TfEgaisTransferWithExciseFix, fEgaisTransferWithExciseFix);
 fEgaisTransferWithExciseFix.ViewCDS.Params[0].AsInteger:=EgaisRests3CDSDRINKKINDID.AsInteger;
 fEgaisTransferWithExciseFix.ShowModal;
 fMain.RefreshCDS(EgaisRests3CDS);
end;

procedure TfEgaisRests3.SplitDKMIClick(Sender: TObject);
begin
 try
  fMain.ExecCmdTxtWithTrans('execute procedure buytrans_egaisrests3splitdk('+EgaisRests3CDSDRINKKINDID.AsString+')');
 finally
  fMain.RefreshCDS(EgaisRests3CDS);
 end;
end;

procedure TfEgaisRests3.RemovingExMIClick(Sender: TObject);
var cxGridDBTV:TcxGridDBTableView;
    ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
begin
 cxGridDBTV:=((((Sender as TMenuItem).Parent.Owner as TPopupMenu).PopupComponent as TcxGrid).Views[0] as TcxGridDBTableView);
// ShowMessage(IntToStr(cxGridDBTV.FindItemByName(cxGridDBTV.Name+cxGridDBTV.DataController.KeyFieldNames).index));
 with cxGridDBTV.DataController do
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
      fMain.ExecCmdTxtWithTrans('execute procedure EGAIS_REMOVINGAUTOINSERT1 ('+IntToStr(TClientDataSet(DataSource.DataSet).Params[0].asInteger)+','+
          #39+Values[ARowInfo.RecordIndex, cxGridDBTV.FindItemByName(cxGridDBTV.Name+KeyFieldNames).Index]+#39+')');
      end;
    end;//for  GetSelectedCount
   fMain.ExecCmdTxtWithTrans('execute procedure EGAIS_REMOVINGAUTO1 ('+IntToStr(TClientDataSet(DataSource.DataSet).Params[0].asInteger)+')');
   EndUpdate;
  end;//with cxGEDIdbTVOrders.DataController

 RefreshcxButtonClick(nil);
 showmessage('Запросите остаток АМ минут через 5');
end;

procedure TfEgaisRests3.ExportToExcelcxButtonClick(Sender: TObject);
begin
 with fMain.SaveDialog do
  begin
   DefaultExt := 'xls';
   Filter := 'Microsoft Excel 2000 (*.xls)|*.xls';
   FileName := StoragecxLCB.Text+'.xls';
   if Execute then
    ExportGrid4ToExcel(FileName,ViewcxGrid);
  end;
end;





end.
