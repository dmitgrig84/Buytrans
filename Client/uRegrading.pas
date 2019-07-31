unit uRegrading;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxSplitter, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ExtCtrls, StdCtrls, Buttons, cxContainer, cxCurrencyEdit,
  cxDropDownEdit, cxCalendar, cxGroupBox, cxRadioGroup, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, DBClient,
  MConnect, SConnect, IBCustomDataSet, Menus, cxImageComboBox,cxExportGrid4Link,
  cxCheckBox,Printers, ImgList;
                
type
  TfRegrading = class(TForm)
    TopPanel: TPanel;
    ViewcxGridDBTV: TcxGridDBTableView;
    ViewcxGridLevel: TcxGridLevel;
    ViewcxGrid: TcxGrid;
    BottomPanel: TPanel;
    cxSplitter: TcxSplitter;
    BottomRightPanel: TPanel;
    Panel4: TPanel;
    cxSplitter2: TcxSplitter;
    Panel5: TPanel;
    CreateCustomDetailBB: TBitBtn;
    RemoveFromDetailBB: TBitBtn;
    DetailcxGrid: TcxGrid;
    DetailcxGridDBTV: TcxGridDBTableView;
    DetailcxGridLevel: TcxGridLevel;
    SourcecxGrid: TcxGrid;
    SourcecxGridDBTV: TcxGridDBTableView;
    SourcecxGridLevel: TcxGridLevel;
    DummySaleLeftTopPanel: TPanel;
    Bevel7: TBevel;
    AddBB: TBitBtn;
    DeleteBB: TBitBtn;
    CenterTopPanel: TPanel;
    RightTopPanel: TPanel;
    RefreshSB: TSpeedButton;
    Bevel3: TBevel;
    Label9: TLabel;
    Label36: TLabel;
    SaveBB: TBitBtn;
    BegincxDE: TcxDateEdit;
    EndcxDE: TcxDateEdit;
    CancelBB: TBitBtn;
    RegradingCDS: TClientDataSet;
    RegradingDS: TDataSource;
    SourceCDS: TClientDataSet;
    SourceDS: TDataSource;
    DetailCDS: TClientDataSet;
    DetailDS: TDataSource;
    ViewPM: TPopupMenu;
    IsEnterMI: TMenuItem;
    IL: TImageList;
    StoragecxLCB: TcxLookupComboBox;
    InventorycxLCB: TcxLookupComboBox;
    RegradingCDSID: TIntegerField;
    RegradingCDSNAME: TStringField;
    RegradingCDSSTORAGEID: TIntegerField;
    RegradingCDSSTORAGENAME: TStringField;
    RegradingCDSPRESENT: TDateTimeField;
    RegradingCDSISENTER: TSmallintField;
    RegradingCDSWHOINSERT: TStringField;
    RegradingCDSWHENINSERT: TDateTimeField;
    ViewcxGridDBTVID: TcxGridDBColumn;
    ViewcxGridDBTVPRESENT: TcxGridDBColumn;
    ViewcxGridDBTVNAME: TcxGridDBColumn;
    ViewcxGridDBTVSTORAGEID: TcxGridDBColumn;
    ViewcxGridDBTVSTORAGENAME: TcxGridDBColumn;
    ViewcxGridDBTVWHOINSERT: TcxGridDBColumn;
    ViewcxGridDBTVWHENINSERT: TcxGridDBColumn;
    ViewcxGridDBTVISENTER: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    SourceCDSKEYID: TStringField;
    SourceCDSDRINKKINDID: TIntegerField;
    SourceCDSDRINKID: TIntegerField;
    SourceCDSPRINTMARK: TStringField;
    SourceCDSRACKID: TIntegerField;
    SourceCDSRACKNAME: TStringField;
    SourceCDSCOUNTUNIT: TFloatField;
    SourcecxGridDBTVKEYID: TcxGridDBColumn;
    SourcecxGridDBTVDRINKKINDID: TcxGridDBColumn;
    SourcecxGridDBTVDRINKID: TcxGridDBColumn;
    SourcecxGridDBTVPRINTMARK: TcxGridDBColumn;
    SourcecxGridDBTVRACKID: TcxGridDBColumn;
    SourcecxGridDBTVRACKNAME: TcxGridDBColumn;
    SourcecxGridDBTVCOUNTUNIT: TcxGridDBColumn;
    DetailCDSID: TIntegerField;
    DetailCDSDRINKKINDID: TIntegerField;
    DetailCDSDRINKID: TIntegerField;
    DetailCDSPRINTMARK: TStringField;
    DetailCDSRACKID: TIntegerField;
    DetailCDSRACKNAME: TStringField;
    DetailCDSCOUNTUNIT: TFloatField;
    DetailCDSNEWDRINKID: TIntegerField;
    DetailCDSNEWPRINTMARK: TStringField;
    DetailCDSNEWDRINKKINDID: TIntegerField;
    DetailcxGridDBTVID: TcxGridDBColumn;
    DetailcxGridDBTVDRINKKINDID: TcxGridDBColumn;
    DetailcxGridDBTVDRINKID: TcxGridDBColumn;
    DetailcxGridDBTVPRINTMARK: TcxGridDBColumn;
    DetailcxGridDBTVRACKID: TcxGridDBColumn;
    DetailcxGridDBTVRACKNAME: TcxGridDBColumn;
    DetailcxGridDBTVCOUNTUNIT: TcxGridDBColumn;
    DetailcxGridDBTVNEWDRINKID: TcxGridDBColumn;
    DetailcxGridDBTVNEWPRINTMARK: TcxGridDBColumn;
    DetailcxGridDBTVNEWDRINKKINDID: TcxGridDBColumn;
    SourceCDSPRODACTIONDATE: TStringField;
    SourcecxGridDBTVPRODACTIONDATE: TcxGridDBColumn;
    RegradingCDSBUYINFO: TStringField;
    ViewcxGridDBTVBUYINFO: TcxGridDBColumn;
    EgaisSendcxCB: TcxCheckBox;
    NewDrinkIDcxME: TcxMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure AddBBClick(Sender: TObject);
    procedure DeleteBBClick(Sender: TObject);
    procedure CenterTopPanelResize(Sender: TObject);
    procedure CancelBBClick(Sender: TObject);
    procedure SaveBBClick(Sender: TObject);
    procedure RefreshSBClick(Sender: TObject);
    procedure StoragecxLCBKeyPress(Sender: TObject; var Key: Char);
    procedure RegradingCDSBeforeOpen(DataSet: TDataSet);
    procedure RegradingDSDataChange(Sender: TObject; Field: TField);
    procedure RemoveFromDetailBBClick(Sender: TObject);
    procedure DummySaleEndcxDEPropertiesChange(Sender: TObject);
    procedure DummySaleBegincxDEPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IsEnterMIClick(Sender: TObject);
    procedure ViewPMPopup(Sender: TObject);
    procedure CopyMIClick(Sender: TObject);
    procedure DetailCDSBeforeOpen(DataSet: TDataSet);
    procedure StoragecxLCBPropertiesEditValueChanged(Sender: TObject);
    procedure DetailCDSAfterOpen(DataSet: TDataSet);
    procedure SourceCDSAfterOpen(DataSet: TDataSet);
    procedure CreateCustomDetailBBClick(Sender: TObject);
    procedure InventorycxLCBKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure EnableEditor(flag:boolean);
  end;

var
  fRegrading: TfRegrading;

implementation

uses uMain,DynamicProvider, uRegradingDetailAdd;

{$R *.dfm}

procedure TfRegrading.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
 RetVal:=1;
 CompName:='RegradingStorage';
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
    'select * from buytrans_regradingstorage';
   StoragecxLCB.Properties.ListSource:=DS;
   StoragecxLCB.Properties.KeyFieldNames:='ID';
   StoragecxLCB.Properties.ListFieldNames:='NAME';
  end;

 RetVal:=1;
 CompName:='RegradingInventory';
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
    'select * from buytrans_regradinginventory(:storageid)';
   InventorycxLCB.Properties.ListSource:=DS;
   InventorycxLCB.Properties.KeyFieldNames:='ID';
   InventorycxLCB.Properties.ListFieldNames:='NAME';
  end;

 RetVal:=1;
 CompName:='Regrading';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   RegradingCDS.ProviderName:=CompName+'DSP';
   RegradingCDS.RemoteServer:=fMain.SocketConnection;
   RegradingCDS.CommandText:='select * from buytrans_regradingview(:begindate,:enddate)';
  end;

 RetVal:=1;
 CompName:='RegradingDetail';
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
   DetailCDS.CommandText:='select * from buytrans_regradingdetail(:regradingid)';
  end;

 RetVal:=1;
 CompName:='RegradingSource';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   SourceCDS.ProviderName:=CompName+'DSP';
   SourceCDS.RemoteServer:=fMain.SocketConnection;
   SourceCDS.CommandText:='select * from buytrans_regradingsource(:regradingid)';
  end;

 BegincxDE.Date:=Date;
 EndcxDE.Date:=Date;

 RefreshSBClick(nil);
end;

procedure TfRegrading.AddBBClick(Sender: TObject);
begin
 EnableEditor(true);
 fMain.RefreshCDS(TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet));
end;


procedure TfRegrading.EnableEditor(flag:boolean);
begin
 AddBB.Enabled:=not flag;
 DeleteBB.Enabled:=not flag;

 TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet).Close;
 StoragecxLCB.EditValue:=-1;
 StoragecxLCB.Enabled:=flag;

 TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet).Close;
 InventorycxLCB.EditValue:=-1;
 InventorycxLCB.Enabled:=flag;

 SaveBB.Enabled:=flag;
 CancelBB.Enabled:=flag;

 ViewcxGrid.Enabled:=not flag;
 BottomPanel.Enabled:=not flag;

 BegincxDE.Enabled:=not flag;
 EndcxDE.Enabled:=not flag;
 RefreshSB.Enabled:=not flag;
end;

procedure TfRegrading.DeleteBBClick(Sender: TObject);
var ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
begin
 if MessageDLG('Вы действительно хотите удалить пересорт?', mtConfirmation,[mbYes,mbNo],0)<>mrYes then
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
       fMain.SocketConnection.AppServer.DBStartTransaction;
       try
        fMain.InUpDelCDS.Close;
        fMain.InUpDelCDS.CommandText:=
         'delete from regrading r where r.id='+RegradingCDSID.AsString;
        fMain.InUpDelCDS.Execute;
        fMain.SocketConnection.AppServer.DBCommit;
       except on E: Exception do
        begin
         fMain.SocketConnection.AppServer.DBRollBack;
         MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
        end; //on
       end; //try
      end;
    end;//for  GetSelectedCount
   EndUpdate;
  end;//with cxGEDIdbTVOrders.DataController
 RefreshSBClick(nil);
end;

procedure TfRegrading.CenterTopPanelResize(Sender: TObject);
begin
 if EgaisSendcxCB.Visible then
  begin
   StoragecxLCB.Width:=CenterTopPanel.Width-StoragecxLCB.Left-EgaisSendcxCB.Width -10;
   EgaisSendcxCB.Left:=StoragecxLCB.Left+StoragecxLCB.Width+5;
  end
 else
   StoragecxLCB.Width:=CenterTopPanel.Width-StoragecxLCB.Left-5;

 InventorycxLCB.Width:=CenterTopPanel.Width-InventorycxLCB.Left-5;
end;

procedure TfRegrading.CancelBBClick(Sender: TObject);
begin
  EnableEditor(false);
  AddBB.SetFocus;
end;

procedure TfRegrading.SaveBBClick(Sender: TObject);
var id:integer;
begin
 if StoragecxLCB.Text='' then
  begin
   MessageDLG('Не выбран склад.',mtError,[mbOK],0);
   exit;
  end;

 if InventorycxLCB.Text='' then
  begin
   MessageDLG('Не выбран акт инвенторизации.',mtError,[mbOK],0);
   exit;
  end;

 fMain.SocketConnection.AppServer.DBStartTransaction;
 try
  fMain.InUpDelCDS.Close;
  fMain.InUpDelCDS.CommandText:=
   'select * from buytrans_regradingadd('+
             IntToStr(StoragecxLCB.EditValue)+','+
             IntToStr(InventorycxLCB.EditValue)+','+
             IntToStr(EgaisSendcxCB.EditValue)+')';
  fMain.InUpDelCDS.Open;
  id:=fMain.InUpDelCDS.Fields[0].AsInteger;
  fMain.SocketConnection.AppServer.DBCommit;
 except on E: Exception do
  begin
   fMain.SocketConnection.AppServer.DBRollBack;
   MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
  end; //on
 end; //try
 fMain.RefreshCDS(RegradingCDS);
 RegradingCDS.Locate('ID',id,[]);
 EnableEditor(false);
end;

procedure TfRegrading.CopyMIClick(Sender: TObject);
var DummySaleID:integer;
begin

end;

procedure TfRegrading.RefreshSBClick(Sender: TObject);
begin
 fMain.RefreshCDS(RegradingCDS);
end;

procedure TfRegrading.StoragecxLCBKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (Key=#13) then
   InventorycxLCB.SetFocus;

 if (Key=#27) then
  CancelBBClick(nil);
end;

procedure TfRegrading.InventorycxLCBKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (Key=#13) then
  SaveBB.SetFocus;

 if (Key=#27) then
  CancelBBClick(nil);

end;

procedure TfRegrading.RegradingCDSBeforeOpen(DataSet: TDataSet);
begin
 RegradingCDS.Params[0].AsDateTime:=BegincxDE.Date;
 RegradingCDS.Params[1].AsDateTime:=EndcxDE.Date;
end;

procedure TfRegrading.RegradingDSDataChange(Sender: TObject;
  Field: TField);
begin
 try
  if RegradingCDS.Active and (RegradingCDS.RecordCount>0) then
   begin
    fMain.RefreshCDS(DetailCDS);
    fMain.RefreshCDS(SourceCDS);
    DeleteBB.Enabled:=(RegradingCDSISENTER.AsInteger=0);
    CreateCustomDetailBB.Enabled:=(RegradingCDSISENTER.AsInteger=0);
    RemoveFromDetailBB.Enabled:=(RegradingCDSISENTER.AsInteger=0);
   end;
 except
  ;
 end;
end;

procedure TfRegrading.RemoveFromDetailBBClick(Sender: TObject);
var ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
begin
 if DetailcxGridDBTV.DataController.GetSelectedCount=0 then
  begin
   MessageDLG('Нет выбранных записей.',mtError,[mbOK],0);
   exit;
  end;

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
       fMain.SocketConnection.AppServer.DBStartTransaction;
       try
        fMain.InUpDelCDS.Close;
        fMain.InUpDelCDS.CommandText:=
         'delete from regradingdetail rd '+
         'where rd.id='+IntToStr(Values[ARowInfo.RecordIndex, DetailcxGridDBTVID.Index]);
        fMain.InUpDelCDS.Execute;
        fMain.SocketConnection.AppServer.DBCommit;
       except on E: Exception do
        begin
         fMain.SocketConnection.AppServer.DBRollBack;
         MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
        end; //on
       end; //try
      end;
    end;//for  GetSelectedCount
   EndUpdate;
  end;//with cxGEDIdbTVOrders.DataController
 RefreshSBClick(sender);
end;

procedure TfRegrading.DummySaleEndcxDEPropertiesChange(Sender: TObject);
begin
 if EndcxDE.Date<BegincxDE.Date then
  BegincxDE.Date:=EndcxDE.Date;
end;

procedure TfRegrading.DummySaleBegincxDEPropertiesChange(
  Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  EndcxDE.Date:=BegincxDE.Date;
end;

procedure TfRegrading.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfRegrading.IsEnterMIClick(Sender: TObject);
begin
 if MessageDLG('Вы действительно хотите изменить статус накладной, дальнейшее редактирование будет запрещено?', mtConfirmation,[mbYes,mbNo],0)<>mrYes then
  exit;

 fMain.SocketConnection.AppServer.DBStartTransaction;
 try
  fMain.InUpDelCDS.Close;
  fMain.InUpDelCDS.CommandText:=
   'update regrading r set r.isenter=1 where r.id='+RegradingCDSID.AsString;
  fMain.InUpDelCDS.Execute;
  fMain.SocketConnection.AppServer.DBCommit;
 except on E: Exception do
  begin
   fMain.SocketConnection.AppServer.DBRollBack;
   MessageDLG('Ошибка:' +#13 + E.Message,mtError,[mbOK],0);
  end; //on
 end; //try
 RefreshSBClick(sender);
end;

procedure TfRegrading.ViewPMPopup(Sender: TObject);
begin
 IsEnterMI.Visible:=(RegradingCDS.Active) and (RegradingCDS.RecordCount>0) and
                    (RegradingCDSISENTER.AsInteger=0) and (DetailCDS.Active) and
                    (DetailCDS.RecordCount>0);
end;

procedure TfRegrading.DetailCDSBeforeOpen(DataSet: TDataSet);
begin
 TClientDataSet(DataSet).Params[0].AsInteger:=RegradingCDSID.AsInteger;
end;

procedure TfRegrading.StoragecxLCBPropertiesEditValueChanged(
  Sender: TObject);
begin
 EgaisSendcxCB.Visible:=false;
 if (StoragecxLCB.EditValue<>null) and (StoragecxLCB.EditValue>0) then
  begin
   if TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet).Locate('ID',StoragecxLCB.EditValue,[]) then
    EgaisSendcxCB.Visible:=TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet).FieldByName('egaissendflag').AsInteger=1;

   TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet).Params[0].AsInteger:=StoragecxLCB.EditValue;
   fMain.RefreshCDS(TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet));
   if TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet).RecordCount=1 then
    InventorycxLCB.EditValue:=TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet).FieldByName(InventorycxLCB.Properties.KeyFieldNames).AsInteger;
  end;
 CenterTopPanelResize(self);
end;

procedure TfRegrading.DetailCDSAfterOpen(DataSet: TDataSet);
begin
 RemoveFromDetailBB.Enabled:= not DetailCDS.IsEmpty;
end;

procedure TfRegrading.SourceCDSAfterOpen(DataSet: TDataSet);
begin
 CreateCustomDetailBB.Enabled:= not SourceCDS.IsEmpty;
end;

procedure TfRegrading.CreateCustomDetailBBClick(Sender: TObject);
var ARowIndex,i: Integer;
    ARowInfo: TcxRowInfo;
begin
{
 if (not Assigned(fRegradingDetailAdd)) then
  Application.CreateForm(TfRegradingDetailAdd, fRegradingDetailAdd);
 fRegradingDetailAdd.fRemovingLink:=self;
 fRegradingDetailAdd.FormAfterCreate(nil);
 fRemovingAdd.Tag:=0;
 fRegradingDetailAdd.ShowModal;}

 if SourcecxGridDBTV.DataController.GetSelectedCount=0 then
  begin
   MessageDLG('Нет выбранных записей.',mtError,[mbOK],0);
   exit;
  end;

 if NewDrinkIDcxME.Text='' then
  begin
   MessageDLG('Не выбран код нового товара.',mtError,[mbOK],0);
   exit;
  end;

 with SourcecxGridDBTV.DataController do
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
         'INSERT INTO REGRADINGDETAIL (REGRADINGID, DRINKKINDID, RACKID, COUNTUNIT, NEWDRINKID) '+
         'values('+RegradingCDSID.AsString+','+
                   IntToStr(Values[ARowInfo.RecordIndex, SourcecxGridDBTVDRINKKINDID.Index])+','+
                   IntToStr(Values[ARowInfo.RecordIndex, SourcecxGridDBTVRACKID.Index])+','+
                   FloatToStr(Values[ARowInfo.RecordIndex, SourcecxGridDBTVCOUNTUNIT.Index])+','+
                   NewDrinkIDcxME.Text+')';
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
 RefreshSBClick(sender);

end;



end.
