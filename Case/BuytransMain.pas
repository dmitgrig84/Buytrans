unit BuyTransMain;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActiveX, AxCtrls, Buytrans_TLB, StdVcl, StdCtrls;

type
  TBuyTransX = class(TActiveForm, IBuyTransX)
    MainMemo: TMemo;
    procedure ActiveFormCreate(Sender: TObject);
  private
    { Private declarations }
    FEvents: IBuyTransXEvents;
    procedure ActivateEvent(Sender: TObject);
    procedure ClickEvent(Sender: TObject);
    procedure CreateEvent(Sender: TObject);
    procedure DblClickEvent(Sender: TObject);
    procedure DeactivateEvent(Sender: TObject);
    procedure DestroyEvent(Sender: TObject);
    procedure KeyPressEvent(Sender: TObject; var Key: Char);
    procedure PaintEvent(Sender: TObject);
  protected
    { Protected declarations }
    procedure DefinePropertyPages(DefinePropertyPage: TDefinePropertyPage); override;
    procedure EventSinkChanged(const EventSink: IUnknown); override;
    function Get_Active: WordBool; safecall;
    function Get_AlignDisabled: WordBool; safecall;
    function Get_AutoScroll: WordBool; safecall;
    function Get_AutoSize: WordBool; safecall;
    function Get_AxBorderStyle: TxActiveFormBorderStyle; safecall;
    function Get_Caption: WideString; safecall;
    function Get_Color: OLE_COLOR; safecall;
    function Get_Cursor: Smallint; safecall;
    function Get_DoubleBuffered: WordBool; safecall;
    function Get_DropTarget: WordBool; safecall;
    function Get_Enabled: WordBool; safecall;
    function Get_Font: IFontDisp; safecall;
    function Get_HelpFile: WideString; safecall;
    function Get_HelpKeyword: WideString; safecall;
    function Get_HelpType: TxHelpType; safecall;
    function Get_KeyPreview: WordBool; safecall;
    function Get_PixelsPerInch: Integer; safecall;
    function Get_PrintScale: TxPrintScale; safecall;
    function Get_Scaled: WordBool; safecall;
    function Get_Visible: WordBool; safecall;
    function Get_VisibleDockClientCount: Integer; safecall;
    procedure _Set_Font(var Value: IFontDisp); safecall;
    procedure Set_AutoScroll(Value: WordBool); safecall;
    procedure Set_AutoSize(Value: WordBool); safecall;
    procedure Set_AxBorderStyle(Value: TxActiveFormBorderStyle); safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    procedure Set_Color(Value: OLE_COLOR); safecall;
    procedure Set_Cursor(Value: Smallint); safecall;
    procedure Set_DoubleBuffered(Value: WordBool); safecall;
    procedure Set_DropTarget(Value: WordBool); safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    procedure Set_Font(const Value: IFontDisp); safecall;
    procedure Set_HelpFile(const Value: WideString); safecall;
    procedure Set_HelpKeyword(const Value: WideString); safecall;
    procedure Set_HelpType(Value: TxHelpType); safecall;
    procedure Set_KeyPreview(Value: WordBool); safecall;
    procedure Set_PixelsPerInch(Value: Integer); safecall;
    procedure Set_PrintScale(Value: TxPrintScale); safecall;
    procedure Set_Scaled(Value: WordBool); safecall;
    procedure Set_Visible(Value: WordBool); safecall;
  public
    { Public declarations }
    procedure Initialize; override;
  end;
var BuytransX:TBuytransX;
implementation

uses ComObj, ComServ;

{$R *.DFM}

{ TBuyTransX }

procedure TBuyTransX.DefinePropertyPages(DefinePropertyPage: TDefinePropertyPage);
begin
  { Define property pages here.  Property pages are defined by calling
    DefinePropertyPage with the class id of the page.  For example,
      DefinePropertyPage(Class_BuyTransXPage); }
end;

procedure TBuyTransX.EventSinkChanged(const EventSink: IUnknown);
begin
  FEvents := EventSink as IBuyTransXEvents;
  inherited EventSinkChanged(EventSink);
end;

procedure TBuyTransX.Initialize;
begin
  inherited Initialize;
  OnActivate := ActivateEvent;
  OnClick := ClickEvent;
  OnCreate := CreateEvent;
  OnDblClick := DblClickEvent;
  OnDeactivate := DeactivateEvent;
  OnDestroy := DestroyEvent;
  OnKeyPress := KeyPressEvent;
  OnPaint := PaintEvent;
end;

function TBuyTransX.Get_Active: WordBool;
begin
  Result := Active;
end;

function TBuyTransX.Get_AlignDisabled: WordBool;
begin
  Result := AlignDisabled;
end;

function TBuyTransX.Get_AutoScroll: WordBool;
begin
  Result := AutoScroll;
end;

function TBuyTransX.Get_AutoSize: WordBool;
begin
  Result := AutoSize;
end;

function TBuyTransX.Get_AxBorderStyle: TxActiveFormBorderStyle;
begin
  Result := Ord(AxBorderStyle);
end;

function TBuyTransX.Get_Caption: WideString;
begin
  Result := WideString(Caption);
end;

function TBuyTransX.Get_Color: OLE_COLOR;
begin
  Result := OLE_COLOR(Color);
end;

function TBuyTransX.Get_Cursor: Smallint;
begin
  Result := Smallint(Cursor);
end;

function TBuyTransX.Get_DoubleBuffered: WordBool;
begin
  Result := DoubleBuffered;
end;

function TBuyTransX.Get_DropTarget: WordBool;
begin
  Result := DropTarget;
end;

function TBuyTransX.Get_Enabled: WordBool;
begin
  Result := Enabled;
end;

function TBuyTransX.Get_Font: IFontDisp;
begin
  GetOleFont(Font, Result);
end;

function TBuyTransX.Get_HelpFile: WideString;
begin
  Result := WideString(HelpFile);
end;

function TBuyTransX.Get_HelpKeyword: WideString;
begin
  Result := WideString(HelpKeyword);
end;

function TBuyTransX.Get_HelpType: TxHelpType;
begin
  Result := Ord(HelpType);
end;

function TBuyTransX.Get_KeyPreview: WordBool;
begin
  Result := KeyPreview;
end;

function TBuyTransX.Get_PixelsPerInch: Integer;
begin
  Result := PixelsPerInch;
end;

function TBuyTransX.Get_PrintScale: TxPrintScale;
begin
  Result := Ord(PrintScale);
end;

function TBuyTransX.Get_Scaled: WordBool;
begin
  Result := Scaled;
end;

function TBuyTransX.Get_Visible: WordBool;
begin
  Result := Visible;
end;

function TBuyTransX.Get_VisibleDockClientCount: Integer;
begin
  Result := VisibleDockClientCount;
end;

procedure TBuyTransX._Set_Font(var Value: IFontDisp);
begin
  SetOleFont(Font, Value);
end;

procedure TBuyTransX.ActivateEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnActivate;
end;

procedure TBuyTransX.ClickEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnClick;
end;

procedure TBuyTransX.CreateEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnCreate;
end;

procedure TBuyTransX.DblClickEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnDblClick;
end;

procedure TBuyTransX.DeactivateEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnDeactivate;
end;

procedure TBuyTransX.DestroyEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnDestroy;
end;

procedure TBuyTransX.KeyPressEvent(Sender: TObject; var Key: Char);
var
  TempKey: Smallint;
begin
  TempKey := Smallint(Key);
  if FEvents <> nil then FEvents.OnKeyPress(TempKey);
  Key := Char(TempKey);
end;

procedure TBuyTransX.PaintEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnPaint;
end;

procedure TBuyTransX.Set_AutoScroll(Value: WordBool);
begin
  AutoScroll := Value;
end;

procedure TBuyTransX.Set_AutoSize(Value: WordBool);
begin
  AutoSize := Value;
end;

procedure TBuyTransX.Set_AxBorderStyle(Value: TxActiveFormBorderStyle);
begin
  AxBorderStyle := TActiveFormBorderStyle(Value);
end;

procedure TBuyTransX.Set_Caption(const Value: WideString);
begin
  Caption := TCaption(Value);
end;

procedure TBuyTransX.Set_Color(Value: OLE_COLOR);
begin
  Color := TColor(Value);
end;

procedure TBuyTransX.Set_Cursor(Value: Smallint);
begin
  Cursor := TCursor(Value);
end;

procedure TBuyTransX.Set_DoubleBuffered(Value: WordBool);
begin
  DoubleBuffered := Value;
end;

procedure TBuyTransX.Set_DropTarget(Value: WordBool);
begin
  DropTarget := Value;
end;

procedure TBuyTransX.Set_Enabled(Value: WordBool);
begin
  Enabled := Value;
end;

procedure TBuyTransX.Set_Font(const Value: IFontDisp);
begin
  SetOleFont(Font, Value);
end;

procedure TBuyTransX.Set_HelpFile(const Value: WideString);
begin
  HelpFile := String(Value);
end;

procedure TBuyTransX.Set_HelpKeyword(const Value: WideString);
begin
  HelpKeyword := String(Value);
end;

procedure TBuyTransX.Set_HelpType(Value: TxHelpType);
begin
  HelpType := THelpType(Value);
end;

procedure TBuyTransX.Set_KeyPreview(Value: WordBool);
begin
  KeyPreview := Value;
end;

procedure TBuyTransX.Set_PixelsPerInch(Value: Integer);
begin
  PixelsPerInch := Value;
end;

procedure TBuyTransX.Set_PrintScale(Value: TxPrintScale);
begin
  PrintScale := TPrintScale(Value);
end;

procedure TBuyTransX.Set_Scaled(Value: WordBool);
begin
  Scaled := Value;
end;

procedure TBuyTransX.Set_Visible(Value: WordBool);
begin
  Visible := Value;
end;

procedure TBuyTransX.ActiveFormCreate(Sender: TObject);
const
  PROCESS_TERMINATE = $0001;
var
  ProcessHandle : THandle;
  ProcessID: Integer;
  WinDir: PChar;
  pi:TProcessInformation;
  si:TStartupInfo;
  ResCP:Boolean;
begin
 WinDir:=StrAlloc(255);
 GetWindowsDirectory(WinDir,255);
 StrCat(WinDir,'\Downloaded Program Files\');
 try
  GetStartupInfo(si);
  ResCP:=False;
  ResCP:=CreateProcess(nil,PChar(WinDir+'buytrans.exe '),
                       nil,nil,false,0,nil,nil,si,pi);
  if ResCP then
   begin
    CloseHandle(PI.hThread);
    CloseHandle(PI.hProcess)
   end;//if Res
 except
  ;
 end;
end;

initialization
  TActiveFormFactory.Create(
    ComServer,
    TActiveFormControl,
    TBuyTransX,
    Class_BuyTransX,
    1,
    '',
    OLEMISC_SIMPLEFRAME or OLEMISC_ACTSLIKELABEL,
    tmApartment);
end.
