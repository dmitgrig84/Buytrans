unit uBuyAddDetailLine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  ComCtrls, cxContainer, cxListView, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxNavigator, cxDBNavigator,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, DBClient, Menus,
  StdCtrls, cxButtons, cxEditRepositoryItems, RxMemDS, cxCalendar,
  cxTextEdit;

type
  TfBuyAddDetailLine = class(TForm)
    BottomPanel: TPanel;
    LinecxGridDBTV: TcxGridDBTableView;
    LinecxGridLevel: TcxGridLevel;
    LinecxGrid: TcxGrid;
    CreateLinecxButton: TcxButton;
    RxMD: TRxMemoryData;
    RxMDID: TIntegerField;
    RxMDPRESENT: TDateTimeField;
    DS: TDataSource;
    LinecxGridDBTVID: TcxGridDBColumn;
    LinecxGridDBTVPRESENT: TcxGridDBColumn;
    cxDBNavigator1: TcxDBNavigator;
    RxMDBEGINRANGE: TFloatField;
    RxMDENDRANGE: TFloatField;
    LinecxGridDBTVBEGINRANGE: TcxGridDBColumn;
    LinecxGridDBTVENDRANGE: TcxGridDBColumn;
    procedure FormActivate(Sender: TObject);
    procedure RxMDNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure CreateLinecxButtonClick(Sender: TObject);
    procedure RxMDBEGINRANGEChange(Sender: TField);
  private
    { Private declarations }
  public
   Line:string;
    { Public declarations }
  end;

var
  fBuyAddDetailLine: TfBuyAddDetailLine;

implementation

{$R *.dfm}

procedure TfBuyAddDetailLine.FormActivate(Sender: TObject);
var i,j:integer;
begin
 RxMD.EmptyTable;
 LinecxGridDBTVPRESENT.Visible:=false;
 LinecxGridDBTVBEGINRANGE.Visible:=false;
 LinecxGridDBTVENDRANGE.Visible:=false;

 i:=0;
 j:=1;
 if Tag=1 then
  begin
   Caption:='Даты производства';
   LinecxGridDBTVPRESENT.Visible:=true;
   if Length(Line)>0 then
    try
     while i<=Length(Line)+1 do
      begin
       if (i=Length(Line)+1) or (Line[i]=#13) or (Line[i]=#10) or (Line[i]='/') then
        begin
         RxMD.Append;
         RxMDPRESENT.AsDateTime:=StrToDate(Trim(Copy(Line,j,i-j)));
         j:=i+1;
        end;
       inc(i);
      end;
    except
     RxMD.Cancel;
    end;
  end;
 if Tag=2 then
  begin
   Caption:='Акцизы';
   LinecxGridDBTVBEGINRANGE.Visible:=true;
   LinecxGridDBTVENDRANGE.Visible:=true;
   if Length(Line)>0 then
    try
     while i<=Length(Line)+1 do
      begin
       if (i=Length(Line)+1) or (Line[i]=#13) or (Line[i]=#10) or (Line[i]='/') or (Line[i]='-') then
        begin
         if (Line[i]='-') and (Tag=2) then
          begin
           RxMD.Append;
           RxMDBEGINRANGE.AsFloat:=StrToFloat(Trim(Copy(Line,j,i-j)));
          end
         else
          begin
           if Tag=1 then
            RxMD.Append;
           RxMDENDRANGE.AsFloat:=StrToFloat(Trim(Copy(Line,j,i-j)));
          end;
         j:=i+1;
        end;
       inc(i);
      end;
    except
     RxMD.Cancel;
    end;
  end;
end;

procedure TfBuyAddDetailLine.RxMDNewRecord(DataSet: TDataSet);
begin
 RxMDID.AsInteger:=RxMD.RecordCount+1;
end;

procedure TfBuyAddDetailLine.FormCreate(Sender: TObject);
begin
 RxMD.Open;
end;

procedure TfBuyAddDetailLine.CreateLinecxButtonClick(Sender: TObject);
begin
 with RxMD do
  try
   Line:='';
   DisableControls;
   First;
   while not Eof do
    begin
     if fBuyAddDetailLine.Tag=1 then
      Line:=Line+'/'+RxMD.Fields[1].AsString
     else
      Line:=Line+'/'+RxMD.Fields[2].AsString+'-'+RxMD.Fields[3].AsString;
     Next;
    end;
  finally
   EnableControls;
  end;
 Line:=copy(Line,2,length(Line));
end;

procedure TfBuyAddDetailLine.RxMDBEGINRANGEChange(Sender: TField);
begin
 if (Length(Sender.AsString)<10) or (Length(Sender.AsString)>12) then
  MessageDLG('Ошибка в номере акциза.',mtError,[mbOk],0);

 if (RxMDBEGINRANGE.AsString<>'') and (RxMDENDRANGE.AsString<>'') then
  if (RxMDBEGINRANGE.AsFloat>RxMDENDRANGE.AsFloat) then
   MessageDLG('Ошибка в диапазоне акцизов.',mtError,[mbOk],0);
end;

end.
