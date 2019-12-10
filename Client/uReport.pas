unit uReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, Menus, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ExtCtrls, DBClient;

type
  TfReport = class(TForm)
    ViewcxGridDBTV: TcxGridDBTableView;
    ViewcxGridLevel: TcxGridLevel;
    ViewcxGrid: TcxGrid;
    TopPanel: TPanel;
    RightTopPanel: TPanel;
    BegincxDE: TcxDateEdit;
    RefreshcxButton: TcxButton;
    EndcxDE: TcxDateEdit;
    ExportToExcelcxButton: TcxButton;
    ViewDS: TDataSource;
    TimeLabel: TLabel;
    PM: TPopupMenu;
    EgaisResultMI: TMenuItem;
    procedure BegincxDEPropertiesChange(Sender: TObject);
    procedure EndcxDEPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RefreshcxButtonClick(Sender: TObject);
    procedure CDSBeforeOpen(DataSet: TDataSet);
    procedure CDSAfterOpen(DataSet: TDataSet);
    procedure ExportToExcelcxButtonClick(Sender: TObject);
    procedure EgaisResultMIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fReport: TfReport;

implementation

uses uMain, uEgaisIdentifier;

{$R *.dfm}

procedure TfReport.BegincxDEPropertiesChange(Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  EndcxDE.Date:=BegincxDE.Date;

end;

procedure TfReport.EndcxDEPropertiesChange(Sender: TObject);
begin
 if BegincxDE.Date>EndcxDE.Date then
  BegincxDE.Date:=EndcxDE.Date;
end;

procedure TfReport.FormCreate(Sender: TObject);
begin
 ViewDS.DataSet:=nil;
 ViewcxGridDBTV.ClearItems;
end;

procedure TfReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfReport.RefreshcxButtonClick(Sender: TObject);
begin
 with fMain do
  RefreshCDS(TClientDataSet(ViewcxGridDBTV.DataController.DataSource.DataSet));
 TimeLabel.Caption:='Запрос выполнился: '+TimeToStr(Time);
 Application.ProcessMessages;
end;

procedure TfReport.CDSBeforeOpen(DataSet: TDataSet);
begin
 if ViewcxGridDBTV.DataController.DataSource.DataSet=nil then
  exit;

 if ViewcxGridDBTV.DataController.DataSource.DataSet.Name='RetailEgaisDocCDS' then
  begin
   TClientDataSet(DataSet).Params[0].AsDateTime:=BegincxDE.Date;
   TClientDataSet(DataSet).Params[1].AsDateTime:=EndcxDE.Date;
  end;
end;

procedure TfReport.CDSAfterOpen(DataSet: TDataSet);
var i:integer;
begin
 TimeLabel.Caption:='Запрос выполнился: '+TimeToStr(Time);
 Application.ProcessMessages;
end;
procedure TfReport.ExportToExcelcxButtonClick(Sender: TObject);
begin
 fMain.ExportToExcel(Self.Caption+' с '+DateToStr(BegincxDE.Date)+' по '+DateToStr(EndcxDE.Date)+'.xls',ViewcxGrid);
end;

procedure TfReport.EgaisResultMIClick(Sender: TObject);
begin
 if (not Assigned(fEgaisIdentifier)) then
  Application.CreateForm(TfEgaisIdentifier, fEgaisIdentifier);
 fEgaisIdentifier.Tag:=5;
 fEgaisIdentifier.EgaisidentifierCDS.Tag:=TClientDataSet(ViewcxGridDBTV.DataController.DataSet).FieldByName('EIID').AsInteger;
 fEgaisIdentifier.ShowModal;
end;

end.
