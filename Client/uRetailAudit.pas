unit uRetailAudit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxTextEdit, cxContainer, dxExEdtr, StdCtrls, RXCtrls, dxDBTLCl,
  dxGrClms, cxSpinEdit, dxDBGrid, ExtCtrls, dxTL, dxDBCtrl, dxCntner,
  ComCtrls, cxMaskEdit, RxLookup, Buttons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Mask, ToolEdit, DBClient, Menus, cxSplitter;

type
  TfRetailAudit = class(TForm)
    EndInvDE: TDateEdit;
    InvDEST: TStaticText;
    InventoryBottomPanel: TPanel;
    RxSpeedButton1: TRxSpeedButton;
    InvSaveBitBtn: TBitBtn;
    InvCancelBitBtn: TBitBtn;
    InvUpdateBitBtn: TBitBtn;
    InvMakeBitBtn: TBitBtn;
    InvCreateBitBtn: TBitBtn;
    InvDeleteBitBtn: TBitBtn;
    InvPrintBitBtn: TBitBtn;
    InventoryPC: TPageControl;
    MainInventoryTS: TTabSheet;
    InventorycxGrid: TcxGrid;
    InventorycxGridDBTV: TcxGridDBTableView;
    InventorycxGridDBTVMAKE: TcxGridDBColumn;
    InventorycxGridDBTVID: TcxGridDBColumn;
    InventorycxGridDBTVNAME: TcxGridDBColumn;
    InventorycxGridDBTVPRESENT: TcxGridDBColumn;
    InventorycxGridDBTVSQNNO: TcxGridDBColumn;
    InventorycxGridDBTVINVENTORYSUM: TcxGridDBColumn;
    InventorycxGridDBTVUSERNAME: TcxGridDBColumn;
    InventorycxGridDBTVBASIS: TcxGridDBColumn;
    InventorycxGridDBTVWHOINSERT: TcxGridDBColumn;
    InventorycxGridDBTVSTORFR: TcxGridDBColumn;
    InventorycxGridDBTVDEPARTMENTID: TcxGridDBColumn;
    InventorycxGridDBTVBESTID: TcxGridDBColumn;
    InventorycxGL: TcxGridLevel;
    InvPrintPanel: TPanel;
    Label40: TLabel;
    Label42: TLabel;
    InvCountF3InfoLabel: TLabel;
    InvCountF3Label: TLabel;
    Label41: TLabel;
    InvPrintFormRadioGroup: TRadioGroup;
    InvEmptyPrintCheckBox: TCheckBox;
    InvCountF3Edit: TEdit;
    InvPreviewCheckBox: TCheckBox;
    bClose: TButton;
    bPrintAct: TButton;
    InventoryBestPanel: TPanel;
    IBLabel: TLabel;
    ButtonYes: TButton;
    ButtonExit: TButton;
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
    Label44: TLabel;
    InventoryDateEdit: TDateEdit;
    StorageInventoryRxDBLookupCombo: TRxDBLookupCombo;
    InvPredsedatelEdit: TEdit;
    InventoryEdit: TEdit;
    InvFirmLCB: TRxDBLookupCombo;
    InventorySQNNOcxME: TcxMaskEdit;
    InvPanelF1Midle: TPanel;
    Label21: TLabel;
    InvEmplSpdBtnPlus: TSpeedButton;
    InvEmplSpdBtnMinus: TSpeedButton;
    InvEmplDBLkpCmb: TRxDBLookupCombo;
    InvPanelF1Bottom: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
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
    InvdxDBGrid: TdxDBGrid;
    InvdxDBGridDRINKKINDID: TdxDBGridMaskColumn;
    InvdxDBGridNAME: TdxDBGridMaskColumn;
    InvdxDBGridBOTTLECOUNT: TdxDBGridMaskColumn;
    InvdxDBGridPRICE: TdxDBGridMaskColumn;
    InvdxDBGridSUMPRICE: TdxDBGridMaskColumn;
    InvdxDBGridISREADY: TdxDBGridCheckColumn;
    InvdxDBGridISMAKE: TdxDBGridMaskColumn;
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
    Inventory: TTabSheet;
    BeginInvDE: TDateEdit;
    Label48: TLabel;
    InventoryPrnPMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N7: TMenuItem;
    InventoryIsNotMakeMI: TMenuItem;
    InventoryDS: TDataSource;
    InventoryCDS: TClientDataSet;
    InventoryCDSID: TIntegerField;
    InventoryCDSNAME: TStringField;
    InventoryCDSPRESENT: TDateTimeField;
    InventoryCDSSQNNO: TStringField;
    InventoryCDSINVENTORYSUM: TFloatField;
    InventoryCDSUSERNAME: TStringField;
    InventoryCDSBASIS: TStringField;
    InventoryCDSMAKE: TSmallintField;
    InventoryCDSWHOINSERT: TStringField;
    InventoryCDSSTORFR: TIntegerField;
    InventoryCDSDEPARTMENTID: TIntegerField;
    InventoryCDSBESTID: TStringField;
    InventoryItem2CDS: TClientDataSet;
    inventoryitemtypeid: TIntegerField;
    InventoryItemCDSInventoryItemType2Name: TStringField;
    InventoryItem2CDSsumitem: TFloatField;
    InventoryItem2DS: TDataSource;
    InventoryItemCDS: TClientDataSet;
    InventoryItemCDSinventoryitemtypeid: TIntegerField;
    InventoryItemCDSInventoryItemTypeName: TStringField;
    InventoryItemCDSkoef: TFloatField;
    InventoryItemCDScountitem: TIntegerField;
    InventoryItemCDSinventoryitemtypesumma: TIntegerField;
    InventoryItemCDSsumma: TIntegerField;
    InventoryItemDS: TDataSource;
    InventoryBestCDS: TClientDataSet;
    InventoryBestDS: TDataSource;
    InvDetailCDS: TClientDataSet;
    InvDetailCDSDRINKID: TIntegerField;
    InvDetailCDSDRINKKINDID: TIntegerField;
    InvDetailCDSNAME: TStringField;
    InvDetailCDSBOTTLECOUNT: TIntegerField;
    InvDetailCDSPRICE: TFloatField;
    InvDetailCDSSUMPRICE: TFloatField;
    InvDetailCDSTP: TStringField;
    InvDetailCDSISMAKE: TSmallintField;
    InvDetailCDSINVENTORYTYPE: TStringField;
    InvDetailCDSISREADY: TSmallintField;
    InvDetailCDSCASHEBOTTLECOUNT: TIntegerField;
    InvDetailDS: TDataSource;
    InvFirmCDS: TClientDataSet;
    InvFirmDS: TDataSource;
    InventoryItemTypeCDS: TClientDataSet;
    InventoryItemType2CDS: TClientDataSet;
    InvStorageCDS: TClientDataSet;
    InvStorageCDSID: TIntegerField;
    InvStorageCDSNAME: TStringField;
    InvStorageDS: TDataSource;
    InvEmployeeCDS: TClientDataSet;
    InvEmployeeCDSID: TIntegerField;
    InvEmployeeCDSNAME: TStringField;
    InvEmployeeDS: TDataSource;
    InventoryItemCDSCOMMENT: TStringField;
    InventoryItem2CDSCOMMENT: TStringField;
    cxSplit: TcxSplitter;
    InventoryCashePanel: TPanel;
    InventoryItemcxGrid: TcxGrid;
    InventoryItemcxGridDBTV: TcxGridDBTableView;
    InventoryItemcxGL: TcxGridLevel;
    InventorySearchPanel: TPanel;
    RefreshBB2: TBitBtn;
    InsertBB2: TBitBtn;
    EditBB2: TBitBtn;
    DeleteBB2: TBitBtn;
    UpdateBB2: TBitBtn;
    CancelBB2: TBitBtn;
    InventoryItemcxGridDBTVinventoryitemtypeid: TcxGridDBColumn;
    InventoryItemcxGridDBTVInventoryItemTypeName: TcxGridDBColumn;
    InventoryItemcxGridDBTVkoef: TcxGridDBColumn;
    InventoryItemcxGridDBTVcountitem: TcxGridDBColumn;
    InventoryItemcxGridDBTVinventoryitemtypesumma: TcxGridDBColumn;
    InventoryItemcxGridDBTVsumma: TcxGridDBColumn;
    InventoryItemcxGridDBTVCOMMENT: TcxGridDBColumn;
    Panel5: TPanel;
    Label11: TLabel;
    RefreshBB: TBitBtn;
    InsertBB: TBitBtn;
    EditBB: TBitBtn;
    UpdateBB: TBitBtn;
    DeleteBB: TBitBtn;
    CancelBB: TBitBtn;
    seTwo: TcxSpinEdit;
    InventoryItem2cxGridDBTV: TcxGridDBTableView;
    InventoryItem2cxGL: TcxGridLevel;
    InventoryItem2cxGrid: TcxGrid;
    InventoryItem2cxGridDBTVinventoryitemtypeid: TcxGridDBColumn;
    InventoryItem2cxGridDBTVInventoryItemTypeName: TcxGridDBColumn;
    InventoryItem2cxGridDBTVsumitem: TcxGridDBColumn;
    InventoryItem2cxGridDBTVCOMMENT: TcxGridDBColumn;
    InventoryCDSRATE: TFloatField;
    procedure InsertBB2Click(Sender: TObject);
    procedure RefreshBB2Click(Sender: TObject);
    procedure EditBB2Click(Sender: TObject);
    procedure DeleteBB2Click(Sender: TObject);
    procedure UpdateBB2Click(Sender: TObject);
    procedure CancelBB2Click(Sender: TObject);
    procedure InvCreateBitBtnClick(Sender: TObject);
    function ComponentNameCount(Name: String): integer;
    procedure ComponentNameFree(Name: String);
    procedure ResetAllComponent(AComponent: TComponent);
    procedure ResetAllInventoryControls;
    procedure InvUpdateBitBtnClick(Sender: TObject);
    procedure CheckAllInventoryControls(var aPresent: String; var aStorageId: String;
              var aBasis:String; var aBeginCashe:String; var aEndCashe:String;
              var aSumCashe:String; var aSumGoods:String; var aLastGoodsReport:String;
              var aLastInventory:String; var aNumbers:String; var aRemovingBottles:String;
              var aBuyBottles:String; var aInventorySum: String; var aInvOpisSum: String; var aSqnNo:String);
    procedure InventorySpdBtnMinusClick(Sender: TObject);
    procedure InvEmplSpdBtnMinusClick(Sender: TObject);
    procedure InventorySpdBtnPlusClick(Sender: TObject);
    procedure InventoryPCChange(Sender: TObject);
    procedure InvDEChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure InventoryCDSBeforeOpen(DataSet: TDataSet);
    procedure InventoryPCChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure InvCancelBitBtnClick(Sender: TObject);
    procedure InvSaveBitBtnClick(Sender: TObject);
    procedure RefreshBBClick(Sender: TObject);
    procedure InsertBBClick(Sender: TObject);
    procedure EditBBClick(Sender: TObject);
    procedure DeleteBBClick(Sender: TObject);
    procedure UpdateBBClick(Sender: TObject);
    procedure CancelBBClick(Sender: TObject);
    procedure InvFirmLCBChange(Sender: TObject);
    procedure StorageInventoryRxDBLookupComboChange(Sender: TObject);
    procedure InvPredsedatelEditEnter(Sender: TObject);
    procedure InvPredsedatelEditExit(Sender: TObject);
    procedure InventoryDateEditEnter(Sender: TObject);
    procedure InventoryDateEditExit(Sender: TObject);
    procedure InventorySQNNOcxMEPropertiesChange(Sender: TObject);
    procedure InvPredsedatelEditKeyPress(Sender: TObject; var Key: Char);
    procedure InventoryEditMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure InvEmplSpdBtnPlusClick(Sender: TObject);
    procedure InvEmplDBLkpCmbChange(Sender: TObject);
    procedure InvSumCasheRubEditKeyPress(Sender: TObject; var Key: Char);
    procedure SumGoodsEditKeyPress(Sender: TObject; var Key: Char);
    procedure InvDeleteBitBtnClick(Sender: TObject);
    procedure InventorycxGridDBTVCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure InventorycxGridDBTVDblClick(Sender: TObject);
    procedure InventoryItemCDSCalcFields(DataSet: TDataSet);
    procedure InventoryDSDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type TUniqueReader = Class(TReader)
     LastRead: TComponent;
     procedure ComponentRead(Component: TComponent);
     procedure SetNameUnique( Reader: TReader; Component: TComponent; var Name: string);
     function IncName(Name: string): string;
end;
var
  fRetailAudit: TfRetailAudit;

implementation

uses uMain, DynamicProvider;

const
 // Названия дублируемых компонентов
    InvEdit='InventoryEdit';
    InvBtnPlus='InventorySpdBtnPlus';
    InvBtnMinus='InventorySpdBtnMinus';

    InvEmplCmb='InvEmplDBLkpCmb';
    InvEmplBtnPlus='InvEmplSpdBtnPlus';
    InvEmplBtnMinus='InvEmplSpdBtnMinus';
// Состояния инвенторизации
    InventoryViewState=0;     // Режим просмотра
    InventoryCreateState=1;   // Когда нажимаем кнопочку создать
    InventoryEditState=2;     // Когда дважды кликаем по гриду и переходим в режим редактирования
//    InventoryCreate=1;

{$R *.dfm}

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
  while Component.Owner.FindComponent(Name) <> nil do begin
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
                          {nil,}TControl(AComponent).Parent,
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
function TfRetailAudit.ComponentNameCount(Name: String): integer;
begin
 Result:=-1;
 if FindComponent(Name)<> nil then begin
    Inc(Result);
    while FindComponent(Name+IntToStr(Result))<> nil do
          Inc(Result);
 end;
 Inc(Result);
end;

procedure TfRetailAudit.ComponentNameFree(Name: String);
var i:Integer;
begin
  for i:=ComponentNameCount(Name)-1 downto 0 do
      if FindComponent(Name+IntToStr(i))<>nil then
         if Name=InvEmplBtnMinus then
            InvEmplSpdBtnMinusClick(FindComponent(Name+IntToStr(i)))
         else if name=InvBtnMinus then
                 InventorySpdBtnMinusClick(FindComponent(Name+IntToStr(i)));
end;

procedure TfRetailAudit.ResetAllComponent(AComponent: TComponent);
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

procedure TfRetailAudit.ResetAllInventoryControls;
begin
   ComponentNameFree(InvEmplBtnMinus);
   ComponentNameFree(InvBtnMinus);
   ResetAllComponent(InvPanelF1Midle);
   ResetAllComponent(InvPanelF1Top);
   ResetAllComponent(InvPanelF1Bottom);
   ResetAllComponent(InvPanelF2Top);
   ResetAllComponent(InvPanelF3Top);
end;

procedure TfRetailAudit.CheckAllInventoryControls(
          var aPresent: String; var aStorageId: String;
          var aBasis:String;var aBeginCashe:String; var aEndCashe:String;
          var aSumCashe:String;var aSumGoods:String; var aLastGoodsReport:String;
          var aLastInventory:String;var aNumbers:String; var aRemovingBottles:String;
          var aBuyBottles:String; var aInventorySum: String; var aInvOpisSum: String;var aSqnNo: string);
begin
  aPresent:=InventoryDateEdit.Text;
  if  StorageInventoryRxDBLookupCombo.Text <> '' then
  aStorageId:=StorageInventoryRxDBLookupCombo.KeyValue;
  aBasis:=InventoryBasisEdit.Text;

  if (Trim(InvBEGINCASHEDE.text)='.  .') then begin
//     MessageDlg('Заполнены не все поля времени начала инвентаризации',mtError,[mbOk],0);
//     exit;
     aBeginCashe:='Null';
     end
  else
     aBeginCashe:=InvBEGINCASHEDE.text+' '+TimeToStr(InvBeginCasheDTP.Time);

  if (Trim(InvEndCASHEDE.text)='.  .') then begin
//     MessageDlg('Заполнены не все поля времени окончания инвентаризации',mtError,[mbOk],0);
//     exit;
     aEndCashe:='Null';
     end
  else
     aEndCashe:=InvEndCASHEDE.text+' '+TimeToStr(InvEndCasheDTP.Time);

  aSumCashe:=IntToStr(StrToIntDef(InvSumCasheRubEdit.Text,0))+'.'+
             IntToStr(StrToIntDef(InvSumCasheKopEdit.Text,0));

  aSumGoods:=IntToStr(StrToIntDef(SumGoodsEdit.Text,0));

  if (Trim(InvLastGoodsReportDE.text)='.  .') then
     aLastGoodsReport:='Null'
  else
     aLastGoodsReport:=InvLastGoodsReportDE.text;

  if (Trim(InvLastInventoryDE.text)='.  .') then
     aLastInventory:='Null'
  else
     aLastInventory:=InvLastGoodsReportDE.text;

  aNumbers:=IntToStr(StrToIntDef(InvNumberEdit.Text,0));

  aRemovingBottles:=IntToStr(StrToIntDef(InvRemovingBottlesEdit.Text,0));

  aBuyBottles:=IntToStr(StrToIntDef(InvBuyBottlesEdit.Text,0));

  aInventorySum:=IntToStr(StrToIntDef(InventorySumEdit.Text,0));

  aInvOpisSum:=IntToStr(StrToIntDef(InvSumRubEdit.Text,0))+'.'+
               IntToStr(StrToIntDef(InvSumKopEdit.Text,0));

  if (Trim(InventorySQNNOcxME.Text)<>'') then
   aSqnNo:=#39+Trim(InventorySQNNOcxME.Text)+#39
  else
   aSqnNo:='null';
end;

procedure TfRetailAudit.InsertBB2Click(Sender: TObject);
begin
 InventoryItem2CDS.Append;
end;

procedure TfRetailAudit.RefreshBB2Click(Sender: TObject);
begin
 InventoryItem2CDS.Refresh;
end;

procedure TfRetailAudit.EditBB2Click(Sender: TObject);
begin
 InventoryItem2CDS.Edit;
end;

procedure TfRetailAudit.DeleteBB2Click(Sender: TObject);
begin
 InventoryItem2CDS.Delete;
end;

procedure TfRetailAudit.UpdateBB2Click(Sender: TObject);
begin
 if (InventoryItem2CDS.State in [dsEdit,dsInsert]) then
  InventoryItem2CDS.Post;
end;

procedure TfRetailAudit.CancelBB2Click(Sender: TObject);
begin
 if (InventoryItem2CDS.State in [dsEdit,dsInsert]) then
  InventoryItem2CDS.Cancel;
end;

procedure TfRetailAudit.InvCreateBitBtnClick(Sender: TObject);
begin
 fMain.RefreshCDS(TClientDataSet(StorageInventoryRxDBLookupCombo.LookupSource.DataSet));
 fMain.RefreshCDS(TClientDataSet(InvEmplDBLkpCmb.LookupSource.DataSet));
 fMain.RefreshCDS(TClientDataSet(InvFirmLCB.LookupSource.DataSet));
 InvFirmLCB.Enabled:=True;
 StorageInventoryRxDBLookupCombo.Enabled:=True;
 MainInventoryTS.TabVisible:=False;
 InvCreateBitBtn.Enabled:=False;
 ResetAllInventoryControls;
 InventoryPC.ActivePageIndex:=1;
 InventoryPCChange(Nil);
 InvSaveBitBtn.Enabled:=TRue;
 InvCancelBitBtn.Enabled:=TRue;
 InvPrintBitBtn.Enabled:=False;
 InvDeleteBitBtn.Enabled:=False;
 InvMakeBitBtn.Enabled:=False;
 InventoryDS.Tag:=InventoryCreateState;  //Устанавливаем статус = Создание документа
 InvSaveBitBtn.OnClick:=InvSaveBitBtnClick;
 InvSaveBitBtn.Enabled:=true;
 InvDEST.Visible:=false;
 BeginInvDE.Visible:=false;
 EndInvDE.Visible:=false;
 InvDetailCDS.Close;
 if InventoryItemCDS.Active then InventoryItemCDS.close;
 InventoryItemCDS.CreateDataSet;
 InventoryItemCDS.Open;

 if InventoryItem2CDS.Active then InventoryItem2CDS.close;
 InventoryItem2CDS.CreateDataSet;
 InventoryItem2CDS.Open;
end;

procedure TfRetailAudit.InventorySpdBtnMinusClick(Sender: TObject);
var CurTag: Integer;
begin
 // ShowMessage(TWinControl(Sender).Name);
// Label1.caption:=IntToStr(TWinControl(Sender).Tag);
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
      TEdit(FindComponent(InvEdit)).Text:='';
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
    if (InventoryDS.Tag=InventoryEditState) and (InventoryCDSMAKE.AsInteger<>1) then
     InvUpdateBitBtn.Enabled:=True;
   end;
 except on E:Exception do
  MessageDlg('Ошибка при удалении компанента. Исх.Сообщение->'+E.Message,mtError,[mbOk],0);
 end;
end;

procedure TfRetailAudit.InvEmplSpdBtnMinusClick(Sender: TObject);
var CurTag: Integer;
begin
 // ShowMessage(TWinControl(Sender).Name);
// Label1.caption:=IntToStr(TWinControl(Sender).Tag);
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
     InvPanelF1Midle.Height:=InvEmplDBLkpCmb.Height+4;
    end
   else
    begin
     TControl(FindComponent(InvEmplBtnPlus+IntToStr(CurTag-1))).Enabled:=True;
     TControl(FindComponent(InvEmplBtnMinus+IntToStr(CurTag-1))).Enabled:=True;
     TControl(FindComponent(InvEmplBtnMinus+IntToStr(CurTag))).Visible:=False;
     InvPanelF1Midle.Height:=InvPanelF1Midle.Height-InvEmplDBLkpCmb.Height-2;
    end;
//      InvBevel.Height:=InvBevel.Height-InventoryEdit.Height-2;
   if (InventoryDS.Tag=InventoryEditState) and (InventoryCDSMAKE.AsInteger<>1) then
    InvUpdateBitBtn.Enabled:=True;
  end;
 except on E:Exception do
  MessageDlg('Ошибка при удалении компанента. Исх.Сообщение->'+E.Message,mtError,[mbOk],0);   end
end;

procedure TfRetailAudit.InventorySpdBtnPlusClick(Sender: TObject);
var edit: Tedit;
    SpdBtn1, SpdBtn2: TSpeedButton;
    Top,NextTag: Integer;
    Prefix,CurTag: string;
begin
 Top:=InventoryEdit.top+InventoryEdit.Height+2;
 CurTag:='';
 NextTag:=0;
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

 TComponent(Edit):=DuplicateComponents(FindComponent(InvEdit+Prefix));
 Edit.Top:=Top;
 Edit.Text:='';
 Edit.Tag:=NextTag;

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

 if (InventoryDS.Tag=InventoryEditState) and (InventoryCDSMAKE.AsInteger<>1) then
  InvUpdateBitBtn.Enabled:=True;
end;

procedure TfRetailAudit.InventoryPCChange(Sender: TObject);
 var MessageType: Word;
begin
  if (InventoryPC.ActivePageIndex=0) and
     (InvUpdateBitBtn.Enabled) and
     (InventoryDS.Tag=InventoryEditState) and
     (InventoryCDSMAKE.AsInteger<>1) then begin
     MessageType:=MessageDlg('Сохранить измененные данные?', mtConfirmation,
                             [mbYes,mbNo,mbCancel],0);
      case MessageType of
     mrYes: begin
            InvUpdateBitBtnClick(nil);
            exit;
            end;
  mrCancel: begin
            InventoryPC.SelectNextPage(True);
            exit;
            end;
      end;//case
  end;

   case InventoryPC.ActivePageIndex of
     0: begin
        ReportInventoryTS0.TabVisible:=False;
        ReportInventoryTS1.TabVisible:=False;
        ReportInventoryTS2.TabVisible:=False;
        InvCreateBitBtn.Enabled:=True;
        InvPrintBitBtn.Enabled:=True;
        InvDeleteBitBtn.Enabled:=True;
        InvUpdateBitBtn.Enabled:=False;
        InvSaveBitBtn.Enabled:=False;
        InventoryDS.Tag:=InventoryViewState;
        BeginInvDE.Visible:=true;
        EndInvDE.Visible:=true;
        end;
   1,2: begin
        ReportInventoryTS0.TabVisible:=True;
        if  InvFirmLCB.Text=''
        then
            begin
                ReportInventoryTS1.TabVisible:=True;
                ReportInventoryTS2.TabVisible:=True;
            end;
        end;
     3: begin
        ReportInventoryTS0.TabVisible:=True;
        ReportInventoryTS1.TabVisible:=True;
        ReportInventoryTS2.TabVisible:=True;
        if InventoryDS.Tag<>InventoryCreateState then
        begin
            InvDetailCDS.Close;
            InvDetailCDS.Params[0].AsInteger:=InventoryCDSID.AsInteger;
            InvDetailCDS.Open;
        end;
        end;
      4:begin
             seTwo.Value := InventoryCDSRATE.AsFloat;  
             if not InventoryItemCDS.Active then
             begin
                 InventoryItemCDS.CreateDataSet;
                 InventoryItemCDS.Open;
             end;
             if not InventoryItem2CDS.Active then
             begin
                 InventoryItem2CDS.CreateDataSet;
                 InventoryItem2CDS.Open;
             end;
        end;

   end;//Case
end;

procedure TfRetailAudit.InvDEChange(Sender: TObject);
begin
 if (Sender as TDateEdit).Name=BeginInvDE.Name then
  if (Sender as TDateEdit).Date>EndInvDE.Date then
   EndInvDE.Date:=(Sender as TDateEdit).Date;
 if (Sender as TDateEdit).Name=EndInvDE.Name then
  if (Sender as TDateEdit).Date<BeginInvDE.Date then
   BeginInvDE.Date:=(Sender as TDateEdit).Date;

 fMain.RefreshCDS(InventoryCDS);
end;

procedure TfRetailAudit.FormCreate(Sender: TObject);
var RetVal: OleVariant;
    CompName: string;
    CDS: TClientDataSet;
    DS: TDataSource;
begin
 fMain.FloatToBcd(self);

 RetVal := 1;
 CompName := 'Inventory';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   InventoryCDS.Close;
   InventoryCDS.CommandText := 'select * from buytrans_retailauditview(:begindate, :enddate)';
   InventoryCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'InvFirm';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   InvFirmCDS.Close;
   InvFirmCDS.CommandText := 'select * from buytrans_retailauditfirm';
   InvFirmCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'InvStorage';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   InvStorageCDS.Close;
   InvStorageCDS.CommandText := 'select id,name from storage ' +
                                'where isactive=1 ' +
                                'and id in (select parentstorageid from storage) ' +
                                'and terminalid in (select ett.terminalid from employeetoterminal ett where ett.login=user) ' +
                                'order by name';
   InvStorageCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'InvEmployee';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   InvEmployeeCDS.Close;
   InvEmployeeCDS.CommandText := 'select em.id, d.name ||'+#39+' '+#39+'|| em.shortname name ' +
                                 'from employee em ' +
                                 'join dept d on d.id=em.deptid ' +
                                 'where d.isinventory=1 '+
                                 'and em.dismissaldate is null ' +
                                 'and em.departmentid in (select etd.departmentid from employeetodepartment etd where etd.login=user)' +
                                 'order by 2';
   InvEmployeeCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'InvDetail';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   InvDetailCDS.Close;
   InvDetailCDS.CommandText := 'select min(drinkid) drinkid,drinkkindid, ' +
                               'min(name) name,sum(bottlecount) bottlecount,avg(price) price, ' +
                               'sum(sumprice) sumprice,min(tp) tp,min(ismake) ismake, ' +
                               'inventorytype, min(isready) isready, sum(cashebottlecount) cashebottlecount ' +
                               'from RETREM_CHECKINVENTORY(:aInventoryId) ' +
                               'group by drinkkindid,inventorytype ' +
                               'order by 7, 3';
   InvDetailCDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'InventoryItemType';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (FindDynamicClientDataSet(Self, CDS, CompName + 'CDS', True, fMain.SocketConnection, CompName + 'DSP')
  and FindDynamicDataSource(Self, DS, CompName + 'DS', True, CDS) and RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   CDS.CommandText := 'select * from inventoryitemtype where typegrid=1 and isactual=1 order by orderby';
   CDS.RemoteServer := fMain.SocketConnection;
  end;

 RetVal := 1;
 CompName := 'InventoryItemType2';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName, RetVal);
 if (not (FindDynamicClientDataSet(Self, CDS, CompName + 'CDS', True, fMain.SocketConnection, CompName + 'DSP')
  and FindDynamicDataSource(Self, DS, CompName + 'DS', True, CDS) and RetVal = 0)) then
  begin
   MessageDlg('Ошибка при создании компонента ' + CompName, mtError, [mbOk], 0);
   exit;
  end
 else
  begin
   CDS.CommandText := 'select * from inventoryitemtype where typegrid=2 and isactual=1 order by orderby';
   CDS.RemoteServer := fMain.SocketConnection;
  end;

 BeginInvDE.Date := Date;
 EndInvDE.Date := Date;
end;

procedure TfRetailAudit.InventoryCDSBeforeOpen(DataSet: TDataSet);
begin
 InventoryCDS.Params[0].AsDate := BeginInvDE.Date;
 InventoryCDS.Params[1].AsDate := EndInvDE.Date;
end;

procedure TfRetailAudit.InventoryPCChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
 SelectNext(InvPredsedatelEdit, True, True);
end;

procedure TfRetailAudit.InvUpdateBitBtnClick(Sender: TObject);
var InventoryId,Basis,BeginCashe,EndCashe,SumCashe,
    SumGoods,LastGoodsReport,LastInventory,Numbers,
    RemovingBottles,BuyBottles,InventorySum,Present,
    StorageId, InvOpisSum,SqnNo: String;
    i: Integer;
    aEdit: TEdit;
    aComboBox: TRxDBLookupCombo;
begin
 CheckAllInventoryControls(Present,StorageId,Basis,BeginCashe,EndCashe,
                           SumCashe,SumGoods,LastGoodsReport,LastInventory,
                           Numbers,RemovingBottles,BuyBottles,InventorySum,
                           InvOpisSum,SqnNo);
 InventoryId:=InventoryCDSId.AsString;
 try
  with fMain do
   begin
    SocketConnection.AppServer.DBStartTransaction;
     if (InvFirmLCB.Text='') then
      begin
       try
        InUpDelCDS.Close;
        InUpDelCDS.CommandText:='Update INVENTORY set '+
                        '       Present='+''''+Present+''''+','+
                        '       Storageid='+StorageId+','+
                        '       Basis='+''''+Basis+''''+','+
                        '       Begincashe='+''''+BeginCashe+''''+','+
                        '       Endcashe='+''''+EndCashe+''''+','+
                        '       Sumcashe='+SumCashe+','+
                        '       Sumgoods='+SumGoods+','+
                        '       Lastgoodsreport='+''''+LastGoodsReport+''''+','+
                        '       Lastinventory='+''''+LastInventory+''''+','+
                        '       Numbers='+Numbers+','+
                        '       Removingbottles='+RemovingBottles+','+
                        '       Buybottles='+BuyBottles+','+
                        '       Inventorysum='+InventorySum+','+
                        '       InvOpisSum='+InvOpisSum+','+
                        '       SqnNo='+SqnNo+
                        ' where id='+InventoryCDSId.AsString;
       InUpDelCDS.Execute;
  except on E:Exception do
   begin
    if pos('exception 89',E.Message)<=0 then
     MessageDlg('Ошибка при выполнения скрипта "'+ InUpDelCDS.CommandText+'"',mtError,[mbOk],0);
     raise;
    end;
   end;

  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:='delete from inventoryemployee where inventoryid='+InventoryId;
   InUpDelCDS.Execute;
  except on E:Exception do
   begin
    if pos('exception 88',E.Message)<=0 then
     MessageDlg('Ошибка при выполнения скрипта "'+InUpDelCDS.CommandText+'"',mtError,[mbOk],0);
    raise;
   end;
  end;

// Заносим председателя комиссии
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:='INSERT INTO INVENTORYEMPLOYEE (INVENTORYID,'+
                     'EMPLOYEEID,USERNAME,INVENTORYPOSTID) VALUES ('+
                     InventoryId+',null,'+''''+InvPredsedatelEdit.Text+''''+',1)';
   InUpDelCDS.Execute;
  except
   begin
    MessageDlg('Ошибка при выполнения скрипта "'+InUpDelCDS.CommandText+'"',mtError,[mbOk],0);
    raise;
   end;
  end;//try..except

// Заносим ЧЛЕНов комиссии
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:='INSERT INTO INVENTORYEMPLOYEE (INVENTORYID,'+
                     'EMPLOYEEID,USERNAME,INVENTORYPOSTID) VALUES ('+
                     InventoryId+',null,'+''''+InventoryEdit.Text+''''+',2)';
   InUpDelCDS.Execute;

   for i:=0 to ComponentNameCount(InvEdit)-2 do
    begin
     if FindComponent(InvEdit+IntToStr(i))<> nil then
      begin
       aEdit:=TEdit(FindComponent(InvEdit+IntToStr(i)));
       if aEdit.Text <> '' then
        begin
         InUpDelCDS.Close;
         InUpDelCDS.CommandText:='INSERT INTO INVENTORYEMPLOYEE (INVENTORYID,'+
                               'EMPLOYEEID,USERNAME,INVENTORYPOSTID) VALUES ('+
                               InventoryId+',Null,'+''''+aEdit.Text+''''+',2)';
         InUpDelCDS.Execute;
        end;//aEdit.Text <> '
      end;//FindComponent(InvEdit+IntToStr(i))<> nil
    end;//for
  except
   begin
    MessageDlg('Ошибка при выполнения скрипта "'+InUpDelCDS.CommandText+'"',mtError,[mbOk],0);
    raise;
   end;
  end;//try..except

// Заносим Материально ответственных
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:='INSERT INTO INVENTORYEMPLOYEE (INVENTORYID,'+
                     'EMPLOYEEID,USERNAME,INVENTORYPOSTID) VALUES ('+
                     InventoryId+','+InvEmplDBLkpCmb.KeyValue+','+
                     ''''+InvEmplDBLkpCmb.Text+''''+',3)';
   InUpDelCDS.Execute;

   for i:=0 to ComponentNameCount(InvEmplCmb)-2 do
    if FindComponent(InvEmplCmb+IntToStr(i))<> nil then
     begin
      aComboBox:=TRxDBLookupCombo(FindComponent(InvEmplCmb+IntToStr(i)));
      if aComboBox.Text <> '' then
       begin
        InUpDelCDS.Close;
        InUpDelCDS.CommandText:='INSERT INTO INVENTORYEMPLOYEE (INVENTORYID,'+
                               'EMPLOYEEID,USERNAME,INVENTORYPOSTID) VALUES ('+
                               InventoryId+','+aComboBox.KeyValue+','+
                               ''''+aComboBox.Text+''''+',3)';
        InUpDelCDS.Execute;
       end;//if aComboBox.Text <> ''
     end;//if FindComponent(InvEmplCmb+IntToStr(i))<> nil
  except
   begin
    MessageDlg('Ошибка при выполнения скрипта "'+InUpDelCDS.CommandText+'"',mtError,[mbOk],0);
    raise;
   end;
  end;//try..except

// Заносим Счетнова работника комиссии
  if InvCounterMenEdit.Text<>'' then
   try
    InUpDelCDS.Close;
    InUpDelCDS.CommandText:='INSERT INTO INVENTORYEMPLOYEE (INVENTORYID,'+
                     'EMPLOYEEID,USERNAME,INVENTORYPOSTID) VALUES ('+
                     InventoryId+',null,'+''''+InvCounterMenEdit.Text+''''+',4)';
    InUpDelCDS.Execute;
   except
    begin
     MessageDlg('Ошибка при выполнения скрипта "'+InUpDelCDS.CommandText+'"',mtError,[mbOk],0);
     raise;
    end;
   end;//try..except

// Заносим Контрольного проверяющева комиссии
  if InvGeneralMenEdit.Text<>'' then
   try
    InUpDelCDS.Close;
    InUpDelCDS.CommandText:='INSERT INTO INVENTORYEMPLOYEE (INVENTORYID,'+
                     'EMPLOYEEID,USERNAME,INVENTORYPOSTID) VALUES ('+
                     InventoryId+',null,'+''''+InvGeneralMenEdit.Text+''''+',5)';
    InUpDelCDS.Execute;
   except
    begin
     MessageDlg('Ошибка при выполнения скрипта "'+InUpDelCDS.CommandText+'"',mtError,[mbOk],0);
     raise;
    end;
   end;//try..except
  end
  else
  begin
        InUpDelCDS.Close;
        InUpDelCDS.CommandText:='DELETE FROM INVENTORYITEM WHERE INVENTORYID = ' + InventoryCDS.fieldbyname('id').AsString;
        InUpDelCDS.Execute;
    InventoryItemCDS.First;
    while not InventoryItemCDS.Eof do
    begin
          InUpDelCDS.Close;
          InUpDelCDS.CommandText:='INSERT INTO INVENTORYITEM (INVENTORYID,'+
                        'INVENTORYITEMTYPEID,COUNTITEM,SUMITEM, KOEF, COMMENT) VALUES ('+
                        InventoryId + ','+ InventoryItemCDS.fieldbyname('inventoryitemtypeid').AsString+',' +
                        InventoryItemCDS.fieldbyname('countitem').AsString + ',' +
                        InventoryItemCDS.fieldbyname('summa').AsString + ','+
                        InventoryItemCDS.fieldbyname('koef').AsString + ',' +
                        #39 + InventoryItemCDS.fieldbyname('COMMENT').AsString + #39 + ')';
          InUpDelCDS.Execute;
          InventoryItemCDS.Next;
    end;

    InventoryItem2CDS.First;
    while not InventoryItem2CDS.Eof do
    begin
          InUpDelCDS.Close;
          InUpDelCDS.CommandText:='INSERT INTO INVENTORYITEM (INVENTORYID,INVENTORYITEMTYPEID,SUMITEM, COMMENT) VALUES ('+
                        InventoryId + ','+ InventoryItem2CDS.fieldbyname('inventoryitemtypeid').AsString+',' +
                        InventoryItem2CDS.fieldbyname('sumitem').AsString + ',' +
                        #39 + InventoryItem2CDS.fieldbyname('COMMENT').AsString + #39 + ')';
          InUpDelCDS.Execute;
          InventoryItem2CDS.Next;
    end;

  end;
  SocketConnection.AppServer.DBCommit;
  RefreshCDS(InventoryCDS);
  InventoryPC.ActivePageIndex:=0;
  MainInventoryTS.TabVisible:=True;
  ReportInventoryTS0.TabVisible:=False;
  ReportInventoryTS1.TabVisible:=False;
  ReportInventoryTS2.TabVisible:=False;
  Inventory.TabVisible:=False;
  InvCancelBitBtn.Enabled:=False;
  BeginInvDE.Visible:=True;
  EndInvDE.Visible:=True;
  InvDEST.Visible:=True;
  InventoryDS.Tag:=InventoryViewState;
  InvPrintBitBtn.Enabled:=True;
  InvDeleteBitBtn.Enabled:=True;
  InvMakeBitBtn.Enabled:=True;
  InvSaveBitBtn.Enabled:=False;
 end;

 except on E:Exception do
  begin
   MessageDlg('Ошибка при добавлении документа. Исходное сообщение->'+E.Message,mtError,[mbOk],0);
   fMain.SocketConnection.AppServer.DBRollBack;
  end;
 end;//try..except
end;

procedure TfRetailAudit.InvCancelBitBtnClick(Sender: TObject);
begin
 InvCancelBitBtn.Enabled:=False;
 InvCreateBitBtn.Enabled:=True;
 MainInventoryTS.TabVisible:=True;
 InventoryPC.ActivePageIndex:=0;
 ReportInventoryTS0.TabVisible:=False;
 ReportInventoryTS1.TabVisible:=False;
 ReportInventoryTS2.TabVisible:=False;
 Inventory.TabVisible:=False;
 ResetAllInventoryControls;
 InventoryDS.Tag:=InventoryViewState;
 InvSaveBitBtn.Enabled:=False;
 BeginInvDE.Visible:=True;
 EndInvDE.Visible:=True;
 InvDEST.Visible:=True;
end;

procedure TfRetailAudit.InvSaveBitBtnClick(Sender: TObject);
var i: Integer;
    aEdit: TEdit;
    aComboBox: TRxDBLookupCombo;
    InventoryId,Basis,BeginCashe,EndCashe,SumCashe,
    SumGoods,LastGoodsReport,LastInventory,Numbers,
    RemovingBottles,BuyBottles,InventorySum,Present,
    StorageId, InvOpisSum,SQNNO: String;
begin
 if (StorageInventoryRxDBLookupCombo.Text='') and (InvFirmLCB.Text='') then
  begin
    MessageDlg(' Не выбрано поле [Склад] или [Магазин]',mtConfirmation,[mbOk],0);
    exit;
  end;

 if (InventoryDateEdit.Text='') then begin
    MessageDlg('Не выбрана дата инвенторизационной описи-акта',mtConfirmation,[mbOk],0);
    exit;
 end;

 if (InvPredsedatelEdit.Text='') and (InvFirmLCB.Text='') then begin
    MessageDlg('Не введены данные по председателю комиссии',mtConfirmation,[mbOk],0);
    exit;
 end;

 if (InventoryEdit.Text='') and (InvFirmLCB.Text='') then begin
    MessageDlg('Не введены данные по членам комиссии',mtConfirmation,[mbOk],0);
    exit;
 end;

 if (InvEmplDBLkpCmb.Text='') and (InvFirmLCB.Text='') then begin
    MessageDlg('Не введены данные по материально ответственным лицам',mtConfirmation,[mbOk],0);
    exit;
 end;

 CheckAllInventoryControls(Present,StorageId,Basis,BeginCashe,EndCashe,
                           SumCashe,SumGoods,LastGoodsReport,LastInventory,
                           Numbers,RemovingBottles,BuyBottles,InventorySum,
                           InvOpisSum,SqnNo);

 try
  with fMain do begin
  SocketConnection.AppServer.DBStartTransaction;
  if InventoryDS.Tag=InventoryCreateState then
   begin
    InUpDelCDS.Close;
    InUpDelCDS.CommandText:='select GEN_ID(GEN_INVENTORY_ID,1) from firm where id=0';
    try
     InUpDelCDS.Open;
     InventoryId:=InUpDelCDS.Fields[0].AsString;
    except
     begin
      MessageDlg('Ошибка при выполнения скрипта "'+InUpDelCDS.CommandText+'"',mtError,[mbOk],0);
      raise;
     end;
    end;

    try
     InUpDelCDS.Close;
     if StorageId<>'' then
      InUpDelCDS.CommandText:=
       'INSERT INTO INVENTORY (ID,'+
                           'PRESENT,'+
                            'STORAGEID,'+
                            'BASIS,'+
                            'BEGINCASHE,'+
                            'ENDCASHE,'+
                            'SUMCASHE,'+
                            'SUMGOODS,'+
                            'LASTGOODSREPORT,'+
                            'LASTINVENTORY,'+
                            'NUMBERS,'+
                            'REMOVINGBOTTLES,'+
                            'BUYBOTTLES,'+
                            'INVENTORYSUM,'+
                            'INVOPISSUM,sqnno)'+
       ' VALUES ('+InventoryId+','+ //id
                            ''''+Present+''''+','+  //PRESENT
                            StorageId+','+ //STORAGEID
                            ''''+Basis+''''+','+ //BASIS
                            ''''+BeginCashe+''''+','+
                            ''''+EndCashe+''''+','+
                            SumCashe+','+
                            SumGoods+','+
                            ''''+LastGoodsReport+''''+','+
                            ''''+LastInventory+''''+','+
                            Numbers+','+
                            RemovingBottles+','+
                            BuyBottles+','+
                            InventorySum+','+
                            InvOpisSum+','+SqnNo+')'
               else
             InUpDelCDS.CommandText:='INSERT INTO INVENTORY (ID,'+
                            'PRESENT,'+
                            'BASIS,'+
                            'BEGINCASHE,'+
                            'ENDCASHE,'+
                            'SUMCASHE,'+
                            'SUMGOODS,'+
                            'LASTGOODSREPORT,'+
                            'LASTINVENTORY,'+
                            'NUMBERS,'+
                            'REMOVINGBOTTLES,'+
                            'BUYBOTTLES,'+
                            'INVENTORYSUM,'+
                            'INVOPISSUM,DISTRIBUTIONID,SqnNo)'+
                            ' VALUES ('+InventoryId+','+ //id
                            ''''+Present+''''+','+  //PRESENT
                            ''''+Basis+''''+','+ //BASIS
                            ''''+BeginCashe+''''+','+
                            ''''+EndCashe+''''+','+
                            SumCashe+','+
                            SumGoods+','+
                            ''''+LastGoodsReport+''''+','+
                            ''''+LastInventory+''''+','+
                            Numbers+','+
                            RemovingBottles+','+
                            BuyBottles+','+
                            InventorySum+','+
                            InvOpisSum+','+
                            InvFirmCDS.fieldbyname('id').AsString+','+SqnNo+')';

               InUpDelCDS.Execute;
               InvCreateBitBtn.Enabled:=True;
               BeginInvDE.Visible:=True;
               EndInvDE.Visible:=True;

            except begin
               MessageDlg('Ошибка при выполнения скрипта "'+InUpDelCDS.CommandText+'"',mtError,[mbOk],0);
               raise;
               end;
            end;
  end
  else
  begin
        InUpDelCDS.Close;
        InUpDelCDS.CommandText:='DELETE FROM INVENTORYEMPLOYEE WHERE INVENTORYID = ' + InventoryCDS.fieldbyname('id').AsString;
        InUpDelCDS.Execute;
        InUpDelCDS.Close;
        InUpDelCDS.CommandText:='DELETE FROM INVENTORYITEM WHERE INVENTORYID = ' + InventoryCDS.fieldbyname('id').AsString;
        InUpDelCDS.Execute;
        InventoryId:=InventoryCDS.fieldbyname('id').AsString;
  end;
 if (InvFirmLCB.Text='') then
  begin
// Заносим председателя комиссии
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:='INSERT INTO INVENTORYEMPLOYEE (INVENTORYID,'+
                  'EMPLOYEEID,USERNAME,INVENTORYPOSTID) VALUES ('+
                  InventoryId+',null,'+''''+InvPredsedatelEdit.Text+''''+',1)';
   InUpDelCDS.Execute;
  except
   begin
    MessageDlg('Ошибка при выполнения скрипта "'+InUpDelCDS.CommandText+'"',mtError,[mbOk],0);
    raise;
   end;
  end;//try..except

// Заносим Членов комиссии
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:='INSERT INTO INVENTORYEMPLOYEE (INVENTORYID,'+
                  'EMPLOYEEID,USERNAME,INVENTORYPOSTID) VALUES ('+
                  InventoryId+',null,'+''''+InventoryEdit.Text+''''+',2)';
   InUpDelCDS.Execute;
   for i:=0 to ComponentNameCount(InvEdit)-2 do
    begin
     if FindComponent(InvEdit+IntToStr(i))<> nil then
      begin
       aEdit:=TEdit(FindComponent(InvEdit+IntToStr(i)));
       if aEdit.Text <> '' then
        begin
         InUpDelCDS.Close;
         InUpDelCDS.CommandText:='INSERT INTO INVENTORYEMPLOYEE (INVENTORYID,'+
                            'EMPLOYEEID,USERNAME,INVENTORYPOSTID) VALUES ('+
                            InventoryId+',Null,'+''''+aEdit.Text+''''+',2)';
         InUpDelCDS.Execute;
        end;//if
      end;//end
    end;//for
  except
   begin
    MessageDlg('Ошибка при выполнения скрипта "'+InUpDelCDS.CommandText+'"',mtError,[mbOk],0);
    raise;
   end;
  end;//try..except

// Заносим Материально ответственных
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:='INSERT INTO INVENTORYEMPLOYEE (INVENTORYID,'+
                  'EMPLOYEEID,USERNAME,INVENTORYPOSTID) VALUES ('+
                  InventoryId+','+InvEmplDBLkpCmb.KeyValue+','+
                  ''''+InvEmplDBLkpCmb.Text+''''+',3)';
   InUpDelCDS.Execute;

   for i:=0 to ComponentNameCount(InvEmplCmb)-2 do
    if FindComponent(InvEmplCmb+IntToStr(i))<> nil then
     begin
      aComboBox:=TRxDBLookupCombo(FindComponent(InvEmplCmb+IntToStr(i)));
      if aComboBox.Text <> '' then
       begin
        InUpDelCDS.Close;
        InUpDelCDS.CommandText:='INSERT INTO INVENTORYEMPLOYEE (INVENTORYID,'+
                            'EMPLOYEEID,USERNAME,INVENTORYPOSTID) VALUES ('+
                            InventoryId+','+aComboBox.KeyValue+','+
                            ''''+aComboBox.Text+''''+',3)';
        InUpDelCDS.Execute;
       end;//if
     end;//end
  except
   begin
        MessageDlg('Ошибка при выполнения скрипта "'+InUpDelCDS.CommandText+'"',mtError,[mbOk],0);
        raise;
   end;
  end;//try..except

// Заносим Счетнова работника комиссии
  if InvCounterMenEdit.Text<>'' then
   try
    InUpDelCDS.Close;
    InUpDelCDS.CommandText:='INSERT INTO INVENTORYEMPLOYEE (INVENTORYID,'+
                  'EMPLOYEEID,USERNAME,INVENTORYPOSTID) VALUES ('+
                  InventoryId+',null,'+''''+InvCounterMenEdit.Text+''''+',4)';
    InUpDelCDS.Execute;
   except
    begin
     MessageDlg('Ошибка при выполнения скрипта "'+InUpDelCDS.CommandText+'"',mtError,[mbOk],0);
     raise;
    end;
   end;//try..except

// Заносим Контрольного проверяющева комиссии
  if InvGeneralMenEdit.Text<>'' then
   try
    InUpDelCDS.Close;
    InUpDelCDS.CommandText:='INSERT INTO INVENTORYEMPLOYEE (INVENTORYID,'+
                  'EMPLOYEEID,USERNAME,INVENTORYPOSTID) VALUES ('+
                  InventoryId+',null,'+''''+InvGeneralMenEdit.Text+''''+',5)';
    InUpDelCDS.Execute;
   except
    begin
     MessageDlg('Ошибка при выполнения скрипта "'+InUpDelCDS.CommandText+'"',mtError,[mbOk],0);
     raise;
    end;
   end;//try..except
 end; // if (InvFirmLCB.Text='') then
   // Заносим результаты ревизии


  if InvFirmLCB.Text<>'' then
   try
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////

    InventoryItemCDS.First;
    while not InventoryItemCDS.Eof do
    begin
          InUpDelCDS.Close;
          InUpDelCDS.CommandText:='INSERT INTO INVENTORYITEM (INVENTORYID,'+
                        'INVENTORYITEMTYPEID,COUNTITEM,SUMITEM, KOEF, COMMENT) VALUES ('+
                        InventoryId + ','+ InventoryItemCDS.fieldbyname('inventoryitemtypeid').AsString+',' +
                        InventoryItemCDS.fieldbyname('countitem').AsString + ',' +
                        InventoryItemCDS.fieldbyname('summa').AsString + ','+
                        InventoryItemCDS.fieldbyname('koef').AsString + ',' +
                        #39 + InventoryItemCDS.fieldbyname('COMMENT').AsString + #39 + ')';
          InUpDelCDS.Execute;
          InventoryItemCDS.Next;
    end;

    InventoryItem2CDS.First;
    while not InventoryItem2CDS.Eof do
    begin
          InUpDelCDS.Close;
          InUpDelCDS.CommandText:='INSERT INTO INVENTORYITEM (INVENTORYID,INVENTORYITEMTYPEID,SUMITEM, COMMENT) VALUES ('+
                        InventoryId + ','+ InventoryItem2CDS.fieldbyname('inventoryitemtypeid').AsString+',' +
                        InventoryItem2CDS.fieldbyname('sumitem').AsString + ',' +
                        #39 + InventoryItemCDS.fieldbyname('COMMENT').AsString + #39 + ')';
          InUpDelCDS.Execute;
          InventoryItem2CDS.Next;
    end;


   except
    begin
     MessageDlg('Ошибка при выполнения скрипта "'+InUpDelCDS.CommandText+'"',mtError,[mbOk],0);
     raise;
    end;
   end;//try..except



  SocketConnection.AppServer.DBCommit;
  RefreshCDS(InventoryCDS);
  InventoryCDS.Last;
  InventoryPC.ActivePageIndex:=0;
  MainInventoryTS.TabVisible:=True;
  ReportInventoryTS0.TabVisible:=False;
  ReportInventoryTS1.TabVisible:=False;
  ReportInventoryTS2.TabVisible:=False;
  Inventory.TabVisible:=False;
  InvCancelBitBtn.Enabled:=False;
  BeginInvDE.Visible:=True;
  EndInvDE.Visible:=True;
  InvDEST.Visible:=True;
  InventoryDS.Tag:=InventoryViewState;
  InvPrintBitBtn.Enabled:=True;
  InvDeleteBitBtn.Enabled:=True;
  InvMakeBitBtn.Enabled:=True;
  InvSaveBitBtn.Enabled:=False;
 end;

 except on E:Exception do
  begin
   MessageDlg('Ошибка при добавлении документа. Исходное сообщение->'+E.Message,
                mtError,[mbOk],0);
   fMain.SocketConnection.AppServer.DBRollBack;
  end
 end;//try..except

end;

procedure TfRetailAudit.RefreshBBClick(Sender: TObject);
begin
 InventoryItemCDS.Refresh;
end;

procedure TfRetailAudit.InsertBBClick(Sender: TObject);
begin
 InventoryItemCDS.Append;
     InventoryItemCDS.fieldbyname('koef').AsFloat:= seTwo.Value;
end;

procedure TfRetailAudit.EditBBClick(Sender: TObject);
begin
 InventoryItemCDS.Edit;
end;

procedure TfRetailAudit.DeleteBBClick(Sender: TObject);
begin
 InventoryItemCDS.Delete;
end;

procedure TfRetailAudit.UpdateBBClick(Sender: TObject);
begin
 if (InventoryItemCDS.State in [dsEdit,dsInsert]) then
  InventoryItemCDS.Post;
end;

procedure TfRetailAudit.CancelBBClick(Sender: TObject);
begin
 if (InventoryItemCDS.State in [dsEdit,dsInsert]) then
  InventoryItemCDS.Cancel;
end;

procedure TfRetailAudit.InvFirmLCBChange(Sender: TObject);
begin
 if InvFirmLCB.Text<>'' then
 begin
      StorageInventoryRxDBLookupCombo.Value:='';
      ReportInventoryTS1.TabVisible:=False;
      ReportInventoryTS2.TabVisible:=False;
      Inventory.TabVisible:=True;
  end;
end;

procedure TfRetailAudit.StorageInventoryRxDBLookupComboChange(
  Sender: TObject);
begin
 if StorageInventoryRxDBLookupCombo.Text>'' then
  begin
      InvFirmLCB.Value:='';
      ReportInventoryTS1.TabVisible:=True;
      ReportInventoryTS2.TabVisible:=True;
      Inventory.TabVisible:=False;
  end;
end;

procedure TfRetailAudit.InvPredsedatelEditEnter(
  Sender: TObject);
begin
 if (InventoryDS.Tag<>InventoryEditState) or
     (InventoryCDSMAKE.AsInteger=1) then exit;
  if (Sender is TEdit) then
     TEdit(Sender).Hint:=TEdit(Sender).Text;
  if (Sender is TRxDBLookupCombo) then
     if TRxDBLookupCombo(Sender).Text<>'' then
        TRxDBLookupCombo(Sender).Hint:=TRxDBLookupCombo(Sender).KeyValue;
  if (Sender is TDateEdit) then
     TDateEdit(Sender).Hint:=TDateEdit(Sender).Text;
  if (Sender is TDateTimePicker) then
     TDateTimePicker(Sender).Hint:=TimeToStr(TDateTimePicker(Sender).Time);
end;

procedure TfRetailAudit.InvPredsedatelEditExit(
  Sender: TObject);
begin
 if (InventoryDS.Tag<>InventoryEditState) or
     (InventoryCDSMAKE.AsInteger=1) then exit;
  if (Sender is TEdit) then
     if TEdit(Sender).Hint=TEdit(Sender).Text then
        exit;
  if (Sender is TRxDBLookupCombo) then
      if TRxDBLookupCombo(Sender).Hint=TRxDBLookupCombo(Sender).KeyValue then
         exit;
  if (Sender is TDateEdit) then
      if TDateEdit(Sender).Hint=TDateEdit(Sender).Text then
         exit;
  if (Sender is TRxDBLookupCombo) then
      if TDateTimePicker(Sender).Hint=TimeToStr(TDateTimePicker(Sender).Time) then
         exit;
  InvSaveBitBtn.Enabled:=True;
end;

procedure TfRetailAudit.InventoryDateEditEnter(Sender: TObject);
begin
  if (InventoryDS.Tag<>InventoryEditState) or
     (InventoryCDSMAKE.AsInteger=1) then exit;
  if (Sender is TEdit) then
     TEdit(Sender).Hint:=TEdit(Sender).Text;
  if (Sender is TRxDBLookupCombo) then
     if TRxDBLookupCombo(Sender).Text<>'' then
        TRxDBLookupCombo(Sender).Hint:=TRxDBLookupCombo(Sender).KeyValue;
  if (Sender is TDateEdit) then
     TDateEdit(Sender).Hint:=TDateEdit(Sender).Text;
  if (Sender is TDateTimePicker) then
     TDateTimePicker(Sender).Hint:=TimeToStr(TDateTimePicker(Sender).Time);
end;

procedure TfRetailAudit.InventoryDateEditExit(Sender: TObject);
begin
  if (InventoryDS.Tag<>InventoryEditState) or
     (InventoryCDSMAKE.AsInteger=1) then exit;
  if (Sender is TEdit) then
     if TEdit(Sender).Hint=TEdit(Sender).Text then
        exit;
  if (Sender is TRxDBLookupCombo) then
      if TRxDBLookupCombo(Sender).Hint=TRxDBLookupCombo(Sender).KeyValue then
         exit;
  if (Sender is TDateEdit) then
      if TDateEdit(Sender).Hint=TDateEdit(Sender).Text then
         exit;
  if (Sender is TRxDBLookupCombo) then
      if TDateTimePicker(Sender).Hint=TimeToStr(TDateTimePicker(Sender).Time) then
         exit;
  InvSaveBitBtn.Enabled:=True;
end;

procedure TfRetailAudit.InventorySQNNOcxMEPropertiesChange(
  Sender: TObject);
begin
 if (InventoryDS.Tag=InventoryEditState) and (InventoryCDSMAKE.AsInteger<>1) then
  InvSaveBitBtn.Enabled:=True;
end;

procedure TfRetailAudit.InvPredsedatelEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key='''' then
  key:=#0;
end;

procedure TfRetailAudit.InventoryEditMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if Shift = [ssShift] then
  ShowMessage(TControl(Sender).name+','+IntToStr(TControl(Sender).Tag));
end;

procedure TfRetailAudit.InvEmplSpdBtnPlusClick(Sender: TObject);
var LookupCombo: TRxDBLookupCombo;
    SpdBtn1, SpdBtn2: TSpeedButton;
    Top,NextTag: Integer;
    Prefix,CurTag: string;
begin
 Top:=InvEmplDBLkpCmb.top+InvEmplDBLkpCmb.Height+2;
 CurTag:='';
 NextTag:=0;
 if TControl(Sender).Tag>=0 then
  begin
   Prefix:=IntToStr(TControl(Sender).Tag);
   NextTag:=TControl(Sender).Tag+1;
   Top:=TControl(FindComponent(InvEmplCmb+Prefix)).top+InvEmplDBLkpCmb.Height+2;
   CurTag:=IntToStr(TControl(Sender).Tag);
  end;

 InvPanelF1Midle.Height:=InvPanelF1Midle.Height+InvEmplDBLkpCmb.Height+2;

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

 if (InventoryDS.Tag=InventoryEditState) and (InventoryCDSMAKE.AsInteger<>1) then
  InvUpdateBitBtn.Enabled:=True;

end;

procedure TfRetailAudit.InvEmplDBLkpCmbChange(Sender: TObject);
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

procedure TfRetailAudit.InvSumCasheRubEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if ((Ord(key)<48) or (Ord(key)>57)) and (Ord(key)<>8) then
  begin
   key:=#0;
   beep;
  end;
end;

procedure TfRetailAudit.SumGoodsEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if ((Ord(key)<48) or (Ord(key)>57)) and (Ord(key)<>8) and (Key<>'.') then
  begin
   key:=#0;
   beep;
  end;
end;

procedure TfRetailAudit.InvDeleteBitBtnClick(Sender: TObject);
begin
 with fMain do begin
 if MessageDlg('Вы действительно хотите удалить данный документ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  try
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:='delete from inventory '+
                                   ' where id='+InventoryCDSID.AsString;

   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Execute;
   SocketConnection.AppServer.DBCommit;
   InventoryCDS.Close;
   InventoryCDS.Open;
   InventoryCDS.Last;
   InventoryPC.ActivePageIndex:=0;
   ReportInventoryTS0.TabVisible:=False;
   ReportInventoryTS1.TabVisible:=False;
   ReportInventoryTS2.TabVisible:=False;
  except
   begin
    SocketConnection.AppServer.DBRollback;
    MessageDlg('Ошибка при выполнения скрипта "'+InUpDelCDS.CommandText+'"',mtError,[mbOk],0);
   end;
  end;
 end;
end;

procedure TfRetailAudit.InventorycxGridDBTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.DisplayTexts[0]<>'1') then
   ACanvas.Brush.Color := $00DFDFFF;
end;

procedure TfRetailAudit.InventorycxGridDBTVDblClick(Sender: TObject);
var Counter2,Counter3: Integer;
begin
 fMain.RefreshCDS(TClientDataSet(StorageInventoryRxDBLookupCombo.LookupSource.DataSet));
 fMain.RefreshCDS(TClientDataSet(InvEmplDBLkpCmb.LookupSource.DataSet));
 fMain.RefreshCDS(TClientDataSet(InvFirmLCB.LookupSource.DataSet));
 InvSaveBitBtn.Enabled:=True;
 if InventoryItemCDS.Active then InventoryItemCDS.close;
 InventoryItemCDS.CreateDataSet;
 InventoryItemCDS.Open;

 if InventoryItem2CDS.Active then InventoryItem2CDS.close;
 InventoryItem2CDS.CreateDataSet;
 InventoryItem2CDS.Open;

 LInventoryid.Caption:=InventoryCDS.fieldbyname('ID').AsString;
 ResetAllInventoryControls;

 with fMain do begin

 AnyCommandCDS.Close;
 AnyCommandCDS.CommandText:='select Present,Sqnno,Storageid,Basis,BeginCashe,EndCashe,SumCashe,'+
                  '       SumGoods,LastGoodsReport,LastInventory,Numbers,RemovingBottles,'+
                  '       BuyBottles,InventorySum,ie.username,INVOPISSUM, distributionid'+
                  '  from inventory i'+
                  '  left join inventoryemployee ie on ie.inventoryid=i.id and ie.inventorypostid=1 '+
                  ' where  i.id='+InventoryCDSId.AsString;
 AnyCommandCDS.Open;

 InventoryDateEdit.Date:=AnyCommandCDS.Fields[0].AsDateTime; //Present

 InventorySQNNOcxME.Text:=AnyCommandCDS.Fields[1].AsString;

 if AnyCommandCDS.Fields[16].IsNull then
 begin
     StorageInventoryRxDBLookupCombo.KeyValue:=AnyCommandCDS.Fields[2].AsInteger; // Storageid
     InvFirmLCB.Enabled:=False;
 end
 else
 begin
      StorageInventoryRxDBLookupCombo.Enabled:=False;
      InvFirmLCB.KeyValue:=AnyCommandCDS.Fields[16].AsInteger;
 end;

 if AnyCommandCDS.Fields[3].IsNull then // Basis
  InventoryBasisEdit.Text:=''
 else
  InventoryBasisEdit.Text:=AnyCommandCDS.Fields[3].AsString;

 if AnyCommandCDS.Fields[4].IsNull then
  begin // BeginCashe
   InvBEGINCASHEDE.Text:='  .  .    ';
   InvBeginCasheDTP.Time:=StrToTime('00:00:00');
  end
 else
  begin
   InvBEGINCASHEDE.Date:=TDate(AnyCommandCDS.Fields[4].AsDateTime);
   InvBeginCasheDTP.Time:=TTime(AnyCommandCDS.Fields[4].AsDateTime);
  end;

 if AnyCommandCDS.Fields[5].IsNull then
  begin  //  EndCashe
   InvEndCasheDE.Text:='  .  .    ';
   InvEndCasheDTP.Time:=StrToTime('00:00:00');
  end
 else
  begin
   InvEndCasheDE.Date:=TDate(AnyCommandCDS.Fields[5].AsDateTime);
   InvEndCasheDTP.Time:=TTime(AnyCommandCDS.Fields[5].AsDateTime);
  end;

 if (AnyCommandCDS.Fields[6].IsNull) then
  begin // SumCashe
   InvSumCasheRubEdit.Text:='';
   InvSumCasheKopEdit.Text:='';
  end
 else
  begin
   InvSumCasheRubEdit.Text:=IntToStr(Trunc(AnyCommandCDS.Fields[6].AsFloat));
   InvSumCasheKopEdit.Text:=IntToStr(Round(Frac(AnyCommandCDS.Fields[6].AsFloat)*100+0.001));
  end;

 if (AnyCommandCDS.Fields[7].IsNull) then
  begin // SumGoods
   SumGoodsEdit.Text:='';
  end
 else
  begin
   SumGoodsEdit.Text:=FloatToStr(AnyCommandCDS.Fields[7].AsFloat);
  end;

 if (AnyCommandCDS.Fields[8].IsNull) then
  begin // InvLastGoodsReport
   InvLastGoodsReportDE.Text:='  .  .    ';
  end
 else
  begin
   InvLastGoodsReportDE.Date:=AnyCommandCDS.Fields[8].AsDateTime;
  end;

 if (AnyCommandCDS.Fields[9].IsNull) then
  begin // LastInventory
   InvLastInventoryDE.Text:='  .  .    ';
  end
 else
  begin
   InvLastInventoryDE.Date:=AnyCommandCDS.Fields[9].AsDateTime;
  end;

 if (AnyCommandCDS.Fields[10].IsNull) then
  begin // LastInventory
   InvNumberEdit.Text:='';
  end
 else
  begin
   InvNumberEdit.Text:=AnyCommandCDS.Fields[10].AsString;
  end;

 if (AnyCommandCDS.Fields[11].IsNull) then
  begin // LastInventory
   InvRemovingBottlesEdit.Text:='';
  end
 else
  begin
   InvRemovingBottlesEdit.Text:=AnyCommandCDS.Fields[11].AsString;
  end;

 if (AnyCommandCDS.Fields[12].IsNull) then
  begin // LastInventory
   InvBuyBottlesEdit.Text:='';
  end
 else
  begin
   InvBuyBottlesEdit.Text:=AnyCommandCDS.Fields[12].AsString;
  end;

 if (AnyCommandCDS.Fields[13].IsNull) then
  begin // LastInventory
   InventorySumEdit.Text:='';
  end
 else
  begin
   InventorySumEdit.Text:=AnyCommandCDS.Fields[13].AsString;
  end;

 if (AnyCommandCDS.Fields[14].IsNull) then
  begin // LastInventory
   InvPredsedatelEdit.Text:='';
  end
 else
  begin
   InvPredsedatelEdit.Text:=AnyCommandCDS.Fields[14].AsString;
  end;

 if (AnyCommandCDS.Fields[15].IsNull) then
  begin // SumCashe
   InvSumRubEdit.Text:='';
   InvSumKopEdit.Text:='';
  end
 else
  begin
   InvSumRubEdit.Text:=IntToStr(Trunc(AnyCommandCDS.Fields[15].AsFloat));
   InvSumKopEdit.Text:=IntToStr(Round(Frac(AnyCommandCDS.Fields[15].AsFloat)*100+0.001));
 end;

 AnyCommandCDS.Close;
 AnyCommandCDS.CommandText:='select Employeeid,Username,inventorypostid'+
                  '  from inventoryemployee'+
                  ' where inventoryid='+InventoryCDSId.AsString+
                  '   and inventorypostid <> 1'+
                  ' order by inventorypostid';
 AnyCommandCDS.Open;
 AnyCommandCDS.First;

 Counter2:=-2;
 Counter3:=-2;
 InvCounterMenEdit.Text:='';
 InvGeneralMenEdit.Text:='';
 while not AnyCommandCDS.Eof do
  begin
   if AnyCommandCDS.Fields[2].asInteger=2 then
    begin
     if Counter2=-2 then
      begin
       InventoryEdit.Text:=AnyCommandCDS.Fields[1].AsString;
       Inc(Counter2);
      end
     else
      begin
       if Counter2=-1 then
        InventorySpdBtnPlusClick(FindComponent(InvBtnPlus))
       else
        InventorySpdBtnPlusClick(FindComponent(InvBtnPlus+IntToStr(Counter2)));

       TEdit(FindComponent(InvEdit+IntToStr(Counter2+1))).Text:=AnyCommandCDS.Fields[1].AsString;
       Inc(Counter2);
      end;
    end
   else
    if AnyCommandCDS.Fields[2].asInteger=3 then
     begin
      if Counter3=-2 then
       begin
        InvEmplDBLkpCmb.KeyValue:=AnyCommandCDS.Fields[0].AsInteger;
        Inc(Counter3);
       end
      else
       begin
        if Counter3=-1 then
         InvEmplSpdBtnPlusClick(FindComponent(InvEmplBtnPlus))
        else
         InvEmplSpdBtnPlusClick(FindComponent(InvEmplBtnPlus+IntToStr(Counter3)));

        TRxDBLookupCombo(FindComponent(InvEmplCmb+IntToStr(Counter3+1))).KeyValue:=
                AnyCommandCDS.Fields[0].AsInteger;
        Inc(Counter3);
       end
     end//if AnyCommandCDS.Fields[2].asInteger=3
    else
     if AnyCommandCDS.Fields[2].asInteger=4 then
      if (AnyCommandCDS.Fields[1].IsNull) then
       InvCounterMenEdit.Text:=''
      else
       InvCounterMenEdit.Text:=AnyCommandCDS.Fields[1].AsString
     else
      if AnyCommandCDS.Fields[2].asInteger=5 then
       if (AnyCommandCDS.Fields[1].IsNull) then
        InvGeneralMenEdit.Text:=''
       else
        InvGeneralMenEdit.Text:=AnyCommandCDS.Fields[1].AsString;
   AnyCommandCDS.Next;
  end;//while
 if (InvFirmLCB.KeyValue=null) or (InvFirmLCB.KeyValue<=0)  then
 begin
     ReportInventoryTS0.TabVisible:=True;
     ReportInventoryTS1.TabVisible:=True;
     ReportInventoryTS2.TabVisible:=True;
     InventoryPC.ActivePageIndex:=1;
     MainInventoryTS.TabVisible:=False;
     InvSaveBitBtn.Enabled:=false;
 end
 else
 begin
     InvSaveBitBtn.Enabled:=True;
     ReportInventoryTS0.TabVisible:=True;
     MainInventoryTS.TabVisible:=False;
     Inventory.TabVisible:=True;

     AnyCommandCDS.Close;
     AnyCommandCDS.CommandText:='select i.*, iit.typegrid from inventoryitem i'+
     ' join inventoryitemtype iit on i.inventoryitemtypeid = iit.id'+
     ' where inventoryid ='+InventoryCDSId.AsString;
     AnyCommandCDS.Open;
     AnyCommandCDS.First;
     while not AnyCommandCDS.Eof do
      begin

           if AnyCommandCDS.FieldByName('typegrid').asinteger=1 then
           begin
                InventoryItemCDS.Append;
                InventoryItemCDS.FieldByName('inventoryitemtypeid').AsInteger:=
                                             AnyCommandCDS.FieldByName('inventoryitemtypeid').AsInteger;
                InventoryItemCDS.FieldByName('countitem').AsInteger:=
                                             AnyCommandCDS.FieldByName('countitem').AsInteger;
                InventoryItemCDS.FieldByName('koef').AsFloat:=
                                             AnyCommandCDS.FieldByName('koef').AsFloat;
                InventoryItemCDS.FieldByName('COMMENT').AsString:=
                                             AnyCommandCDS.FieldByName('COMMENT').AsString;
                InventoryItemCDS.Post;
           end
           else
           begin
                InventoryItem2CDS.Append;
                InventoryItem2CDS.FieldByName('inventoryitemtypeid').AsInteger:=
                                             AnyCommandCDS.FieldByName('inventoryitemtypeid').AsInteger;
                InventoryItem2CDS.FieldByName('sumitem').AsInteger:=
                                             AnyCommandCDS.FieldByName('sumitem').AsInteger;
                InventoryItem2CDS.FieldByName('COMMENT').AsString:=
                                             AnyCommandCDS.FieldByName('COMMENT').AsString;
                InventoryItem2CDS.Post;
           end;

           AnyCommandCDS.Next;
      end;


 end;
 end;

 InvCancelBitBtn.Enabled:=True;
 InvMakeBitBtn.Enabled:=(InventoryCDSMAKE.AsInteger<>1);
 InvCreateBitBtn.Enabled:=False;
 InvUpdateBitBtn.Enabled:=False;
 InvDEST.Visible:=false;
 BeginInvDE.Visible:=false;
 EndInvDE.Visible:=false;
 InventoryDS.Tag:=InventoryEditState;  //Устанавливаем статус = Редактирование документа
 InvSaveBitBtn.OnClick:=InvUpdateBitBtnClick;

end;

procedure TfRetailAudit.InventoryItemCDSCalcFields(DataSet: TDataSet);
begin
 InventoryItemCDS.fieldbyname('summa').AsInteger:=
        Round(InventoryItemCDS.fieldbyname('countitem').AsInteger*InventoryItemCDS.fieldbyname('inventoryitemtypesumma').AsInteger*
        InventoryItemCDS.fieldbyname('koef').AsFloat);
end;

procedure TfRetailAudit.InventoryDSDataChange(Sender: TObject;
  Field: TField);
begin
 seTwo.Value := InventoryCDSRATE.AsFloat;
end;

end.
