unit viewsrvform;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, IBCtrls, ExtCtrls, IBCustomDataSet,FileInfo, ComCtrls, DB, DBClient,
  MConnect, SConnect,IBDatabase,IBEvents,DBCtrls;

type
  TServerForm = class(TForm)
    UserPanel: TPanel;
    UserListView: TListView;
    InfoPanel: TPanel;
    ServerPanel: TPanel;
    ButtonPanel: TPanel;
    FormIBDatabase: TIBDatabase;
    ConnectButton: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormIBDatabaseAfterConnect(Sender: TObject);
    procedure FormIBDatabaseAfterDisconnect(Sender: TObject);
    procedure ConnectButtonClick(Sender: TObject);
  private
   { Private declarations }
  public
   ServerVersion:string;
   BasePath:string;
   BaseSQLDialect:string;
   BaseCharacterSet:string;
  end;

var ServerForm:TServerForm;

implementation

{$R *.DFM}

uses Reg, ConstUnit;

procedure TServerForm.FormCreate(Sender: TObject);
begin
 ServerVersion:=ServerPanel.Caption+Trim(CurrentFileInfo('buytrsrv.exe'));
 ServerPanel.Caption:=ServerVersion;
 InfoPanel.Caption:=' Current thread: '+IntToStr(GetCurrentThreadID);
 UserListView.Items.BeginUpdate;
 UserListView.Items.EndUpdate;

 FormIBDatabase.Connected:=false;
 ReadParamFromRegistry(BasePath,Root,BaseFolder,'BaseMainPath',DefaultBasePath);
 ReadParamFromRegistry(BaseSQLDialect,Root,BaseFolder,'BaseMainSQLDialect',DefaultBaseSQLDialect);
 ReadParamFromRegistry(BaseCharacterSet,Root,BaseFolder,'BaseMainCharacterSet',DefaultBaseCharacterSet);

 FormIBDatabase.DatabaseName:=ServerForm.BasePath;
 FormIBDatabase.SQLDialect:=StrToIntDef(ServerForm.BaseSQLDialect,1);
 FormIBDatabase.Params.Clear;
 FormIBDatabase.Params.Add('lc_ctype='+BaseCharacterSet);
end;

procedure TServerForm.FormDestroy(Sender: TObject);
begin
 try
  FormIBDatabase.Connected := false;
 except
  ;
 end;
end;

procedure TServerForm.FormIBDatabaseAfterConnect(Sender: TObject);
begin
 ServerPanel.Caption:=
 ServerVersion+'  DatabasePath:'+FormIBDatabase.DatabaseName+
               ', SQLDialect '+IntToStr(FormIBDatabase.SQLDialect)+
               ', CharacterSet '+BaseCharacterSet;
 ConnectButton.Caption:='DisconnectFromBase';
end;

procedure TServerForm.FormIBDatabaseAfterDisconnect(Sender: TObject);
begin
 ServerPanel.Caption:=ServerVersion;
 ConnectButton.Caption:='ConnectToBase';
end;

procedure TServerForm.ConnectButtonClick(Sender: TObject);
begin
 if FormIBDatabase.Connected then
  begin
   FormIBDatabase.LoginPrompt:=false;
   FormIBDatabase.Connected:=false;
  end
 else
  begin
   FormIBDatabase.LoginPrompt:=true;
   FormIBDatabase.Connected:=true;
  end;
end;

end.
