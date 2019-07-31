unit uReturnAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReturn, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit,
  cxSpinEdit, StdCtrls, cxRadioGroup, Menus, cxButtons, ExtCtrls,
  cxCalendar, DB, DBClient, DateUtils;

type
  TfReturnAdd = class(TForm)
    BoxcxRB: TcxRadioButton;
    UnitcxRB: TcxRadioButton;
    BoxCountcxSE: TcxSpinEdit;
    UnitCountcxSE: TcxSpinEdit;
    BoxcxLCB: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    ReturnTypecxLCB: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    RemovingTypecxLCB: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    StoragecxLCB: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    InventorycxLCB: TcxLookupComboBox;
    PresentcxDE: TcxDateEdit;
    cxLabel6: TcxLabel;
    BottomPanel: TPanel;
    ApplaycxButton: TcxButton;
    CancelcxButton: TcxButton;
    procedure CancelcxButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ReturnTypecxLCBPropertiesEditValueChanged(Sender: TObject);
    procedure BoxcxRBClick(Sender: TObject);
    procedure UnitcxRBClick(Sender: TObject);
    procedure BoxcxLCBPropertiesEditValueChanged(Sender: TObject);
    procedure ApplaycxButtonClick(Sender: TObject);
    procedure BoxCountcxSEPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
   fReturnLink:TfReturn;
  end;

var
  fReturnAdd: TfReturnAdd;

implementation

uses DynamicProvider, uMain;

{$R *.dfm}

procedure TfReturnAdd.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
 RetVal:=1;
 CompName:='ReturnAddBox';
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
    'select * from buytrans_returnaddbox(:saledetailid)';
   BoxcxLCB.Properties.ListSource:=DS;
   BoxcxLCB.Properties.KeyFieldNames:='BOXID';
   BoxcxLCB.Properties.ListFieldNames:='BOXNAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='ReturnAddType';
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
    'select * from buytrans_returntype';
   ReturnTypecxLCB.Properties.ListSource:=DS;
   ReturnTypecxLCB.Properties.KeyFieldNames:='ID';
   ReturnTypecxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='ReturnAddRemovingType';
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
    'select * from buytrans_returnremovingtype(:returntypeid,:storageid)';
   RemovingTypecxLCB.Properties.ListSource:=DS;
   RemovingTypecxLCB.Properties.KeyFieldNames:='ID';
   RemovingTypecxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='ReturnAddStorage';
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
    'select * from buytrans_returnstorage(:storageid)';
   StoragecxLCB.Properties.ListSource:=DS;
   StoragecxLCB.Properties.KeyFieldNames:='ID';
   StoragecxLCB.Properties.ListFieldNames:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='ReturnAddInventory';
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
    'select * from buytrans_returnaddinventory(:storageid,:inventoryid)';
   InventorycxLCB.Properties.ListSource:=DS;
   InventorycxLCB.Properties.KeyFieldNames:='INVENTORYID';
   InventorycxLCB.Properties.ListFieldNames:='INVENTORYID;PRESENT;BASIS';
   InventorycxLCB.Properties.ListFieldIndex:=2;
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 PresentcxDE.Date:=Date;

end;

procedure TfReturnAdd.CancelcxButtonClick(Sender: TObject);
begin
 Close;
end;

procedure TfReturnAdd.FormActivate(Sender: TObject);
var ReturnTypeCode:integer;
begin
 BoxcxRB.Enabled:=false;
 BoxCountcxSE.Enabled:=false;
 UnitcxRB.Enabled:=false;
 UnitCountcxSE.Enabled:=false;
 BoxcxLCB.Enabled:=false;


 TClientDataSet(BoxcxLCB.Properties.ListSource.DataSet).Params[0].AsInteger:=
  fReturnLink.ReturnSaleDetailCDSSALEDETAILID.AsInteger;
 fMain.RefreshCDS(TClientDataSet(BoxcxLCB.Properties.ListSource.DataSet));

 if not TClientDataSet(ReturnTypecxLCB.Properties.ListSource.DataSet).Active then
  fMain.RefreshCDS(TClientDataSet(ReturnTypecxLCB.Properties.ListSource.DataSet));
 ReturnTypecxLCB.Enabled:=false;
 RemovingTypecxLCB.Enabled:=false;
 StoragecxLCB.Enabled:=false;
 InventorycxLCB.Enabled:=false;

 if (Tag=0) then
  begin
   BoxcxRB.Enabled:=true;
   BoxcxRB.Checked:=true;
   BoxcxRBClick(self);
   BoxCountcxSE.Value:=1;
   BoxCountcxSE.Properties.MinValue:=0;
   BoxCountcxSE.Properties.MaxValue:=fReturnLink.ReturnSaleDetailCDSMAXRETURNSALEBOXCOUNT.AsInteger;
   UnitCountcxSE.Properties.MinValue:=0;
   UnitCountcxSE.Properties.MaxValue:=fReturnLink.ReturnSaleDetailCDSMAXRETURNCOUNTUNIT.AsInteger;

   ReturnTypecxLCB.Enabled:=true;
   ReturnTypecxLCB.EditValue:=-1;
   ReturnTypecxLCBPropertiesEditValueChanged(self);

   case fReturnLink.ReturnSaleDetailCDSRETURNCHECKCODE.AsInteger of
    1,2:begin //обычный возврат с ячеистого и не ячеистого склада
         if fReturnLink.ReturnSaleDetailCDSNESTEDBONUS.AsFloat=0 then
          UnitcxRB.Enabled:=true;
         fReturnAdd.Color:=clBtnFace;
        end;//1
    3:begin//технологический возврат ;
       ReturnTypecxLCB.EditValue:=1;
       ReturnTypecxLCB.Enabled:=false;
       ReturnTypecxLCBPropertiesEditValueChanged(Nil);
       StoragecxLCB.Enabled:=false;
       fReturnAdd.Color:=clRed;
      end;//3
   else
    begin
     MessageDlg('Не известный формат возврата.',mtError,[mbOk],0);
     Close;
    end;
   end;//case
  end;//Tag=0

 if Tag>0 then
  begin
   UnitcxRB.Checked:=true;
   UnitCountcxSE.Value:=fReturnLink.ReturnCDSSTORAGEBOTTLECOUNT.AsFloat;
   UnitCountcxSE.Enabled:=false;

   BoxcxLCB.EditValue:=fReturnLink.ReturnCDSBOXID.AsInteger;
   BoxcxLCB.Enabled:=false;

   ReturnTypecxLCB.EditValue:=fReturnLink.ReturnCDSRETURNTYPEID.AsInteger;
   ReturnTypecxLCB.Enabled:=false;

   StoragecxLCB.EditValue:=fReturnLink.ReturnCDSTOSTORAGEID.AsInteger;
   StoragecxLCB.Enabled:=false;

   RemovingTypecxLCB.EditValue:=fReturnLink.ReturnCDSREMOVINGTYPEID.AsInteger;
   RemovingTypecxLCB.Enabled:=true;

   TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet).Params[1].AsInteger:=fReturnLink.ReturnCDSINVENTORYID.AsInteger;
   fMain.RefreshCDS(TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet));
   InventorycxLCB.EditValue:=fReturnLink.ReturnCDSINVENTORYID.AsInteger;
   InventorycxLCB.Enabled:=false;

   PresentcxDE.Date:=fReturnLink.ReturnCDSPRESENT.AsDateTime;
  end;
end;

procedure TfReturnAdd.ReturnTypecxLCBPropertiesEditValueChanged(
  Sender: TObject);
begin
 StoragecxLCB.EditValue:=-1;
 StoragecxLCB.Enabled:=false;

 RemovingTypecxLCB.EditValue:=-1;
 RemovingTypecxLCB.Enabled:=false;

 InventorycxLCB.EditValue:=-1;
 InventorycxLCB.Enabled:=false;

 if (ReturnTypecxLCB.Text='') or (ReturnTypecxLCB.EditValue=null) or (ReturnTypecxLCB.EditValue<=0) then
  exit;

 TClientDataSet(RemovingTypecxLCB.Properties.ListSource.DataSet).Params[0].AsInteger:=ReturnTypecxLCB.EditValue;
 TClientDataSet(RemovingTypecxLCB.Properties.ListSource.DataSet).Params[1].AsInteger:=
  fReturnLink.ReturnSaleDetailCDSSTORAGEID.AsInteger;;
 fMain.RefreshCDS(TClientDataSet(RemovingTypecxLCB.Properties.ListSource.DataSet));
 RemovingTypecxLCB.Enabled:=true;

 if (ReturnTypecxLCB.EditValue=1) then
  begin
   TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet).Params[0].AsInteger:=
    fReturnLink.ReturnSaleDetailCDSSTORAGEID.AsInteger;
   fMain.RefreshCDS(TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet));
   StoragecxLCB.Enabled:=true;
  end;

 if (ReturnTypecxLCB.EditValue=2) then
  begin
   TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet).Params[0].AsInteger:=
    fReturnLink.ReturnSaleDetailCDSSTORAGEID.AsInteger;
   TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet).Params[1].Clear;
   fMain.RefreshCDS(TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet));
   InventorycxLCB.Enabled:=true;
  end;
end;

procedure TfReturnAdd.BoxcxRBClick(Sender: TObject);
begin
 BoxCountcxSE.Enabled:=true;
 UnitCountcxSE.Value:=BoxCountcxSE.Value*fReturnLink.ReturnSaleDetailCDSSALEBOXCAPACITY.AsInteger;
 UnitCountcxSE.Enabled:=false;
 BoxcxLCB.EditValue:=fReturnLink.ReturnSaleDetailCDSSALEBOXID.AsInteger;
 BoxcxLCB.Enabled:=false;
end;

procedure TfReturnAdd.UnitcxRBClick(Sender: TObject);
begin
 BoxCountcxSE.Enabled:=false;
 UnitCountcxSE.Enabled:=true;
 BoxcxLCB.Enabled:=true;
end;

procedure TfReturnAdd.BoxcxLCBPropertiesEditValueChanged(Sender: TObject);
var CDS:TClientDataSet;
begin
 if (BoxcxLCB.Text='') or (BoxcxLCB.EditValue=null) or (BoxcxLCB.EditValue<=0) then
  exit;

 CDS:=TClientDataSet(BoxcxLCB.Properties.ListSource.DataSet);
 if CDS.Active and CDS.Locate('BOXID',BoxcxLCB.EditValue,[]) then
  if ((UnitCountcxSE.Value mod CDS.FieldByName('BOXCAPACITY').AsInteger) <> 0) then
   UnitCountcxSE.Value:=((UnitCountcxSE.Value div CDS.FieldByName('BOXCAPACITY').AsInteger)+1)*CDS.FieldByName('BOXCAPACITY').AsInteger;
end;

procedure TfReturnAdd.BoxCountcxSEPropertiesChange(Sender: TObject);
begin
 UnitCountcxSE.Value:=BoxCountcxSE.Value*fReturnLink.ReturnSaleDetailCDSSALEBOXCAPACITY.AsInteger;
end;

procedure TfReturnAdd.ApplaycxButtonClick(Sender: TObject);
begin
 if ReturnTypecxLCB.Text='' then
  begin
   MessageDlg('Укажите тип возврата',mtError,[mbOk],0);
   exit;
  end;//if

 if UnitCountcxSE.Value<=0 then
  begin
   MessageDlg('Задайте количество единиц большее 0.',mtError,[mbOk],0);
   exit;
  end;//if

 if (RemovingTypecxLCB.Text='') then
  begin
   MessageDlg('Укажите причину возврата/списания',mtError,[mbOk],0);
   exit;
  end;//if

 if (StoragecxLCB.Enabled) and (StoragecxLCB.Text='') then
  begin
   MessageDlg('Не выбран склад, на который возвращается товар.',mtError,[mbOk],0);
   exit;
  end;

 if (InventorycxLCB.Enabled) and (InventorycxLCB.Text='') then
  begin
   MessageDlg('Не выбран документ инвентаризационной описи-акта, '+
              'на котором основано данное списание. Выберете нужный документ из списка.',mtError,[mbOk],0);
   exit;
  end;//if

 if (YearOf(PresentcxDE.Date)<> YearOf(fReturnLink.ReturnSaleCDSPRESENT.AsDateTime)) or
    (MonthOf(PresentcxDE.Date)<>MonthOf(fReturnLink.ReturnSaleCDSPRESENT.AsDateTime)) then
  if MessageDlg('Месяц даты накладной не совпадает с месяцом даты возврата. Продолжить?',mtConfirmation,[mbYes, mbNo],0)<>mrYes then
   exit;

 with fMain do //запись возврата
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'execute procedure buytrans_returnadd('+
     IntToStr(fReturnAdd.Tag)+','+
    ' :drinksaleid, :bottlecount, :boxid, :returntypeid, :tostorageid, '+
    ' :present, :removingtypeid, :inventoryid)';

   InUpDelCDS.Params[0].AsInteger:=fReturnLink.ReturnSaleDetailCDSSALEDETAILID.AsInteger;
   InUpDelCDS.Params[1].AsInteger:=UnitCountcxSE.Value;
   InUpDelCDS.Params[2].AsInteger:=BoxcxLCB.EditValue;
   InUpDelCDS.Params[3].AsInteger:=ReturnTypecxLCB.EditValue;
   InUpDelCDS.Params[4].AsInteger:=StoragecxLCB.EditValue;
   InUpDelCDS.Params[5].AsDateTime:=PresentcxDE.Date;
   InUpDelCDS.Params[6].AsInteger:=RemovingTypecxLCB.EditValue;
   InUpDelCDS.Params[7].AsInteger:=InventorycxLCB.EditValue;

   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Execute;
   SocketConnection.Appserver.DBCommit;
  except on E:Exception do
   begin
    MessageDlg('Ошибка: '+E.Message,mtError,[mbOk],0);
    SocketConnection.AppServer.DBRollBack;
    exit;
   end;
  end;//try..except
 fMain.RefreshCDS(fReturnLink.ReturnSaleDetailCDS);
 CancelcxButtonClick(self);
end;



end.
