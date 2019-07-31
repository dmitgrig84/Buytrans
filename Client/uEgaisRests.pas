unit uEgaisRests;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, cxButtons,
  ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  DBClient,DynamicProvider, cxCheckBox, cxExportGrid4Link, cxLabel;

type
  TfEgaisRests = class(TForm)
    TopPanel: TPanel;
    Panel20: TPanel;
    RefreshcxButton: TcxButton;
    StoragecxLCB: TcxLookupComboBox;
    RegistercxLCB: TcxLookupComboBox;
    ViewcxGrid: TcxGrid;
    ViewcxGridDBTV: TcxGridDBTableView;
    ViewcxGridLevel: TcxGridLevel;
    EgaisRestsCDS: TClientDataSet;
    EgaisRestsDS: TDataSource;
    EgaisRestsCDSALCCODE: TStringField;
    EgaisRestsCDSINFORMA_REGID: TStringField;
    EgaisRestsCDSINFORMB_REGID: TStringField;
    EgaisRestsCDSUNITNAME: TStringField;
    EgaisRestsCDSCOUNTEGAISUNIT: TIntegerField;
    EgaisRestsCDSCOUNTHOSTUNIT: TIntegerField;
    EgaisRestsCDSDELTACOUNTUNIT: TIntegerField;
    EgaisRestsCDSID: TIntegerField;
    ReplyRestscxButton: TcxButton;
    ReportTypecxCB: TcxCheckBox;
    EgaisRestsCDSOPERATIONID: TIntegerField;
    EgaisRestsCDSOPERATIONNAME: TStringField;
    EgaisRestsCDSOPERATIONNUMBER: TStringField;
    EgaisRestsCDSOPERATIONPRESENT: TDateTimeField;
    EgaisRestsCDSOPERATIONSTATUS: TStringField;
    ViewcxGridDBTVID: TcxGridDBColumn;
    ViewcxGridDBTVALCCODE: TcxGridDBColumn;
    ViewcxGridDBTVINFORMA_REGID: TcxGridDBColumn;
    ViewcxGridDBTVINFORMB_REGID: TcxGridDBColumn;
    ViewcxGridDBTVUNITNAME: TcxGridDBColumn;
    ViewcxGridDBTVCOUNTEGAISUNIT: TcxGridDBColumn;
    ViewcxGridDBTVCOUNTHOSTUNIT: TcxGridDBColumn;
    ViewcxGridDBTVDELTACOUNTUNIT: TcxGridDBColumn;
    ViewcxGridDBTVOPERATIONID: TcxGridDBColumn;
    ViewcxGridDBTVOPERATIONNAME: TcxGridDBColumn;
    ViewcxGridDBTVOPERATIONNUMBER: TcxGridDBColumn;
    ViewcxGridDBTVOPERATIONPRESENT: TcxGridDBColumn;
    ViewcxGridDBTVOPERATIONSTATUS: TcxGridDBColumn;
    PM: TPopupMenu;
    BuyR2MI: TMenuItem;
    TransToR2MI: TMenuItem;
    RemR2MI: TMenuItem;
    N1: TMenuItem;
    EgaisRestsCDSFLAGPM: TSmallintField;
    Line2MI: TMenuItem;
    AlcCodeMI: TMenuItem;
    ExportToExcelcxButton: TcxButton;
    CopyToClipboardMI: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RefreshcxButtonClick(Sender: TObject);
    procedure StoragecxLCBPropertiesEditValueChanged(Sender: TObject);
    procedure ReplyRestscxButtonClick(Sender: TObject);
    procedure EgaisRestsCDSBeforeOpen(DataSet: TDataSet);
    procedure ReportTypecxCBPropertiesEditValueChanged(Sender: TObject);
    procedure EgaisRestsCDSAfterOpen(DataSet: TDataSet);
    procedure BuyR2MIClick(Sender: TObject);
    procedure RemR2MIClick(Sender: TObject);
    procedure PMPopup(Sender: TObject);
    procedure TransToR2MIClick(Sender: TObject);
    procedure AlcCodeMIClick(Sender: TObject);
    procedure ExportToExcelcxButtonClick(Sender: TObject);
    procedure CopyToClipboardMIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEgaisRests: TfEgaisRests;

implementation

uses uMain;

{$R *.dfm}

procedure TfEgaisRests.FormCreate(Sender: TObject);
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
 CompName:='EgaisRestsRegisterCDS';
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
    'select * from buytrans_egaisrestsregister(:egaisconnectid)';
   RegistercxLCB.Properties.ListSource:=DS;
   RegistercxLCB.Properties.KeyFieldNames:='EGAISIDENTIFIERID';
   RegistercxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='EgaisRests';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   EgaisRestsCDS.ProviderName:=CompName+'DSP';
   EgaisRestsCDS.RemoteServer:=fMain.SocketConnection;
   EgaisRestsCDS.CommandText:='select * from buytrans_egaisrestsview_calcv(:egaisidentifierid,:reporttypeid)';
  end;

 RefreshcxButtonClick(Sender);
end;

procedure TfEgaisRests.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfEgaisRests.RefreshcxButtonClick(Sender: TObject);
begin
 fMain.RefreshCDS(TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet));
 if (not TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet).Locate(StoragecxLCB.Properties.KeyFieldNames,StoragecxLCB.EditValue,[])) then
  begin
   StoragecxLCB.EditValue:=-1;
   RegistercxLCB.EditValue:=-1;
  end
 else
  StoragecxLCBPropertiesEditValueChanged(nil);

 fMain.RefreshCDS(EgaisRestsCDS);
end;

procedure TfEgaisRests.StoragecxLCBPropertiesEditValueChanged(
  Sender: TObject);
begin
 TClientDataSet(RegistercxLCB.Properties.ListSource.DataSet).Params[0].AsInteger:=StoragecxLCB.EditValue;
 fMain.RefreshCDS(TClientDataSet(RegistercxLCB.Properties.ListSource.DataSet));
 if TClientDataSet(RegistercxLCB.Properties.ListSource.DataSet).RecordCount=1 then
  RegistercxLCB.EditValue:=TClientDataSet(RegistercxLCB.Properties.ListSource.DataSet).FieldByName(RegistercxLCB.Properties.KeyFieldNames).AsInteger
 else
  if not TClientDataSet(RegistercxLCB.Properties.ListSource.DataSet).Locate(RegistercxLCB.Properties.KeyFieldNames,RegistercxLCB.EditValue,[]) then
   RegistercxLCB.EditValue:=-1;
end;

procedure TfEgaisRests.ReplyRestscxButtonClick(Sender: TObject);
begin
 if MessageDlg('Запросить остатки в ЕГАИС? Это займет продолжительное время.',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
  exit;

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'execute procedure buytrans_egaisrestsreply('+IntToStr(StoragecxLCB.EditValue)+')';
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E: Exception do
   begin
    SocketConnection.AppServer.DBRollback;
    MessageDlg('Ошибка добавления накладной!' + #13+ ' ' + E.Message,mtError,[mbOk],0);
    exit;
   end; //on
  end; //try..except

 RefreshcxButtonClick(nil);
end;

procedure TfEgaisRests.EgaisRestsCDSBeforeOpen(DataSet: TDataSet);
begin
 if ((RegistercxLCB.EditValue<>null) and (RegistercxLCB.EditValue>0)) then
  begin
   EgaisRestsCDS.Params[0].AsInteger:=TClientDataSet(RegistercxLCB.Properties.ListSource.DataSet).FieldByName(RegistercxLCB.Properties.KeyFieldNames).AsInteger;
   EgaisRestsCDS.Params[1].AsInteger:=ReportTypecxCB.EditValue;
  end;
end;

procedure TfEgaisRests.ReportTypecxCBPropertiesEditValueChanged(
  Sender: TObject);
begin
 if ReportTypecxCB.EditValue=0 then
  ReportTypecxCB.Caption:='Остаток ЕГАИС и ХОСТ c учетом корректировок';
 if ReportTypecxCB.EditValue=1 then
  ReportTypecxCB.Caption:='Корректировки - операций не до конца проведенные в ЕГАИС';
 if ReportTypecxCB.EditValue=2 then
  ReportTypecxCB.Caption:='Остаток ЕГАИС и ХОСТ без корректировок';
end;

procedure TfEgaisRests.EgaisRestsCDSAfterOpen(DataSet: TDataSet);
var flag:boolean;
begin
 flag:=EgaisRestsCDS.Params[1].AsInteger in [0,2];
 ViewcxGridDBTVOPERATIONNAME.Visible:=not flag;
 ViewcxGridDBTVOPERATIONNUMBER.Visible:=not flag;
 ViewcxGridDBTVOPERATIONPRESENT.Visible:=not flag;
 ViewcxGridDBTVOPERATIONSTATUS.Visible:=not flag;
 ViewcxGridDBTVCOUNTEGAISUNIT.Visible:=flag;
 ViewcxGridDBTVDELTACOUNTUNIT.Visible:=flag;
end;

procedure TfEgaisRests.BuyR2MIClick(Sender: TObject);
var ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
begin
 if ViewcxGridDBTV.DataController.GetSelectedCount=0 then
  begin
   MessageDLG('Нет выбранных записей.',mtError,[mbOK],0);
   exit;
  end;

 if MessageDLG('Вы действительно хотите поставить выбранные позиции на баланс ЕГАИС Регистра 2?',mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
  exit;

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
         'execute procedure buytrans_egaisrestsbuyr2('+
          IntToStr(i)+','+
          IntToStr(StoragecxLCB.EditValue)+','+
          #39+Values[ARowInfo.RecordIndex, ViewcxGridDBTVALCCODE.Index]+#39+','+
          FloatToStr(Values[ARowInfo.RecordIndex, ViewcxGridDBTVCOUNTEGAISUNIT.Index])+','+
          FloatToStr(Values[ARowInfo.RecordIndex, ViewcxGridDBTVCOUNTHOSTUNIT.Index])+','+
          FloatToStr(Values[ARowInfo.RecordIndex, ViewcxGridDBTVDELTACOUNTUNIT.Index])+')';
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
 fMain.RefreshCDS(EgaisRestsCDS);
end;

procedure TfEgaisRests.RemR2MIClick(Sender: TObject);
var ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
begin
 if ViewcxGridDBTV.DataController.GetSelectedCount=0 then
  begin
   MessageDLG('Нет выбранных записей.',mtError,[mbOK],0);
   exit;
  end;

 if MessageDLG('Вы действительно хотите списать выбранные позиции с баланса ЕГАИС Регистра 2?',mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
  exit;

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
         'execute procedure buytrans_egaisrestsremr2('+
          IntToStr(i)+','+
          IntToStr(StoragecxLCB.EditValue)+','+
          #39+Values[ARowInfo.RecordIndex, ViewcxGridDBTVALCCODE.Index]+#39+','+
          FloatToStr(Values[ARowInfo.RecordIndex, ViewcxGridDBTVCOUNTEGAISUNIT.Index])+','+
          FloatToStr(Values[ARowInfo.RecordIndex, ViewcxGridDBTVCOUNTHOSTUNIT.Index])+','+
          FloatToStr(Values[ARowInfo.RecordIndex, ViewcxGridDBTVDELTACOUNTUNIT.Index])+')';
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
 fMain.RefreshCDS(EgaisRestsCDS);
end;

procedure TfEgaisRests.PMPopup(Sender: TObject);
var flag:boolean;
begin
 flag:=not EgaisRestsCDS.IsEmpty;
 BuyR2MI.Visible:=flag and (EgaisRestsCDSFLAGPM.AsInteger=2);
 TransToR2MI.Visible:=flag and (EgaisRestsCDSFLAGPM.AsInteger=1);
 RemR2MI.Visible:=flag and (EgaisRestsCDSFLAGPM.AsInteger=2);
 Line2MI.Visible:=flag and EgaisRestsCDSUNITNAME.IsNull and (RemR2MI.Visible or TransToR2MI.Visible);
 AlcCodeMI.Visible:=flag and EgaisRestsCDSUNITNAME.IsNull;
end;

procedure TfEgaisRests.TransToR2MIClick(Sender: TObject);
var ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
begin
 if ViewcxGridDBTV.DataController.GetSelectedCount=0 then
  begin
   MessageDLG('Нет выбранных записей.',mtError,[mbOK],0);
   exit;
  end;

 if MessageDLG('Вы действительно хотите списать выбранные позиции с баланса ЕГАИС Регистра 2?',mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
  exit;

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
         'execute procedure buytrans_egaisreststranstor2('+
          IntToStr(i)+','+
          IntToStr(StoragecxLCB.EditValue)+','+
          #39+Values[ARowInfo.RecordIndex, ViewcxGridDBTVALCCODE.Index]+#39+','+
          FloatToStr(Values[ARowInfo.RecordIndex, ViewcxGridDBTVCOUNTEGAISUNIT.Index])+','+
          #39+Values[ARowInfo.RecordIndex, ViewcxGridDBTVINFORMA_REGID.Index]+#39+','+
          #39+Values[ARowInfo.RecordIndex, ViewcxGridDBTVINFORMB_REGID.Index]+#39+')';
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
 fMain.RefreshCDS(EgaisRestsCDS);
end;

procedure TfEgaisRests.AlcCodeMIClick(Sender: TObject);
var ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
begin
 if MessageDLG('Вы действительно хотите запросить данные по выбранному алкокоду?'+#10#13+
               'Ответ будет получен через несколько минут.',mtConfirmation, [mbYes, mbNo], 0)<>mrYes then
  exit;

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
         'execute procedure buytrans_egaisrestsalccode('+#39+Values[ARowInfo.RecordIndex, ViewcxGridDBTVALCCODE.Index]+#39+')';
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
 fMain.RefreshCDS(EgaisRestsCDS);
end;

procedure TfEgaisRests.ExportToExcelcxButtonClick(Sender: TObject);
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

procedure TfEgaisRests.CopyToClipboardMIClick(Sender: TObject);
begin
 ViewcxGridDBTV.CopyToClipboard(false);
end;

end.
