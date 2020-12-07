unit uTransportationAddDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTextEdit, cxMaskEdit, cxSpinEdit, RxLookup, StdCtrls, Spin, Buttons,
  DBCtrls, ExtCtrls, DBClient, cxCurrencyEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, uTransportation, Menus,cxExportGrid4Link;

type
  TfTransportationAddDetail = class(TForm)
    Panel4: TPanel;
    CountUnitcxSE: TcxSpinEdit;
    StorageCashecxGrid: TcxGrid;
    StorageCashecxGridDBTV: TcxGridDBTableView;
    StorageCashecxGridLevel: TcxGridLevel;
    TopRightPanel: TPanel;
    AddBB: TBitBtn;
    CancelBB: TBitBtn;
    StorageCasheCDS: TClientDataSet;
    StorageCasheDS: TDataSource;
    StorageCasheCDSKEYID: TStringField;
    StorageCasheCDSRACKID: TIntegerField;
    StorageCasheCDSRACKNAME: TStringField;
    StorageCasheCDSDRINKKINDID: TIntegerField;
    StorageCasheCDSCAPACITYID: TIntegerField;
    StorageCasheCDSSSPRICE: TFloatField;
    StorageCasheCDSMAXRETAILPRICE: TFloatField;
    StorageCasheCDSDRINKID: TIntegerField;
    StorageCasheCDSPRINTMARK: TStringField;
    StorageCasheCDSFACTORYPRICE: TFloatField;
    StorageCasheCDSBUYBOXID: TIntegerField;
    StorageCasheCDSBUYBOXNAME: TStringField;
    StorageCasheCDSSALEBOXID: TIntegerField;
    StorageCasheCDSSALEBOXNAME: TStringField;
    StorageCasheCDSSALEBOXCAPACITY: TIntegerField;
    StorageCasheCDSDATEFECTORY: TStringField;
    StorageCasheCDSEXCISELINE: TStringField;
    StorageCasheCDSSALEBOXCOUNT: TFloatField;
    StorageCasheCDSCOUNTUNIT: TFloatField;
    StorageCashecxGridDBTVKEYID: TcxGridDBColumn;
    StorageCashecxGridDBTVRACKID: TcxGridDBColumn;
    StorageCashecxGridDBTVRACKNAME: TcxGridDBColumn;
    StorageCashecxGridDBTVDRINKKINDID: TcxGridDBColumn;
    StorageCashecxGridDBTVCAPACITYID: TcxGridDBColumn;
    StorageCashecxGridDBTVSSPRICE: TcxGridDBColumn;
    StorageCashecxGridDBTVMAXRETAILPRICE: TcxGridDBColumn;
    StorageCashecxGridDBTVDRINKID: TcxGridDBColumn;
    StorageCashecxGridDBTVPRINTMARK: TcxGridDBColumn;
    StorageCashecxGridDBTVFACTORYPRICE: TcxGridDBColumn;
    StorageCashecxGridDBTVBUYBOXID: TcxGridDBColumn;
    StorageCashecxGridDBTVBUYBOXNAME: TcxGridDBColumn;
    StorageCashecxGridDBTVSALEBOXID: TcxGridDBColumn;
    StorageCashecxGridDBTVSALEBOXNAME: TcxGridDBColumn;
    StorageCashecxGridDBTVSALEBOXCAPACITY: TcxGridDBColumn;
    StorageCashecxGridDBTVDATEFECTORY: TcxGridDBColumn;
    StorageCashecxGridDBTVEXCISELINE: TcxGridDBColumn;
    StorageCashecxGridDBTVSALEBOXCOUNT: TcxGridDBColumn;
    StorageCashecxGridDBTVCOUNTUNIT: TcxGridDBColumn;
    BuyBoxcxLCB: TcxLookupComboBox;
    SaleBoxcxLCB: TcxLookupComboBox;
    SaleBoxCountcxSE: TcxSpinEdit;
    PrintMarkFiltercxTE: TcxTextEdit;
    StorageCasheCDSDEFAULTSALEBOXID: TIntegerField;
    StorageCasheCDSTOSTORAGESALEBOXID: TIntegerField;
    StorageCasheCDSFROMSTORAGETYPEID: TIntegerField;
    StorageCasheCDSFROMSTORAGEISEXCISE: TSmallintField;
    StorageCasheCDSFROMSTORAGEDISTRIBUTIONID: TIntegerField;
    PM: TPopupMenu;
    ExportToExcelMI: TMenuItem;
    StorageCasheCDSSHELFLIFEPRESENT: TDateTimeField;
    StorageCashecxGridDBTVSHELFLIFEPRESENT: TcxGridDBColumn;
    StorageCasheCDSFLAGMAXRETAILPRICE: TSmallintField;
    StorageCasheCDSEGAISSTORAGEFLAG: TSmallintField;
    StorageCasheCDSEGAISINFO: TStringField;
    StorageCashecxGridDBTVEGAISINFO: TcxGridDBColumn;
    StorageCasheCDSFLAGRETAILSTORAGE: TSmallintField;
    StorageCasheCDSSUMWEIGHT: TFloatField;
    StorageCashecxGridDBTVSUMWEIGHT: TcxGridDBColumn;
    StorageCasheCDSWEIGHT: TFloatField;
    StorageCasheCDSDRINKGROUPNAME: TStringField;
    StorageCashecxGridDBTVDRINKGROUPNAME: TcxGridDBColumn;
    StorageCasheCDSFLAGEXCISE: TIntegerField;
    StorageCashecxGridDBTVFLAGEXCISE: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure StorageCashecxGridDBTVCustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure CancelBBClick(Sender: TObject);
    procedure PrintMarkFiltercxTEKeyPress(Sender: TObject; var Key: Char);
    procedure StorageCasheDSDataChange(Sender: TObject; Field: TField);
    procedure CountUnitSEPropertiesChange(Sender: TObject);
    procedure SaleBoxCountcxSEPropertiesChange(Sender: TObject);
    procedure AddBBClick(Sender: TObject);
    procedure CountUnitcxSEKeyPress(Sender: TObject; var Key: Char);
    procedure ExportToExcelMIClick(Sender: TObject);
    procedure StorageCasheCDSAfterOpen(DataSet: TDataSet);
    procedure StorageCashecxGridDBTVCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
   fTransportationLink:TfTransportation;
  end;

var
  fTransportationAddDetail: TfTransportationAddDetail;

implementation

uses uMain,DynamicProvider;

{$R *.dfm}

procedure TfTransportationAddDetail.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
 fMain.FloatToBcd(self);
 
 RetVal:=1;
 CompName:='StorageCashe';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   StorageCasheCDS.Close;
   StorageCasheCDS.CommandText:=
    'select * from buytrans_transstoragecashe(:fromstorageid,:tostorageid)';
   StorageCasheCDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='StorageCasheBox';
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
    'select id, fullname, capacity from box '+
    'where id<>0 '+
    'order by capacity,fullname';
   BuyBoxcxLCB.Properties.ListSource:=DS;
   BuyBoxcxLCB.Properties.KeyFieldNames:='ID';
   BuyBoxcxLCB.Properties.ListFieldNames:='FULLNAME';

   SaleBoxcxLCB.Properties.ListSource:=DS;
   SaleBoxcxLCB.Properties.KeyFieldNames:='ID';
   SaleBoxcxLCB.Properties.ListFieldNames:='FULLNAME';
   fMain.RefreshCDS(CDS);
  end; 
end;

procedure TfTransportationAddDetail.FormActivate(Sender: TObject);
begin
 StorageCasheCDS.Params[0].AsInteger:=fTransportationLink.FromStorageTempcxLCB.EditValue;
 StorageCasheCDS.Params[1].AsInteger:=fTransportationLink.ToStorageTempcxLCB.EditValue;

 fMain.RefreshCDS(StorageCasheCDS);
 if not StorageCasheCDS.IsEmpty then
  StorageCashecxGridDBTVEXCISELINE.Visible:=(StorageCasheCDSFROMSTORAGEISEXCISE.AsInteger=1);
end;

procedure TfTransportationAddDetail.StorageCashecxGridDBTVCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 if AViewInfo.Column.Name=StorageCashecxGridDBTVPRINTMARK.Name then
  begin
   PrintMarkFiltercxTE.Left:=AViewInfo.RealBounds.Left+2;
   PrintMarkFiltercxTE.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;
 if AViewInfo.Column.Name=StorageCashecxGridDBTVCOUNTUNIT.Name then
  begin
   CountUnitcxSE.Left:=AViewInfo.RealBounds.Left+2;
   CountUnitcxSE.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;
 if AViewInfo.Column.Name=StorageCashecxGridDBTVSALEBOXCOUNT.Name then
  begin
   SaleBoxCountcxSE.Left:=AViewInfo.RealBounds.Left+2;
   SaleBoxCountcxSE.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;
 if AViewInfo.Column.Name=StorageCashecxGridDBTVBUYBOXNAME.Name then
  begin
   BuyBoxcxLCB.Left:=AViewInfo.RealBounds.Left+2;
   BuyBoxcxLCB.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;
 if AViewInfo.Column.Name=StorageCashecxGridDBTVSALEBOXNAME.Name then
  begin
   SaleBoxcxLCB.Left:=AViewInfo.RealBounds.Left+2;
   SaleBoxcxLCB.Width:=AViewInfo.RealBounds.Right-AViewInfo.RealBounds.Left+1;
  end;
end;

procedure TfTransportationAddDetail.CancelBBClick(
  Sender: TObject);
begin
 Close;
end;

procedure TfTransportationAddDetail.PrintMarkFiltercxTEKeyPress(
  Sender: TObject; var Key: Char);
begin
 if (Key=#13) then
  begin
   with StorageCashecxGridDBTV.DataController.Filter do
    begin
     try
      BeginUpdate;
      Clear;
      if (PrintMarkFiltercxTE.Text<>'') then
       Root.AddItem(StorageCashecxGridDBTV.Columns[StorageCashecxGridDBTV.GetColumnByFieldName('PRINTMARK').Index],foLike,'%'+PrintMarkFiltercxTE.Text+'%',PrintMarkFiltercxTE.Text);
     finally
      Active:=true;
      EndUpdate;
     end;
    end;
  end
end;

procedure TfTransportationAddDetail.StorageCasheDSDataChange(Sender: TObject; Field: TField);
  var StorageTypeId:Integer;
begin
 if StorageCasheCDSTOSTORAGESALEBOXID.IsNull then
  SaleBoxcxLCB.EditValue:=StorageCasheCDSDEFAULTSALEBOXID.AsInteger
 else
  SaleBoxcxLCB.EditValue:=StorageCasheCDSTOSTORAGESALEBOXID.AsInteger;

 BuyBoxcxLCB.EditValue:=StorageCasheCDSBUYBOXID.AsInteger;

 CountUnitcxSE.Value:=1;
 SaleBoxCountcxSE.Value:=1;
 CountUnitcxSE.Properties.MaxValue:= StorageCasheCDSCOUNTUNIT.AsInteger;
 SaleBoxCountcxSE.Properties.MaxValue:= StorageCasheCDSSALEBOXCOUNT.AsInteger;

 if StorageCasheCDSFROMSTORAGETYPEID.AsInteger=1 then
 begin
  CountUnitcxSE.Enabled:=False;
  SaleBoxCountcxSE.Enabled:=True;
  SaleBoxCountcxSEPropertiesChange(nil);
 end//if 1-й склад
 else
 begin
  CountUnitcxSE.Enabled:=True;
  SaleBoxCountcxSE.Enabled:=False;
  CountUnitSEPropertiesChange(nil);
 end;//else

end;

procedure TfTransportationAddDetail.CountUnitSEPropertiesChange(
  Sender: TObject);
begin
 if (CountUnitcxSE.Value<>null) and (not StorageCasheCDS.IsEmpty) then
  try
   SaleBoxCountcxSE.Properties.OnChange:=nil;
   SaleBoxCountcxSE.Value:=Round(Double(CountUnitcxSE.Value) / StorageCasheCDSSALEBOXCAPACITY.AsInteger);
  finally
   SaleBoxCountcxSE.Properties.OnChange:=SaleBoxCountcxSEPropertiesChange;
  end;//try..finally
end;

procedure TfTransportationAddDetail.SaleBoxCountcxSEPropertiesChange(
  Sender: TObject);
begin
 if (SaleBoxCountcxSE.Value<>null) and (not StorageCasheCDS.IsEmpty) then
  try
   CountUnitcxSE.Properties.OnChange:=nil;
   CountUnitcxSE.Value:=SaleBoxCountcxSE.Value * StorageCasheCDSSALEBOXCAPACITY.AsInteger;
  finally
   CountUnitcxSE.Properties.OnChange:=CountUnitSEPropertiesChange;
  end;//try..finally
end;

procedure TfTransportationAddDetail.AddBBClick(Sender: TObject);
var cashebottlecount,cashebottlereserve,casheunitreserve, minimalcashe:integer;
begin
 if ((not StorageCasheCDSFLAGEXCISE.IsNull) and (StorageCasheCDSFLAGEXCISE.AsInteger=0)) then
  begin
   MessageDlg('Перемещение алкоголя без привязки АМ по ЕГАИС не проходит. Подготовьте партию.', mtError, [mbOk],0);
   exit;
  end;

 if (BuyBoxcxLCB.Text= '') then
  begin
   MessageDlg('Выберите тару приемки!', mtError, [mbOk],0);
   exit;
  end;

 if (SaleBoxcxLCB.Text= '') then
  begin
   MessageDlg('Выберите тару продажи!', mtError, [mbOk],0);
   exit;
  end;

 if TClientDataSet(SaleBoxcxLCB.Properties.ListSource.DataSet).Locate('ID',SaleBoxcxLCB.EditValue,[]) then
  if (CountUnitcxSE.Value mod TClientDataSet(SaleBoxcxLCB.Properties.ListSource.DataSet).FieldByName('CAPACITY').AsInteger <>0) then
   begin
    MessageDlg('Кол-во перемещаемых единиц не кратно таре продажи.', mtError, [mbOk],0);
    exit;
   end;

 with fMain.AnyCommandCDS do
  begin
   Close;
   CommandText:=
   'select * from buytrans_addtransdetailinfo('+StorageCasheCDS.Params[0].AsString+','+StorageCasheCDSDRINKKINDID.AsString+')';
   Open;

   if not IsEmpty then
    begin
     if MessageDlg('На складе существует более ранняя дата'#10#13+
                   'производства выбранного товара'+'('+FieldByName('bottlingdate').AsString+')'+#10#13+
                   'Перейти к позиции - (Yes)'+#10#13+
                   'Продолжить перемещение - (No)', mtConfirmation, [mbYes, mbNo] , 0)=mrYes then
      begin
       StorageCasheCDS.Locate('DRINKKINDID',FieldByName('DRINKKINDID').AsInteger,[]);
       exit;
      end;
    end;

   Close;
   CommandText:=
    'select b.directorview from drinkkind dk '+
    'join contractorder co on co.id=dk.contractorderid '+
    'join buy b on b.id=co.sqnno '+
    'where dk.id='+StorageCasheCDSDRINKKINDID.AsString;
   Open;

   if (Fields[0].AsInteger<>2) and StorageCasheCDSFROMSTORAGEDISTRIBUTIONID.IsNull then
    begin
     ShowMessage('Данная позиция находится в накладной не разрешенной отделом снабжения.');
     exit;
    end;

   if CountUnitcxSE.Value > CountUnitcxSE.Properties.MaxValue then
    CountUnitcxSE.Value:= CountUnitcxSE.Properties.MaxValue;

   if SaleBoxCountcxSE.Value > SaleBoxCountcxSE.Properties.MaxValue then
    SaleBoxCountcxSE.Value:= SaleBoxCountcxSE.Properties.MaxValue;

   Close;
   CommandText:=
   'select * from buytrans_addtransdetailcashe ('+StorageCasheCDSDRINKID.AsString+','+
                                                StorageCasheCDS.Params[0].AsString+','+
                                                StorageCasheCDSSALEBOXID.AsString+')';
   Open;

   cashebottlecount:=FieldByName('cashebottlecount').AsInteger;
   cashebottlereserve:=FieldByName('cashebottlereserve').AsInteger;
   casheunitreserve:=FieldByName('casheunitreserve').AsInteger;

   if ((cashebottlecount-cashebottlereserve-casheunitreserve)<CountUnitcxSE.Value) then
    begin
     MessageDlg('Перемещаемое количество превышает '+
                'сумму не зарезервированного товара'+#10#13+
                'Всего - '+IntToStr(cashebottlecount)+
                ', резерв - '+IntToStr(cashebottlereserve)+
                ', резерв по заказам - '+IntToStr(casheunitreserve)+
                ', доступно - '+IntToStr(cashebottlecount-cashebottlereserve-casheunitreserve)+'.',mtError,[mbOk],0);
     exit;
    end;

   Close;
   CommandText :=
    'select dst.minstock from drinkstock dst '+
    'where dst.drinkstocktypeid = 2 '+
    ' and dst.drinkid = ' + StorageCasheCDSDRINKID.AsString;
   Open;

   if ((not IsEmpty) and (Pos('D', fMain.AdvancedGrant) > 0) and
      (StorageCasheCDS.Params[0].AsInteger = 15) and (StorageCasheCDS.Params[1].AsInteger = 38)) then
    begin
     minimalcashe := FieldByName('minstock').AsInteger;
     if ((cashebottlecount - minimalcashe) < CountUnitcxSE.Value) then
      begin
       MessageDlg('Перемещение данного количества приведет ' +
                  'к снижению остатка ниже допустимого' +#10#13 +
                  'Всего - ' + IntToStr(cashebottlecount) +
                  ', неснижаемый остаток - ' + IntToStr(minimalcashe) +
                  ', доступно - '+IntToStr(cashebottlecount - minimalcashe) + '.', mtError, [mbOk], 0);
       exit;
      end;
    end;
  end;

 with fTransportationLink do
  begin
   if (not TransDetailTempRxMD.Active) then
    TransDetailTempRxMD.Open;
    
  if ((not TransDetailTempRxMD.IsEmpty ) and
   (TransDetailTempRxMD.Locate('drinkkindid;fromrackid',VarArrayOf([StorageCasheCDSDRINKKINDID.Value,StorageCasheCDSRACKID.Value]),[]))) then
   begin
    if (MessageDlg('Такая позиция уже существует. Увеличить кол-во?',mtWarning,[mbYes,mbNo],0) = mrYes) then
     begin
      // Увеличение количества может снизить остаток ниже допустимого
      if (((cashebottlecount - StorageCasheCDSCOUNTUNIT.AsInteger - CountUnitcxSE.Value) < minimalcashe) and
          (Pos('D', fMain.AdvancedGrant) > 0) and (StorageCasheCDS.Params[0].AsInteger = 15) and (StorageCasheCDS.Params[1].AsInteger = 38)) then
       begin
        MessageDlg('Перемещение данного количества приведет ' +
                   'к снижению остатка ниже допустимого' +#10#13 +
                   'Всего - ' + IntToStr(cashebottlecount - StorageCasheCDSCOUNTUNIT.AsInteger) +
                   ', неснижаемый остаток - ' + IntToStr(minimalcashe) +
                   ', доступно - '+IntToStr(cashebottlecount - minimalcashe - StorageCasheCDSCOUNTUNIT.AsInteger) + '.', mtError, [mbOk], 0);
        exit;
       end;

      TransDetailTempRxMD.Edit;
      TransDetailTempRxMDCOUNTUNIT.Value:=TransDetailTempRxMDCOUNTUNIT.Value + CountUnitcxSE.Value;
      TransDetailTempRxMDSUMWEIGHT.Value:= TransDetailTempRxMDSUMWEIGHT.Value + (CountUnitcxSE.Value * StorageCasheCDSWEIGHT.Value);
      TransDetailTempRxMDTOSALEBOXID.Value:=SaleBoxcxLCB.EditValue;
      TransDetailTempRxMDTOSALEBOXNAME.Value:=SaleBoxcxLCB.Text;
      TransDetailTempRxMDTOBUYBOXID.Value:=BuyBoxcxLCB.EditValue;
      TransDetailTempRxMD.Post;
     end //if (MessageDlg('Такая позиция уже существует.
    else
     exit;
   end
  else
   begin
    TransDetailTempRxMD.Last;
    TransDetailTempRxMD.Append;
    TransDetailTempRxMDDRINKKINDID.Value:=StorageCasheCDSDRINKKINDID.Value;
    TransDetailTempRxMDDRINKID.Value:=StorageCasheCDSDRINKID.Value;
    TransDetailTempRxMDPRINTMARK.Value:=StorageCasheCDSPRINTMARK.Value;
    TransDetailTempRxMDCOUNTUNIT.Value:=CountUnitcxSE.Value;
    TransDetailTempRxMDTOSALEBOXID.Value:=SaleBoxcxLCB.EditValue;
    TransDetailTempRxMDTOSALEBOXNAME.Value:=SaleBoxcxLCB.Text;
    TransDetailTempRxMDTOBUYBOXID.Value:=BuyBoxcxLCB.EditValue;
    TransDetailTempRxMDFROMRACKID.Value:=StorageCasheCDSRACKID.Value;
    TransDetailTempRxMDFROMRACKNAME.Value:=StorageCasheCDSRACKNAME.Value;
    TransDetailTempRxMDPRODACTIONDATE.Value:=StorageCasheCDSDATEFECTORY.Value;
    TransDetailTempRxMDSUMWEIGHT.Value:=CountUnitcxSE.Value * StorageCasheCDSWEIGHT.Value;
    TransDetailTempRxMD.Post;
   end;
  end;
 CancelBBClick(self);

end;

procedure TfTransportationAddDetail.CountUnitcxSEKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then
  AddBBClick(self);
end;

procedure TfTransportationAddDetail.ExportToExcelMIClick(Sender: TObject);
begin
 with fMain.SaveDialog do
  begin
   DefaultExt := 'xls';
   Filter := 'Microsoft Excel 2000 (*.xls)|*.xls';
   FileName := 'Остатки доступные для перемещения с '+fTransportationLink.FromStorageTempcxLCB.Text+'.xls';
   if Execute then
    ExportGrid4ToExcel(FileName,StorageCashecxGrid);
  end;
end;

procedure TfTransportationAddDetail.StorageCasheCDSAfterOpen(
  DataSet: TDataSet);
begin
 StorageCashecxGridDBTVEXCISELINE.Visible:=StorageCasheCDSEGAISSTORAGEFLAG.AsInteger=1;
 StorageCashecxGridDBTVMAXRETAILPRICE.Visible:=StorageCasheCDSFLAGMAXRETAILPRICE.AsInteger=1;
 StorageCashecxGridDBTVSHELFLIFEPRESENT.Visible:=(StorageCasheCDSEGAISSTORAGEFLAG.AsInteger=1) and (StorageCasheCDSFLAGRETAILSTORAGE.AsInteger=0);
 StorageCashecxGridDBTVEGAISINFO.Visible:=StorageCasheCDSEGAISSTORAGEFLAG.AsInteger=1;
end;

procedure TfTransportationAddDetail.StorageCashecxGridDBTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.DisplayTexts[StorageCashecxGridDBTVFLAGEXCISE.Index]='1') then
  ACanvas.Brush.Color := $00B5E8B9;

 if (AViewInfo.GridRecord.DisplayTexts[StorageCashecxGridDBTVFLAGEXCISE.Index]='0') then
  ACanvas.Brush.Color := $00DFDFFF;
end;

end.
