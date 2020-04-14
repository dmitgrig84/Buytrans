unit uInventoryAdd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  AxCtrls,  StdVcl, MConnect, Db, DBClient,
  SConnect, ExtCtrls, RxGIF, StdCtrls, Buttons, ComCtrls, Tabnotbk, Menus,
  Grids, ImgList, DBCtrls, Spin, Mask, ToolEdit, math, RxLookup,Variants,
  RxMemDS, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  RXCtrls,FileInfo, CurrEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, dxCalc, dxEditor, dxEdLib, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, grimgctrl, cxCheckBox, dxExEdtr,
  IBCustomDataSet, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid,LocCxUnit, cxSplitter,
  cxCalendar, cxButtons, cxExportGrid4Link, cxSpinEdit,uInventory, uInventoryList,
  QuickRpt, QRCtrls, cxCurrencyEdit, cxCalc;

type
  TfInventoryAdd = class(TForm)
    PC: TPageControl;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    InventoryDetailDS: TDataSource;
    InventoryPC: TPageControl;
    ReportInventoryTS0: TTabSheet;
    ScrollBox1: TScrollBox;
    InvPanelF1Top: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    InvBevel: TBevel;
    InventorySpdBtnPlus: TSpeedButton;
    InventorySpdBtnMinus: TSpeedButton;
    InvNoLabel: TLabel;
    lInventoryid: TLabel;
    InventoryDateEdit: TDateEdit;
    StorageRxDBLC: TRxDBLookupCombo;
    InvPredsedatelEdit: TEdit;
    InventoryEdit: TEdit;
    InventorySQNNOcxME: TcxMaskEdit;
    InvPanelF1Midle: TPanel;
    Label21: TLabel;
    InvEmplSpdBtnPlus: TSpeedButton;
    InvEmplSpdBtnMinus: TSpeedButton;
    EmployeeRxDBLC: TRxDBLookupCombo;
    InvPanelF1Bottom: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    InventoryBasisEdit: TEdit;
    InvBeginCasheDTP: TDateTimePicker;
    InvBEGINCASHEDE: TDateEdit;
    InvEndCasheDE: TDateEdit;
    InvEndCasheDTP: TDateTimePicker;
    InvSumCasheRubEdit: TEdit;
    InvSumCasheKopEdit: TEdit;
    SumGoodsEdit: TEdit;
    InvLastGoodsReportDE: TDateEdit;
    InvLastInventoryDE: TDateEdit;
    ReportInventoryTS1: TTabSheet;
    InvPanelF2Top: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    InvNumberEdit: TEdit;
    InventorySumEdit: TEdit;
    InvRemovingBottlesEdit: TEdit;
    InvBuyBottlesEdit: TEdit;
    ReportInventoryTS2: TTabSheet;
    ScrollBox2: TScrollBox;
    InvPanelF3Top: TPanel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    InvCounterMenEdit: TEdit;
    InvGeneralMenEdit: TEdit;
    InvSumRubEdit: TEdit;
    InvSumKopEdit: TEdit;
    BottomPanel: TPanel;
    ApplaycxButton: TcxButton;
    CancelcxButton: TcxButton;
    InventoryDetailcxGrid: TcxGrid;
    InventoryDetailcxGridDBTV: TcxGridDBTableView;
    InventoryDetailcxGridLevel: TcxGridLevel;
    InventoryDetailcxGridDBTVDRINKID: TcxGridDBColumn;
    InventoryDetailcxGridDBTVDRINKKINDID: TcxGridDBColumn;
    InventoryDetailcxGridDBTVNAME: TcxGridDBColumn;
    InventoryDetailcxGridDBTVBOTTLECOUNT: TcxGridDBColumn;
    InventoryDetailcxGridDBTVPRICE: TcxGridDBColumn;
    InventoryDetailcxGridDBTVSUMPRICE: TcxGridDBColumn;
    InventoryDetailcxGridDBTVISREADY: TcxGridDBColumn;
    InventoryDetailcxGridDBTVISMAKE: TcxGridDBColumn;
    Label1: TLabel;
    InvSumBuhRubEdit: TEdit;
    Label2: TLabel;
    InvSumBuhKopEdit: TEdit;
    Label3: TLabel;
    InventoryDetailCDS: TClientDataSet;
    InventoryRetEdit: TEdit;
    InvRetEmplSpdBtnPlus: TSpeedButton;
    InvRetEmplSpdBtnMinus: TSpeedButton;
    InventoryRetCheckBoxFirst: TCheckBox;
    InvLastGoodsReportEndDE: TDateEdit;
    Label4: TLabel;
    InventoryRetCheckBoxThird: TCheckBox;
    InventoryDetailCDSDRINKID: TIntegerField;
    InventoryDetailCDSDRINKKINDID: TIntegerField;
    InventoryDetailCDSNAME: TStringField;
    InventoryDetailCDSBOTTLECOUNT: TFloatField;
    InventoryDetailCDSSUMPRICE: TFloatField;
    InventoryDetailCDSDOCTYPENAME: TStringField;
    InventoryDetailCDSISREADY: TSmallintField;
    InventoryDetailCDSISMAKE: TSmallintField;
    InventoryDetailCDSREMPRICE: TFloatField;
    InventoryDetailCDSREMBOTTLECOUNT: TFloatField;
    InventoryDetailCDSREMSUMPRICE: TFloatField;
    InventoryDetailCDSBUYPRICE: TFloatField;
    InventoryDetailCDSBUYBOTTLECOUNT: TFloatField;
    InventoryDetailCDSBUYSUMPRICE: TFloatField;
    InventoryDetailCDSPRICE: TFloatField;
    SynccxCB: TcxCheckBox;
    RegradingcxCB: TcxCheckBox;
    procedure InventorySpdBtnPlusClick(Sender: TObject);
    procedure InventorySpdBtnMinusClick(Sender: TObject);
    procedure InvEmplSpdBtnPlusClick(Sender: TObject);
    procedure InvEmplSpdBtnMinusClick(Sender: TObject);
    procedure EmployeeRxDBLCChange(Sender: TObject);
    procedure InvSumCasheRubEditKeyPress(Sender: TObject; var Key: Char);
    procedure InventorySumEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure CancelcxButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ApplaycxButtonClick(Sender: TObject);
    procedure InvRetEmplSpdBtnPlusClick(Sender: TObject);
    procedure InvRetEmplSpdBtnMinusClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    fInventoryLink:TfInventory;
    fInventoryListLink: TfInventoryList;


    InvSumPriceMinus, InvSumPricePlus: double;
    InvSumBottleMinus, InvSumBottlePlus: integer;
    NotPrintNotes: boolean;
    isInventoryEdit: boolean;
    isInventoryCacheEdit: boolean;

    function ComponentNameCount(Name: String): integer;
    procedure ComponentNameFree(Name: String);
    procedure ResetAllComponent(AComponent: TComponent);
    procedure ResetAllInventoryControls;
    procedure CheckAllInventoryControls(var sqnno, present, storageid, basis,
                        begincashedate,endcashedate,sumcashe,sumbuh,sumgoods,
                        lastgoodsreportdate,lastgoodsreportenddate,lastinventorydate,
                        allunit,removingunit,buyunit,
                        inventorysum,invopissum: string);
  end;

type TUniqueReader = Class(TReader)
     LastRead: TComponent;
     procedure ComponentRead(Component: TComponent);
     procedure SetNameUnique( Reader: TReader; Component: TComponent; var Name: string);
     function IncName(Name: string): string;
end;

var
 fInventoryAdd: TfInventoryAdd;
//   Merror:string;
//   MaxInvent:integer;

implementation

uses uMain,DynamicProvider;

{$R *.dfm}

const // Названия дублируемых компонентов
    InvEdit='InventoryEdit';
    InvBtnPlus='InventorySpdBtnPlus';
    InvBtnMinus='InventorySpdBtnMinus';

    InvEmplCmb='EmployeeRxDBLC';
    InvEmplBtnPlus='InvEmplSpdBtnPlus';
    InvEmplBtnMinus='InvEmplSpdBtnMinus';

    InvRetEdit = 'InventoryRetEdit';
    InvRetBtnPlus = 'InvRetEmplSpdBtnPlus';
    InvRetBtnMinus = 'InvRetEmplSpdBtnMinus';
    InvRetChkBoxFirst = 'InventoryRetCheckBoxFirst';
    InvRetChkBoxThird = 'InventoryRetCheckBoxThird';


procedure TUniqueReader.ComponentRead(Component: TComponent);
begin
  LastRead := Component;
end;

// Задаем уникальное имя считываемому компоненту,
//например, "Panel2", если "Panel1" уже существует
procedure TUniqueReader.SetNameUnique(Reader: TReader;
          Component: TComponent; // Считываемый компонент
          var Name: string       // Имя компонента для дальнейшей модификации
          );
var tempname: string;
begin
  tempname := Name;
  while Component.Owner.FindComponent(Name) <> nil do
  begin
//        Name := Format('%s%d', [tempname, i]);
        Name:=IncName(Name);
  end;
end;

function DuplicateComponents( AComponent: TComponent  // исходный компонент
         ): TComponent;              // возвращаемся к созданию нового компонента

         procedure RegisterComponentClasses(AComponent: TComponent);
         var i : integer;
         begin
            RegisterClass(TPersistentClass(AComponent.ClassType));
            if AComponent is TWinControl then
               if TWinControl(AComponent).ControlCount > 0 then
                  for i := 0 to (TWinControl(AComponent).ControlCount-1) do
                      RegisterComponentClasses(TWinControl(AComponent).Controls[i]);
         end;

var Stream: TMemoryStream;
    UniqueReader: TUniqueReader;
    Writer: TWriter;
begin

    result := nil;
    UniqueReader := nil;
    Writer := nil;
    try
       Stream := TMemoryStream.Create;
       RegisterComponentClasses(AComponent);
       try
          Writer := TWriter.Create(Stream, 4096);
          Writer.Root := AComponent.Owner;
          Writer.WriteSignature;
          Writer.WriteComponent(AComponent);
          Writer.WriteListEnd;
       finally
          Writer.Free;
       end;
       Stream.Position := 0;
       try
          UniqueReader := TUniqueReader.Create(Stream, 4096);     // создаем поток, перемещающий данные о компоненте в конструктор
          UniqueReader.OnSetName := UniqueReader.SetNameUnique;
          UniqueReader.LastRead := nil;
          if AComponent is TWinControl then
             UniqueReader.ReadComponents(// считываем компоненты и суб-компоненты
                          TWinControl(AComponent).Owner,
                          TWinControl(AComponent).Parent,
                          UniqueReader.ComponentRead)
          else
             UniqueReader.ReadComponents(// читаем компоненты
                          AComponent.Owner,
                          TControl(AComponent).Parent,
                          UniqueReader.ComponentRead);
          result := UniqueReader.LastRead;
       finally
          UniqueReader.Free;
       end;
    finally
       Stream.Free;
    end;
end;

{ Функция инкрементирования входящего имени  на единицу}
function TUniqueReader.IncName(Name: string): string;
var s,s1,s2,s3: string;
    i: integer;
begin
  s:=Trim(Name);
  Result:=s;
  for i:=Length(s) downto 1 do
    if (Ord(s[i])>=48) and (Ord(s[i])<=57) then begin
       s1:=Copy(s,0,i-1);
       s2:=Copy(s,i,Length(s)-(i-1));
       s3:=IntToStr(StrToIntDef(s2,0)+1);
       Result:=s1+s3;
       end;
  if Result=s then begin
     Result:=s+'0';
  end;
end;

// функция подсчитывает количество компанентов с названием  типа Name, Name0 и т.д
function TfInventoryAdd.ComponentNameCount(Name: String): integer;
begin
 Result:=-1;
 if FindComponent(Name)<> nil then begin
    Inc(Result);
    while FindComponent(Name+IntToStr(Result))<> nil do
          Inc(Result);
 end;
 Inc(Result);
end;

procedure TfInventoryAdd.ComponentNameFree(Name: String);
var i:Integer;
begin
 for i:=ComponentNameCount(Name)-1 downto 0 do
   if FindComponent(Name+IntToStr(i))<>nil then
      if Name=InvEmplBtnMinus then
            InvEmplSpdBtnMinusClick(FindComponent(Name+IntToStr(i)))
         else if name=InvBtnMinus then
                 InventorySpdBtnMinusClick(FindComponent(Name+IntToStr(i)))
            else if name = InvRetBtnMinus then
                 InvRetEmplSpdBtnMinusClick(FindComponent(Name + IntToStr(i)));
end;

procedure TfInventoryAdd.ResetAllComponent(AComponent: TComponent);
var i: Integer;
    Temp: TComponent;
begin
   for i:=0 to TWinControl(AComponent).ControlCount-1 do begin
       Temp:=TWinControl(AComponent).Controls[i];
       if (Temp is TEdit) then
          TEdit(Temp).Text:='';
       if (Temp is TDateEdit) then
          TDateEdit(Temp).Date:=Date;
       if (Temp is TDateTimePicker) then
          TDateTimePicker(Temp).Time:=Time;
       if (Temp is TRxDBLookupCombo) then
          TRxDBLookupCombo(Temp).ResetField;
   end;
   InvNoLabel.Caption:='№';
end;

procedure TfInventoryAdd.ResetAllInventoryControls;
begin
   ComponentNameFree(InvEmplBtnMinus);
   ComponentNameFree(InvBtnMinus);
   ComponentNameFree(InvRetBtnMinus);
   ResetAllComponent(InvPanelF1Midle);
   ResetAllComponent(InvPanelF1Top);
   ResetAllComponent(InvPanelF1Bottom);
   ResetAllComponent(InvPanelF2Top);
   ResetAllComponent(InvPanelF3Top);
end;

procedure TfInventoryAdd.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
    CDS:TClientDataSet;
    DS:TDataSource;
begin
 fMain.FloatToBcd(self);

 RetVal:=1;
 CompName:='InventoryStorage';
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
    'select * from buytrans_inventorystorage';
   StorageRxDBLC.LookupSource:=DS;
   StorageRxDBLC.LookupField:='ID';
   StorageRxDBLC.LookupDisplay:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal:=1;
 CompName:='InventoryEmployee';
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
    'select * from buytrans_inventoryemployeeview';
   EmployeeRxDBLC.LookupSource:=DS;
   EmployeeRxDBLC.LookupField:='ID';
   EmployeeRxDBLC.LookupDisplay:='NAME';
   CDS.RemoteServer:=fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'InventoryDetail';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (RetVal <> 0) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   InventoryDetailCDS.CommandText:=
    'select drinkid, drinkkindid, name, '+
    ' coalesce(remprice,buyprice) price, '+
    ' coalesce(rembottlecount,buybottlecount) bottlecount, '+
    ' coalesce(remsumprice,buysumprice) sumprice, '+
    ' doctypename, isready, ismake, '+
    ' remprice, rembottlecount, remsumprice, '+
    ' buyprice, buybottlecount, buysumprice '+
    'from buytrans_inventorydetailview(:inventoryid,:tableid) '+
    'order by orderby desc,name';
   InventoryDetailCDS.RemoteServer := fMain.SocketConnection;
  end;
end;


procedure TfInventoryAdd.InventorySpdBtnPlusClick(Sender: TObject);
var edit: Tedit;
    SpdBtn1, SpdBtn2: TSpeedButton;
    Top ,NextTag: Integer;
    Prefix, CurTag: string;
begin
 NextTag:=0;
 Top:=InventoryEdit.Top+InventoryEdit.Height+2;
 CurTag:='';

 if TControl(Sender).Tag>=0 then
  begin
   Prefix:=IntToStr(TControl(Sender).Tag);
   NextTag:=TControl(Sender).Tag+1;
   Top:=TControl(FindComponent(InvEdit+Prefix)).top+InventoryEdit.Height+2;
   CurTag:=IntToStr(TControl(Sender).Tag);
  end;

 InvBevel.Height:=InvBevel.Height+InventoryEdit.Height+2;
 InvPanelF1Top.Height:=InvPanelF1Top.Height+InventoryEdit.Height+2;

 with TControl(FindComponent(InvEdit+IntToStr(NextTag))) do
  Free;

 TComponent(Edit):=DuplicateComponents(FindComponent(InvEdit));
 Edit.Top:=Top;
 Edit.Text:='';
 Edit.Tag:=NextTag;
 Edit.Name:=InvEdit+IntToStr(NextTag);

 try
  with TControl(FindComponent(InvBtnPlus+IntToStr(NextTag))) do
   Free;

  TComponent(SpdBtn1):=DuplicateComponents(FindComponent(InvBtnPlus+Prefix));
  SpdBtn1.Top:=Top;
  SpdBtn1.OnClick:=InventorySpdBtnPlusClick;
  SpdBtn1.Tag:=NextTag;
  TControl(FindComponent(InvBtnPlus+CurTag)).Enabled:=False;

 except on E: Exception do
  MessageDlg('Ошибка при создании компанента. Исх. сообщение->'+E.Message,mtError,[mbOk],0);
 end;

 try
  with TControl(FindComponent(InvBtnMinus+IntToStr(NextTag))) do
   Free;

  TComponent(SpdBtn2):=DuplicateComponents(FindComponent(InvBtnMinus+Prefix));
  SpdBtn2.Top:=Top;
  SpdBtn2.OnClick:=InventorySpdBtnMinusClick;
  SpdBtn2.Tag:=NextTag;
  TControl(FindComponent(InvBtnMinus+CurTag)).Enabled:=False;
 except on E: Exception do
  MessageDlg('Ошибка при создании компанента. Исх. сообщение->'+E.Message,mtError,[mbOk],0);
 end;

end;

procedure TfInventoryAdd.InventorySpdBtnMinusClick(Sender: TObject);
var CurTag: Integer;
begin
 CurTag:=TControl(Sender).Tag;
 try
  if CurTag>=0 then
   begin
    with TControl(FindComponent(InvEdit+IntToStr(CurTag))) do
     Free;
    with TControl(FindComponent(InvBtnPlus+IntToStr(CurTag))) do
     Free;
    with TControl(FindComponent(InvBtnMinus+IntToStr(CurTag+1))) do
     Free;
    if CurTag-1<0 then
     begin
      TControl(FindComponent(InvBtnPlus)).Enabled:=True;
      TControl(FindComponent(InvBtnMinus)).Enabled:=True;
      TControl(Sender).Visible:=False;
      InvBevel.Height:=InventoryEdit.Height+4;
      InvPanelF1Top.Height:=InventoryEdit.Top+InventoryEdit.Height+6
     end
    else
     begin
      TControl(FindComponent(InvBtnPlus+IntToStr(CurTag-1))).Enabled:=True;
      TControl(FindComponent(InvBtnMinus+IntToStr(CurTag-1))).Enabled:=True;
      TControl(FindComponent(InvBtnMinus+IntToStr(CurTag))).Visible:=False;
      InvBevel.Height:=InvBevel.Height-InventoryEdit.Height-2;
      InvPanelF1Top.Height:=InvPanelF1Top.Height-InventoryEdit.Height-2;
     end;
   end;
 except on E:Exception do
  MessageDlg('Ошибка при удалении компанента. Исх.Сообщение->'+E.Message,mtError,[mbOk],0);
 end;
end;

procedure TfInventoryAdd.InvEmplSpdBtnPlusClick(Sender: TObject);
var LookupCombo: TRxDBLookupCombo;
    SpdBtn1, SpdBtn2: TSpeedButton;
    Top,NextTag: Integer;
    Prefix,CurTag: string;
begin
 Top:=EmployeeRxDBLC.top+EmployeeRxDBLC.Height+2;
 CurTag:='';
 NextTag:=0;
 if TControl(Sender).Tag>=0 then
  begin
   Prefix:=IntToStr(TControl(Sender).Tag);
   NextTag:=TControl(Sender).Tag+1;
   Top:=TControl(FindComponent(InvEmplCmb+Prefix)).top+EmployeeRxDBLC.Height+2;
   CurTag:=IntToStr(TControl(Sender).Tag);
  end;

 InvPanelF1Midle.Height:=InvPanelF1Midle.Height+EmployeeRxDBLC.Height+2;

 with TControl(FindComponent(InvEmplCmb+IntToStr(NextTag))) do
  Free;

 TComponent(LookupCombo):=DuplicateComponents(FindComponent(InvEmplCmb+Prefix));
 LookupCombo.Top:=Top;
 LookupCombo.Tag:=NextTag;

 try
  with TControl(FindComponent(InvEmplBtnPlus+IntToStr(NextTag))) do
   Free;
  TComponent(SpdBtn1):=DuplicateComponents(FindComponent(InvEmplBtnPlus+Prefix));
  SpdBtn1.Top:=Top;
  SpdBtn1.OnClick:=InvEmplSpdBtnPlusClick;
  SpdBtn1.Tag:=NextTag;
  TControl(FindComponent(InvEmplBtnPlus+CurTag)).Enabled:=False;
 except on E: Exception do
   MessageDlg('Ошибка при создании компанента. Исх. сообщение->'+E.Message,mtError,[mbOk],0);
 end;

 try
  with TControl(FindComponent(InvEmplBtnMinus+IntToStr(NextTag))) do
   Free;
  TComponent(SpdBtn2):=DuplicateComponents(FindComponent(InvEmplBtnMinus+Prefix));
  SpdBtn2.Top:=Top;
  SpdBtn2.OnClick:=InvEmplSpdBtnMinusClick;
  SpdBtn2.Tag:=NextTag;
  TControl(FindComponent(InvEmplBtnMinus+CurTag)).Enabled:=False;
 except on E: Exception do
  MessageDlg('Ошибка при создании компанента. Исх. сообщение->'+E.Message,mtError,[mbOk],0);
 end;

end;

procedure TfInventoryAdd.InvEmplSpdBtnMinusClick(Sender: TObject);
var CurTag: Integer;
begin
 CurTag:=TControl(Sender).Tag;

 try
 if CurTag>=0 then
  begin
   with TControl(FindComponent(InvEmplCmb+IntToStr(CurTag))) do
    Free;
   with TControl(FindComponent(InvEmplBtnPlus+IntToStr(CurTag))) do
    Free;
   with TControl(FindComponent(InvEmplBtnMinus+IntToStr(CurTag+1))) do
    Free;

   if CurTag-1<0 then
    begin
     TRxDBLookupCombo(FindComponent(InvEmplCmb)).ResetField;
     TControl(FindComponent(InvEmplBtnPlus)).Enabled:=True;
     TControl(FindComponent(InvEmplBtnMinus)).Enabled:=True;
     TControl(Sender).Visible:=False;
     InvPanelF1Midle.Height:=EmployeeRxDBLC.Height+4;
    end
   else
    begin
     TControl(FindComponent(InvEmplBtnPlus+IntToStr(CurTag-1))).Enabled:=True;
     TControl(FindComponent(InvEmplBtnMinus+IntToStr(CurTag-1))).Enabled:=True;
     TControl(FindComponent(InvEmplBtnMinus+IntToStr(CurTag))).Visible:=False;
     InvPanelF1Midle.Height:=InvPanelF1Midle.Height-EmployeeRxDBLC.Height-2;
    end;
  end;
 except on E:Exception do
  MessageDlg('Ошибка при удалении компанента. Исх.Сообщение->'+E.Message,mtError,[mbOk],0);
 end;
end;

procedure TfInventoryAdd.EmployeeRxDBLCChange(Sender: TObject);
var key: Variant;
    i: Integer;
    Component : TRxDBLookupCombo;
begin
 Key:=TRxDBLookupCombo(Sender).KeyValue;
 for i:=0 to ComponentNameCount(InvEmplCmb)-1 do
  begin
  if i=0 then
   Component:=TRxDBLookupCombo(FindComponent(InvEmplCmb))
  else
   Component:=TRxDBLookupCombo(FindComponent(InvEmplCmb+IntToStr(i-1)));
  if Component<>TRxDBLookupCombo(Sender) then
   if (Component.KeyValue=Key) and (Component.Text<>'') then
    begin
     MessageDlg('Данный сотрудник уже выбран',mtError,[mbOk],0);
     TRxDBLookupCombo(Sender).ResetField;
     exit;
    end;//if
  end;//for
end;

procedure TfInventoryAdd.InvSumCasheRubEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if ((Ord(key)<48) or (Ord(key)>57)) and (Ord(key)<>8) then
  begin
   key:=#0;
   beep;
  end;
end;

procedure TfInventoryAdd.InventorySumEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if ((Ord(key)<48) or (Ord(key)>57)) and (Ord(key)<>8) and (key<>'.') then
  begin
   key:=#0;
   beep;
  end;
end;

procedure TfInventoryAdd.CancelcxButtonClick(Sender: TObject);
begin
 Close;
end;

procedure TfInventoryAdd.FormActivate(Sender: TObject);
var InventoryID:string;
    Counter2,Counter3:integer;
begin
 ApplaycxButton.Enabled:=(Pos('I',fMain.AdvancedGrant)>0);
 InventoryPC.ActivePageIndex:=0;
 fMain.RefreshCDS(TClientDataSet(StorageRxDBLC.LookupSource.DataSet));
 fMain.RefreshCDS(TClientDataSet(EmployeeRxDBLC.LookupSource.DataSet));
 InventoryDetailCDS.Close;
 InventoryDetailCDS.Params[0].AsInteger := Tag;
 InventoryDetailCDS.Params[1].AsInteger := ApplaycxButton.Tag;
 InventoryDetailCDS.Open;
 ResetAllInventoryControls;
 InventoryID := IntToStr(Tag);

 if (fInventoryLink = nil) then
  begin
   EmployeeRxDBLC.Visible := False;
   InvEmplSpdBtnPlus.Visible := False;
   InvEmplSpdBtnMinus.Visible := False;
   InventoryRetEdit.Visible := True;
   InvRetEmplSpdBtnPlus.Visible := True;
   InvRetEmplSpdBtnMinus.Visible := True;
   InventoryRetCheckBoxFirst.Visible := True;
   InventoryRetCheckBoxThird.Visible := True;
   fInventoryAdd.Width := 849;
  end
 else
  begin
   EmployeeRxDBLC.Visible := True;
   InvEmplSpdBtnPlus.Visible := True;
   InvEmplSpdBtnMinus.Visible := True;
   InventoryRetEdit.Visible := False;
   InvRetEmplSpdBtnPlus.Visible := False;
   InvRetEmplSpdBtnMinus.Visible := False;
   InventoryRetCheckBoxFirst.Visible := False;
   InventoryRetCheckBoxThird.Visible := False;
   fInventoryAdd.Width := 678;
  end;

 if (Tag>0) then
  with fMain do
   begin
    AnyCommandCDS.Close;
    AnyCommandCDS.CommandText:=
     'select present,sqnno,storageid,basis,begincashe,endcashe,sumcashe,sumbuh,sumgoods, '+
     ' lastgoodsreport, lastinventory, numbers, removingbottles, '+
     ' buybottles, inventorysum, ie.username, invopissum, lastgoodsreportend, i.issync,i.isregrading '+
     'from inventory i '+
     'left join inventoryemployee ie on ie.inventoryid=i.id and ie.inventorypostid=1 '+
     'where  i.id='+InventoryID;
    AnyCommandCDS.Open;

    InventoryDateEdit.Date:=AnyCommandCDS.FieldByName('present').AsDateTime; //Present
    InventorySQNNOcxME.Text:=AnyCommandCDS.FieldByName('sqnno').AsString;
    StorageRxDBLC.KeyValue:=AnyCommandCDS.FieldByName('storageid').AsInteger; // Storageid
    InventoryBasisEdit.Text:=AnyCommandCDS.FieldByName('basis').AsString;
    SynccxCB.EditValue := AnyCommandCDS.FieldByName('issync').AsInteger;
    RegradingcxCB.EditValue := AnyCommandCDS.FieldByName('isregrading').AsInteger;

    if (not AnyCommandCDS.FieldByName('begincashe').IsNull) then
     begin
      InvBEGINCASHEDE.Date:=TDate(AnyCommandCDS.Fields[4].AsDateTime);
      InvBeginCasheDTP.Time:=TTime(AnyCommandCDS.Fields[4].AsDateTime);
     end;

    if (not AnyCommandCDS.FieldByName('endcashe').IsNull) then
     begin
      InvEndCasheDE.Date:=TDate(AnyCommandCDS.Fields[5].AsDateTime);
      InvEndCasheDTP.Time:=TTime(AnyCommandCDS.Fields[5].AsDateTime);
     end;

    if (AnyCommandCDS.FieldByName('sumcashe').IsNull) then
     begin // SumCashe
      InvSumCasheRubEdit.Text:='';
      InvSumCasheKopEdit.Text:='';
     end
    else
     begin
      InvSumCasheRubEdit.Text:=IntToStr(Trunc(AnyCommandCDS.Fields[6].AsFloat));
      InvSumCasheKopEdit.Text:=IntToStr(Round(Frac(AnyCommandCDS.Fields[6].AsFloat)*100+0.001));
     end;

    if (AnyCommandCDS.FieldByName('sumbuh').IsNull) then
     begin // SumBuh
      InvSumBuhRubEdit.Text:='';
      InvSumBuhKopEdit.Text:='';
     end
    else
     begin
      InvSumBuhRubEdit.Text:=IntToStr(Trunc(AnyCommandCDS.Fields[7].AsFloat));
      InvSumBuhKopEdit.Text:=IntToStr(Round(Frac(AnyCommandCDS.Fields[7].AsFloat)*100+0.001));

      if ((Round(Frac(AnyCommandCDS.Fields[7].AsFloat)*100+0.001)) < 10) then
       InvSumBuhKopEdit.Text:= '0' + InvSumBuhKopEdit.Text;
     end;

    if (AnyCommandCDS.FieldByName('sumgoods').IsNull) then
     SumGoodsEdit.Text:=''
    else
     SumGoodsEdit.Text:=FloatToStr(AnyCommandCDS.Fields[8].AsFloat);

    if (AnyCommandCDS.FieldByName('lastgoodsreport').IsNull) then
     InvLastGoodsReportDE.Text:='  .  .    '
    else
     InvLastGoodsReportDE.Date:=AnyCommandCDS.FieldByName('lastgoodsreport').AsDateTime;

    if (AnyCommandCDS.FieldByName('lastgoodsreportend').IsNull) then
     InvLastGoodsReportEndDE.Text := '  .  .    '
    else
     InvLastGoodsReportEndDE.Date := AnyCommandCDS.FieldByName('lastgoodsreportend').AsDateTime;

    if (AnyCommandCDS.FieldByName('lastinventory').IsNull) then
     InvLastInventoryDE.Text:='  .  .    '
    else
     InvLastInventoryDE.Date:=AnyCommandCDS.FieldByName('lastinventory').AsDateTime;

    InvNumberEdit.Text:=AnyCommandCDS.FieldByName('numbers').AsString;
    InvRemovingBottlesEdit.Text:=AnyCommandCDS.FieldByName('removingbottles').AsString;
    InvBuyBottlesEdit.Text:=AnyCommandCDS.FieldByName('buybottles').AsString;
    InventorySumEdit.Text:=AnyCommandCDS.FieldByName('inventorysum').AsString;
    InvPredsedatelEdit.Text:=AnyCommandCDS.FieldByName('username').AsString;

    if (not AnyCommandCDS.FieldByName('invopissum').IsNull) then
     begin
      InvSumRubEdit.Text:=IntToStr(Trunc(AnyCommandCDS.FieldByName('invopissum').AsFloat));
      InvSumKopEdit.Text:=IntToStr(Round(Frac(AnyCommandCDS.FieldByName('invopissum').AsFloat)*100+0.001));
     end;

    AnyCommandCDS.Close;
    AnyCommandCDS.CommandText:=
     'select id,employeeid,username,inventorypostid, firstsign, thirdsign '+
     'from inventoryemployee '+
     'where inventoryid='+InventoryID+
     ' and inventorypostid <> 1'+
     'order by inventorypostid,id';
    AnyCommandCDS.Open;
    AnyCommandCDS.First;

    Counter2:=-2;
    Counter3:=-2;
    InvCounterMenEdit.Text:='';
    InvGeneralMenEdit.Text:='';
    while not AnyCommandCDS.Eof do
     begin
      if AnyCommandCDS.FieldByName('inventorypostid').asInteger=2 then
       begin
        if Counter2=-2 then
         begin
          InventoryEdit.Text:=AnyCommandCDS.FieldByName('username').AsString;
          Inc(Counter2);
         end
        else
         begin
          if Counter2=-1 then
           InventorySpdBtnPlusClick(Self.FindComponent(InvBtnPlus))
          else
           InventorySpdBtnPlusClick(Self.FindComponent(InvBtnPlus+IntToStr(Counter2)));

          TEdit(Self.FindComponent(InvEdit+IntToStr(Counter2+1))).Text:=AnyCommandCDS.FieldByName('username').AsString;
          Inc(Counter2);
         end;
       end;

      if AnyCommandCDS.FieldByName('inventorypostid').AsInteger = 3 then
       begin
        if Counter3 = -2 then
         begin
          if (fInventoryLink = nil) then
           begin
            InventoryRetEdit.Text := AnyCommandCDS.FieldByName('username').AsString;
            InventoryRetCheckBoxFirst.Checked := Boolean(AnyCommandCDS.FieldByName('firstsign').AsInteger);
           end
          else
           EmployeeRxDBLC.KeyValue := AnyCommandCDS.FieldByName('employeeid').AsInteger;
          Inc(Counter3);
         end
        else
         begin
          if Counter3 = -1 then
           if (fInventoryLink = nil) then
            InvRetEmplSpdBtnPlusClick(Self.FindComponent(InvRetBtnPlus))
           else
            InvEmplSpdBtnPlusClick(Self.FindComponent(InvEmplBtnPlus))
          else
           if (fInventoryLink = nil) then
            InvRetEmplSpdBtnPlusClick(Self.FindComponent(InvRetBtnPlus + IntToStr(Counter3)))
           else
            InvEmplSpdBtnPlusClick(Self.FindComponent(InvEmplBtnPlus + IntToStr(Counter3)));

          if (fInventoryLink = nil) then
           begin
            TEdit(Self.FindComponent(InvRetEdit + IntToStr(Counter3 + 1))).Text := AnyCommandCDS.FieldByName('username').AsString;
            TCheckBox(Self.FindComponent(InvRetChkBoxFirst + IntToStr(Counter3 + 1))).Checked := Boolean(AnyCommandCDS.FieldByName('firstsign').AsInteger);
            TCheckBox(Self.FindComponent(InvRetChkBoxThird + IntToStr(Counter3 + 1))).Checked := Boolean(AnyCommandCDS.FieldByName('thirdsign').AsInteger);
           end
          else
           TRxDBLookupCombo(Self.FindComponent(InvEmplCmb+IntToStr(Counter3+1))).KeyValue := AnyCommandCDS.FieldByName('employeeid').AsInteger;
          Inc(Counter3);
         end;
       end;

      if AnyCommandCDS.FieldByName('inventorypostid').asInteger = 4 then
       InvCounterMenEdit.Text := AnyCommandCDS.FieldByName('username').AsString;

      if AnyCommandCDS.FieldByName('inventorypostid').asInteger = 4 then
       InvGeneralMenEdit.Text := AnyCommandCDS.FieldByName('username').AsString;

      AnyCommandCDS.Next;
     end;//while
   end; //with fMain
end;

procedure TfInventoryAdd.CheckAllInventoryControls(var sqnno, present, storageid, basis,
                        begincashedate,endcashedate,sumcashe,sumbuh,sumgoods,
                        lastgoodsreportdate,lastgoodsreportenddate,lastinventorydate,
                        allunit,removingunit,buyunit,
                        inventorysum,invopissum: string);
begin
  if (Trim(InventorySQNNOcxME.Text)<>'') then sqnno:=#39+Trim(InventorySQNNOcxME.Text)+#39
                                         else sqnno:='null';
  present:=#39+InventoryDateEdit.Text+#39;
  if  StorageRxDBLC.Text <> '' then storageid:=StorageRxDBLC.KeyValue;
  basis:=#39+InventoryBasisEdit.Text+#39;

  if (Trim(InvBEGINCASHEDE.text)='.  .') then begincashedate:='Null'
                                         else begincashedate:=#39+InvBEGINCASHEDE.text+' '+TimeToStr(InvBeginCasheDTP.Time)+#39;

  if (Trim(InvEndCASHEDE.text)='.  .') then  endcashedate:='Null'
                                       else  endcashedate:=#39+InvEndCASHEDE.text+' '+TimeToStr(InvEndCasheDTP.Time)+#39;

  sumcashe := IntToStr(StrToIntDef(InvSumCasheRubEdit.Text,0)) + '.' +
              IntToStr(StrToIntDef(InvSumCasheKopEdit.Text,0));

  sumbuh :=   IntToStr(StrToIntDef(InvSumBuhRubEdit.Text,0)) + '.' + Trim(InvSumBuhKopEdit.Text);

  sumgoods:=IntToStr(StrToIntDef(SumGoodsEdit.Text,0));

  if (Trim(InvLastGoodsReportDE.text)='.  .') then lastgoodsreportdate:='Null'
                                              else lastgoodsreportdate:=#39+InvLastGoodsReportDE.text+#39;

  if (Trim(InvLastGoodsReportEndDE.text)='.  .') then lastgoodsreportenddate:='Null'
                                              else lastgoodsreportenddate:=#39+InvLastGoodsReportEndDE.text+#39;

  if (Trim(InvLastInventoryDE.text)='.  .') then  lastinventorydate:='Null'
                                            else  lastinventorydate:=#39+InvLastInventoryDE.text+#39;

  allunit:=IntToStr(StrToIntDef(InvNumberEdit.Text,0));
  removingunit:=IntToStr(StrToIntDef(InvRemovingBottlesEdit.Text,0));
  buyunit:=IntToStr(StrToIntDef(InvBuyBottlesEdit.Text,0));


  inventorysum:=IntToStr(StrToIntDef(InventorySumEdit.Text,0));
  invopissum:=IntToStr(StrToIntDef(InvSumRubEdit.Text,0))+'.'+IntToStr(StrToIntDef(InvSumKopEdit.Text,0));
end;

procedure TfInventoryAdd.ApplaycxButtonClick(Sender: TObject);
var InventoryId,Basis,BeginCasheDate,EndCasheDate,SumCashe,
    SumGoods,SumBuh,LastGoodsReportDate,LastGoodsReportEndDate,LastInventoryDate,AllUnit,
    RemovingUnit,BuyUnit,InventorySum,Present,
    StorageId,InvOpisSum,SqnNo,ErrorCode, employeeid, employeename, firstsign, thirdsign: String;
    i: Integer;
    aEdit: TEdit;
    aCheckBoxFirst, aCheckBoxThird: TCheckBox;
    aComboBox: TRxDBLookupCombo;
begin
 if ApplaycxButton.Tag<>0 then
  exit;

 if (InventoryDateEdit.Text='') then
  begin
   MessageDlg('Не выбрана дата инвенторизационной описи-акта',mtError,[mbOk],0);
   exit;
  end;

 if (StorageRxDBLC.Text='') then
  begin
   MessageDlg(' Не выбрано поле [Склад]',mtError,[mbOk],0);
   exit;
  end;

 if (InvPredsedatelEdit.Text='') then
  begin
   MessageDlg('Не введены данные по председателю комиссии',mtError,[mbOk],0);
   exit;
  end;

 if (InventoryEdit.Text='') then
  begin
   MessageDlg('Не введены данные по членам комиссии',mtError,[mbOk],0);
   exit;
  end;

 if (fInventoryLink = nil) then
  begin
   if (InventoryRetEdit.Text = '') then
    begin
     MessageDlg('Не введены данные по материально ответственным лицам', mtError, [mbOk], 0);
     exit;
    end;
  end
 else
  begin
   if (EmployeeRxDBLC.Text = '') then
    begin
     MessageDlg('Не введены данные по материально ответственным лицам', mtError, [mbOk], 0);
     exit;
    end;
  end;

 CheckAllInventoryControls(SqnNo, Present, StorageId, Basis, BeginCasheDate, EndCasheDate,
                           SumCashe, SumBuh, SumGoods, LastGoodsReportDate, LastGoodsReportEndDate, LastInventoryDate,
                           AllUnit, RemovingUnit, BuyUnit, InventorySum, InvOpisSum);

 if ((Tag = 0) or (Tag = -1)) then InventoryId := 'null'
                              else InventoryId := IntToStr(Tag);
          
 with fMain do
  try
   SocketConnection.AppServer.DBStartTransaction;

   ErrorCode:=' Создание акта.';

   if (fInventoryLink = nil) then
    employeeid := 'null'
   else
    employeeid := IntToStr(EmployeeRxDBLC.KeyValue);

   if (fInventoryLink = nil) then
    employeename := #39 + InventoryRetEdit.Text + #39
   else
    employeename := #39 + EmployeeRxDBLC.Text + #39;

   if (fInventoryLink = nil) then
    firstsign := IntToStr(Integer(InventoryRetCheckBoxFirst.Checked))
   else
    firstsign := 'null';

   if (fInventoryLink = nil) then
    thirdsign := IntToStr(Integer(InventoryRetCheckBoxThird.Checked))
   else
    thirdsign := 'null';

   InUpDelCDS.Close;
   InUpDelCDS.CommandText:=
    'select * from buytrans_inventoryadd( '+
     InventoryId+','+
     SqnNo+','+
     Present+','+
     StorageId+','+
     Basis+','+
     BeginCasheDate+','+
     EndCasheDate+','+
     SumCashe+','+
     SumBuh + ',' +
     SumGoods+','+
     LastGoodsReportDate+','+
     LastGoodsReportEndDate+','+
     LastInventoryDate+','+
     AllUnit+','+
     RemovingUnit+','+
     BuyUnit+','+
     InventorySum+','+
     InvOpisSum+','+
     #39+InvPredsedatelEdit.Text+#39+','+
     #39+InventoryEdit.Text+#39+','+
     employeeid + ',' +
     employeename + ',' +
     #39+InvCounterMenEdit.Text+#39 + ',' +
     #39+InvGeneralMenEdit.Text+#39 + ',' +
     firstsign + ',' +
     thirdsign + ',' +
     IntToStr(SynccxCB.EditValue) + ','+
     IntToStr(RegradingcxCB.EditValue) + ')';
   InUpDelCDS.Open;
   InventoryId:=InUpDelCDS.Fields[0].AsString;

   ErrorCode:='Занесение членов комиссии';

   for i:=0 to Self.ComponentNameCount(InvEdit)-2 do
    begin
     if Self.FindComponent(InvEdit+IntToStr(i))<> nil then
      begin
       aEdit:=TEdit(Self.FindComponent(InvEdit+IntToStr(i)));
       if aEdit.Text <> '' then
        begin
         InUpDelCDS.Close;
         InUpDelCDS.CommandText:=
          'INSERT INTO INVENTORYEMPLOYEE(INVENTORYID,EMPLOYEEID,USERNAME,INVENTORYPOSTID) '+
          ' VALUES ('+InventoryId+',Null,'+#39+aEdit.Text+#39+',2)';
         InUpDelCDS.Execute;
        end;//if
      end;//end
    end;//for

   ErrorCode:='Занесение материально ответственных';

   if (fInventoryLink = nil) then
    begin
     for i := 0 to Self.ComponentNameCount(InvRetEdit) - 2 do
      begin
       if Self.FindComponent(InvRetEdit + IntToStr(i)) <> nil then
        begin
         aEdit     := TEdit(Self.FindComponent(InvRetEdit + IntToStr(i)));
         aCheckBoxFirst := TCheckBox(Self.FindComponent(InvRetChkBoxFirst + IntToStr(i)));
         aCheckBoxThird := TCheckBox(Self.FindComponent(InvRetChkBoxThird + IntToStr(i)));
        if aEdit.Text <> '' then
         begin
          InUpDelCDS.Close;
          InUpDelCDS.CommandText :=
           'INSERT INTO INVENTORYEMPLOYEE(INVENTORYID, EMPLOYEEID, USERNAME, INVENTORYPOSTID, FIRSTSIGN, THIRDSIGN) '+
           ' VALUES (' + InventoryId + ', null,' + #39 + aEdit.Text + #39 + ',3,' + IntToStr(Integer(aCheckBoxFirst.Checked)) + ',' + IntToStr(Integer(aCheckBoxThird.Checked)) +')';
          InUpDelCDS.Execute;
         end;//if
       end;//end
     end;//for
    end
   else
    begin
     for i:=0 to Self.ComponentNameCount(InvEmplCmb)-2 do
      if Self.FindComponent(InvEmplCmb+IntToStr(i))<> nil then
       begin
        aComboBox:=TRxDBLookupCombo(Self.FindComponent(InvEmplCmb+IntToStr(i)));
       if aComboBox.Text <> '' then
        begin
         InUpDelCDS.Close;
         InUpDelCDS.CommandText:='INSERT INTO INVENTORYEMPLOYEE (INVENTORYID,'+
                                 'EMPLOYEEID,USERNAME,INVENTORYPOSTID) VALUES ('+
                                 InventoryId+','+aComboBox.KeyValue+','+
                                 #39+aComboBox.Text+#39+',3)';
         InUpDelCDS.Execute;
        end;//if
      end;//end
     end;

    if (fInventoryLink = nil) then
     begin
      InUpDelCDS.Close;
      InUpDelCDS.CommandText :=  'update inventorylist il set il.inventorytempid = ' + InventoryId +
                                 ' where il.id = ' +  fInventoryListLink.InventoryListCDSID.AsString;
      InUpDelCDS.Execute;
     end;

    SocketConnection.AppServer.DBCommit;
  except on E: Exception do
   begin
    SocketConnection.AppServer.DBRollback;
    MessageDlg('Ошибка. '+ ErrorCode + #13 + ' ' + E.Message+#13+InUpDelCDS.CommandText,mtError,[mbOk],0);
    exit;
   end;  //on
  end;//try..except}

 if ((Tag >= 0) and (fInventoryLink <> nil)) then
  begin
   fInventoryLink.BegincxDE.Date := InventoryDateEdit.Date;
   fInventoryLink.EndcxDE.Date := InventoryDateEdit.Date;
   fMain.RefreshCDS(fInventoryLink.InventoryCDS);
   fInventoryLink.InventoryCDS.Locate('INVENTORYID', InventoryID, []);
  end;
 CancelcxButtonClick(self);
end;

procedure TfInventoryAdd.InvRetEmplSpdBtnPlusClick(Sender: TObject);
var edit: Tedit;
    ChkBoxFirst, ChkBoxThird: TCheckBox;
    SpdBtn1, SpdBtn2: TSpeedButton;
    Top, NextTag: Integer;
    Prefix, CurTag: string;
begin
 NextTag := 0;
 Top := InventoryRetEdit.Top + InventoryEdit.Height + 2;
 CurTag :='';

 if TControl(Sender).Tag >= 0 then
  begin
   Prefix := IntToStr(TControl(Sender).Tag);
   NextTag := TControl(Sender).Tag + 1;
   Top := TControl(FindComponent(InvRetEdit + Prefix)).Top + InventoryRetEdit.Height + 2;
   CurTag := IntToStr(TControl(Sender).Tag);
  end;

 InvPanelF1Midle.Height := InvPanelF1Midle.Height + InventoryRetEdit.Height + 2;

 with TControl(FindComponent(InvRetEdit + IntToStr(NextTag))) do
  Free;

 TComponent(Edit) := DuplicateComponents(FindComponent(InvRetEdit));
 Edit.Top := Top;
 Edit.Text := '';
 Edit.Tag := NextTag;
 Edit.Name := InvRetEdit + IntToStr(NextTag);

 try
  with TControl(FindComponent(InvRetChkBoxFirst + IntToStr(NextTag))) do
   Free;

  TComponent(ChkBoxFirst) := DuplicateComponents(FindComponent(InvRetChkBoxFirst + Prefix));
  ChkBoxFirst.Top := Top + 2;
  ChkBoxFirst.Tag := NextTag;

 except on E: Exception do
  MessageDlg('Ошибка при создании компанента. Исх. сообщение->' + E.Message, mtError, [mbOk], 0);
 end;

 try
  with TControl(FindComponent(InvRetChkBoxThird + IntToStr(NextTag))) do
   Free;

  TComponent(ChkBoxThird) := DuplicateComponents(FindComponent(InvRetChkBoxThird + Prefix));
  ChkBoxThird.Top := Top + 2;
  ChkBoxThird.Tag := NextTag;

 except on E: Exception do
  MessageDlg('Ошибка при создании компанента. Исх. сообщение->' + E.Message, mtError, [mbOk], 0);
 end;

 try
  with TControl(FindComponent(InvRetBtnPlus + IntToStr(NextTag))) do
   Free;

  TComponent(SpdBtn1) := DuplicateComponents(FindComponent(InvRetBtnPlus + Prefix));
  SpdBtn1.Top := Top;
  SpdBtn1.OnClick := InvRetEmplSpdBtnPlusClick;
  SpdBtn1.Tag := NextTag;
  TControl(FindComponent(InvRetBtnPlus + CurTag)).Enabled := False;

 except on E: Exception do
  MessageDlg('Ошибка при создании компанента. Исх. сообщение->' + E.Message, mtError, [mbOk], 0);
 end;

 try
  with TControl(FindComponent(InvRetBtnMinus + IntToStr(NextTag))) do
   Free;

  TComponent(SpdBtn2) := DuplicateComponents(FindComponent(InvRetBtnMinus + Prefix));
  SpdBtn2.Top := Top;
  SpdBtn2.OnClick := InvRetEmplSpdBtnMinusClick;
  SpdBtn2.Tag := NextTag;
  TControl(FindComponent(InvRetBtnMinus + CurTag)).Enabled := False;

 except on E: Exception do
  MessageDlg('Ошибка при создании компанента. Исх. сообщение->' + E.Message, mtError, [mbOk], 0);
 end;
end;

procedure TfInventoryAdd.InvRetEmplSpdBtnMinusClick(Sender: TObject);
var CurTag: Integer;
begin
 CurTag := TControl(Sender).Tag;
 try
  if CurTag >= 0 then
   begin
    with TControl(FindComponent(InvRetEdit + IntToStr(CurTag))) do
     Free;
    with TControl(FindComponent(InvRetChkBoxFirst + IntToStr(CurTag))) do
     Free;
    with TControl(FindComponent(InvRetChkBoxThird + IntToStr(CurTag))) do
     Free;
    with TControl(FindComponent(InvRetBtnPlus + IntToStr(CurTag))) do
     Free;
    with TControl(FindComponent(InvRetBtnMinus + IntToStr(CurTag + 1))) do
     Free;
    if CurTag - 1 < 0 then
     begin
      TControl(FindComponent(InvRetBtnPlus)).Enabled := True;
      TControl(FindComponent(InvRetBtnMinus)).Enabled := True;
      TControl(Sender).Visible := False;
      InvPanelF1Midle.Height := InventoryRetEdit.Height + 4;
     end
    else
     begin
      TControl(FindComponent(InvRetBtnPlus + IntToStr(CurTag - 1))).Enabled := True;
      TControl(FindComponent(InvRetBtnMinus + IntToStr(CurTag - 1))).Enabled := True;
      TControl(FindComponent(InvRetBtnMinus + IntToStr(CurTag))).Visible := False;
      InvPanelF1Midle.Height := InvPanelF1Midle.Height - InventoryRetEdit.Height - 2;
     end;
   end;
 except on E:Exception do
  MessageDlg('Ошибка при удалении компанента. Исх.Сообщение->'+E.Message,mtError,[mbOk],0);
 end;
end;

end.
