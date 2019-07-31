unit uInventoryPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,uInventory, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxRadioGroup,
  StdCtrls, Buttons, ExtCtrls, DB, DBClient, frxClass, frxDBSet, cxCheckBox,
  frxExportXLS, frxDsgnIntf;

type
  TfInventoryPrint = class(TForm)
    BuyAddButtonPanel: TPanel;
    ApplayBB: TBitBtn;
    CancelBB: TBitBtn;
    DocTypecxRG: TcxRadioGroup;
    InventoryPrintfrxReport: TfrxReport;
    InventoryPrintfrxDBD: TfrxDBDataset;
    InventoryPrintCDS: TClientDataSet;
    InventoryPrintCDSPRESENT: TDateTimeField;
    InventoryPrintCDSSQNNO: TStringField;
    InventoryPrintCDSSTORAGENAME: TStringField;
    InventoryPrintCDSCHAIRMAN: TStringField;
    InventoryPrintCDSMEMBERNAME: TStringField;
    InventoryPrintCDSMATERIALNAME: TStringField;
    InventoryPrintCDSBASIS: TStringField;
    InventoryPrintCDSBEGINCASHE: TDateTimeField;
    InventoryPrintCDSENDCASHE: TDateTimeField;
    InventoryPrintCDSSUMGOODSTEXT: TStringField;
    InventoryPrintCDSSUMCASHETEXT: TStringField;
    InventoryPrintCDSSUMGOODSFULLTEXT: TStringField;
    InventoryPrintCDSLASTGOODSREPORT: TDateTimeField;
    InventoryPrintCDSLASTINVENTORY: TDateTimeField;
    InventoryPrintCDSNUMBERS: TIntegerField;
    InventoryPrintCDSINVENTORYSUMTEXT: TStringField;
    InventoryPrintCDSINVENTORYACTID: TIntegerField;
    InventoryPrintCDSORGANIZATIONNAME: TStringField;
    InventoryPrintCDSINVOPISSUMTEXT: TStringField;
    InventoryDetailfrxDBD: TfrxDBDataset;
    PreviewcxCB: TcxCheckBox;
    EmptyListcxCB: TcxCheckBox;
    frxXLSExport: TfrxXLSExport;
    InventoryForm15frxReport: TfrxReport;
    InventoryPrintCDSORGANIZATIONOKPO: TStringField;
    InventoryForm3frxReport: TfrxReport;
    InventoryPrintCDSORGANIZATIONDIR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ApplayBBClick(Sender: TObject);
    procedure CancelBBClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    function InventoryForm3frxReportUserFunction(const MethodName: String;
      var Params: Variant): Variant;
  private
    { Private declarations }
  public
   fInventoryLink:TfInventory;
  end;

var
  fInventoryPrint: TfInventoryPrint;

implementation

uses uMain, NumWord;

{$R *.dfm}

procedure TfInventoryPrint.FormCreate(Sender: TObject);
var RetVal:OleVariant;
    CompName:string;
begin
 fMain.FloatToBcd(self);
 
 RetVal:=1;
 CompName:='InventoryPrint';
 fMain.SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (RetVal<>0) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   InventoryPrintCDS.CommandText:=
    'select * from buytrans_inventoryprint(:inventoryid,:tableid)';
   InventoryPrintCDS.RemoteServer:=fMain.SocketConnection;
  end;

  if (Pos('X', fMain.AdvancedGrant)=0) then
   frxDsgnIntf.frxExportFilters.UnRegister(frxXLSExport);

 InventoryForm3frxReport.AddFunction('function SummaPropis(summa: Double):String');
 InventoryForm3frxReport.AddFunction('function Ruble(summa: Double, rub: String):String');
 InventoryForm3frxReport.AddFunction('function Kopeika(summa: Double, kop: String):String');

end;

procedure TfInventoryPrint.ApplayBBClick(Sender: TObject);
begin
 try
  if EmptyListcxCB.Checked then
   begin
    InventoryPrintCDS.Params[0].AsInteger:=-1;
    InventoryPrintCDS.Params[1].AsInteger:=-1;
    InventoryPrintfrxReport.ReportOptions.Name:='Инвентаризационная опись-акт.';
   end
  else
   begin
    InventoryPrintCDS.Params[0].AsInteger:=fInventoryLink.InventoryCDSINVENTORYID.AsInteger;
    InventoryPrintCDS.Params[1].AsInteger:=fInventoryLink.InventoryCDSTABLEID.AsInteger;
    InventoryPrintfrxReport.ReportOptions.Name:='Инвентаризационная опись-акт. Код '+InventoryPrintCDS.Params[0].AsString;
   end;
  fMain.RefreshCDS(TClientDataSet(InventoryPrintCDS));

  TClientDataSet(InventoryDetailfrxDBD.DataSet).Params[0].AsInteger:=InventoryPrintCDS.Params[0].AsInteger;
  TClientDataSet(InventoryDetailfrxDBD.DataSet).Params[1].AsInteger:=InventoryPrintCDS.Params[1].AsInteger;
  fMain.RefreshCDS(TClientDataSet(InventoryDetailfrxDBD.DataSet));

  if ((DocTypecxRG.ItemIndex <> 4) and (DocTypecxRG.ItemIndex <> 5)) then
   begin
    InventoryPrintfrxReport.PrepareReport;
    InventoryPrintfrxReport.Pages[1].Visible:=DocTypecxRG.ItemIndex in [0,1];
    InventoryPrintfrxReport.Pages[2].Visible:=DocTypecxRG.ItemIndex in [0,2];
    InventoryPrintfrxReport.Pages[3].Visible:=DocTypecxRG.ItemIndex in [0,3];

    if PreviewcxCB.Checked then
     InventoryPrintfrxReport.ShowReport
    else
     InventoryPrintfrxReport.Print;
   end;

  if (DocTypecxRG.ItemIndex = 4) then
   begin
    InventoryForm15frxReport.PrepareReport;

    if PreviewcxCB.Checked then
     InventoryForm15frxReport.ShowReport
    else
     InventoryForm15frxReport.Print;
   end;

  if (DocTypecxRG.ItemIndex = 5) then
   begin
    InventoryForm3frxReport.PrepareReport;

    if PreviewcxCB.Checked then
     InventoryForm3frxReport.ShowReport
    else
     InventoryForm3frxReport.Print;
   end;
   except on E: Exception do
    MessageDlg('Ошибка при печати док-ов.' + E.Message,mtError,[mbOk],0);
 end; //try
end;

procedure TfInventoryPrint.CancelBBClick(Sender: TObject);
begin
 Close;
end;

procedure TfInventoryPrint.FormActivate(Sender: TObject);
begin
 InventoryDetailfrxDBD.DataSet:=fInventoryLink.InventoryDetailCDS;
end;

function TfInventoryPrint.InventoryForm3frxReportUserFunction(
  const MethodName: String; var Params: Variant): Variant;
begin
 if MethodName = 'SUMMAPROPIS' then
  begin
   if Params[0] <> null then
    Result := SummaPropis(Params[0])
   else
    Result := SummaPropis(0);
   end;

 if MethodName = 'RUBLE' then
  begin
   if ((Params[0] <> null) and (Params[1] <> null)) then
    Result := Ruble(Params[0], Params[1])
   else
    Result := Ruble(0, '');
   end;

 if MethodName = 'KOPEIKA' then
  begin
   if ((Params[0] <> null) and (Params[1] <> null)) then
    Result := Kopeika(Params[0], Params[1])
   else
    Result := Kopeika(0, '');
   end;

 InventoryForm3frxReport.AddFunction('function SummaPropis(summa: Double):String');
 InventoryForm3frxReport.AddFunction('function Ruble(summa: Double, rub: String):String');
 InventoryForm3frxReport.AddFunction('function Kopeika(summa: Double, kop: String):String');
end;

end.
