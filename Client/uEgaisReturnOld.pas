unit uEgaisReturnOld;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit,
  cxSpinEdit, StdCtrls, cxRadioGroup, Menus, cxButtons, ExtCtrls,
  cxCalendar, DB, DBClient,DateUtils,uReturn;

type
  TfEgaisReturn = class(TForm)
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
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ReturnTypecxLCBPropertiesEditValueChanged(Sender: TObject);
    procedure ApplaycxButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
   fReturnLink:TfReturn;
  end;

var
  fEgaisReturn: TfEgaisReturn;

implementation

uses DynamicProvider, uMain;

{$R *.dfm}

procedure TfEgaisReturn.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
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

procedure TfEgaisReturn.FormActivate(Sender: TObject);
var ReturnTypeCode:integer;
begin
 if not TClientDataSet(ReturnTypecxLCB.Properties.ListSource.DataSet).Active then
  fMain.RefreshCDS(TClientDataSet(ReturnTypecxLCB.Properties.ListSource.DataSet));
 ReturnTypecxLCB.Enabled:=false;
 RemovingTypecxLCB.Enabled:=false;
 StoragecxLCB.Enabled:=false;
 InventorycxLCB.Enabled:=false;

 ReturnTypecxLCB.Enabled:=true;
 ReturnTypecxLCB.EditValue:=-1;
 ReturnTypecxLCBPropertiesEditValueChanged(self);
end;

procedure TfEgaisReturn.ReturnTypecxLCBPropertiesEditValueChanged(
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
 TClientDataSet(RemovingTypecxLCB.Properties.ListSource.DataSet).Params[1].AsInteger:=fReturnLink.ReturnSaleCDSSTORAGEID.AsInteger;
 fMain.RefreshCDS(TClientDataSet(RemovingTypecxLCB.Properties.ListSource.DataSet));
 RemovingTypecxLCB.Enabled:=true;

 if (ReturnTypecxLCB.EditValue=1) then
  begin
   TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet).Params[0].AsInteger:=fReturnLink.ReturnSaleCDSSTORAGEID.AsInteger;
   fMain.RefreshCDS(TClientDataSet(StoragecxLCB.Properties.ListSource.DataSet));
   StoragecxLCB.Enabled:=true;
  end;

 if (ReturnTypecxLCB.EditValue=2) then
  begin
   TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet).Params[0].AsInteger:=fReturnLink.ReturnSaleCDSSTORAGEID.AsInteger;
   TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet).Params[1].Clear;
   fMain.RefreshCDS(TClientDataSet(InventorycxLCB.Properties.ListSource.DataSet));
   InventorycxLCB.Enabled:=true;
  end;
end;

procedure TfEgaisReturn.ApplaycxButtonClick(Sender: TObject);
begin
 if ReturnTypecxLCB.Text='' then
  begin
   MessageDlg('Укажите тип возврата',mtError,[mbOk],0);
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

 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'execute procedure buytrans_returnegaisadd(:saleid,:returntypeid,:storageid,:present,:removingtypeid,:inventoryid)';


   InUpDelCDS.Params[0].AsInteger:=fReturnLink.ReturnSaleCDSSALEID.AsInteger;
   InUpDelCDS.Params[1].AsInteger:=ReturnTypecxLCB.EditValue;
   InUpDelCDS.Params[2].AsInteger:=StoragecxLCB.EditValue;
   InUpDelCDS.Params[3].AsDateTime:=PresentcxDE.Date;
   InUpDelCDS.Params[4].AsInteger:=RemovingTypecxLCB.EditValue;
   InUpDelCDS.Params[5].AsInteger:=InventorycxLCB.EditValue;

   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
  except on E:Exception do
   begin
    SocketConnection.AppServer.DBRollBack;
    MessageDlg('Ошибка: '+E.Message,mtError,[mbOk],0);
    exit;
   end;//on E:Exception
  end;//try..except }
 Close;
 ModalResult:=mrOk;
end;



end.
