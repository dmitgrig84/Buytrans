unit uPassword;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

type
  TfPassword = class(TForm)
    PassWordPanel: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    LoginEdit: TEdit;
    PasswordEdit: TEdit;
    LoginBB: TBitBtn;
    CancelBB: TBitBtn;
    Bevel1: TBevel;
    procedure LoginEditKeyPress(Sender: TObject; var Key: Char);
    procedure LoginEditEnter(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure LoginBBClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
   Version:string;
  end;

var
  fPassword: TfPassword;

implementation

uses FileInfo, Reg, uMain, ConstUnit;

{$R *.DFM}

procedure TfPassword.FormCreate(Sender: TObject);
begin
 try
  Version:=Trim(CurrentFileInfo('buytrans.exe'));
  fPassword.Caption:='Версия - '+Version;
 except
  fPassword.Caption:='Версия - -.-.-.-';
 end;
end;

procedure TfPassword.LoginEditKeyPress(Sender: TObject; var Key: Char);
begin
 if (key=#13) and (LoginEdit.Text<>'') and (PasswordEdit.Text<>'') then
  LoginBBClick(self);
end;

procedure TfPassword.LoginEditEnter(Sender: TObject);
begin
 SetEN;
end;

procedure TfPassword.FormDestroy(Sender: TObject);
begin
 SetRU;
end;

procedure TfPassword.LoginBBClick(Sender: TObject);
var IPAddress,Hostname,Err:string;
    RetVal:OleVariant;
    ConnectedDB:boolean;
    i:integer;
    RemoteSrv: string;
begin
 GetIPFromHost(HostName,IPAddress,Err);
 fMain.Caption:=' HostWMS Приемка. Перемещение. '+fPassword.Caption;

 ModalResult:=mrOk;

 for i:=0 to 1 do
  try
   if i=0 then ReadParamFromRegistry(RemoteSrv,HKEY_CURRENT_USER,RemoteSrvFolder,'SrvFirst',DefaultRemoteSrv)
   else ReadParamFromRegistry(RemoteSrv,HKEY_CURRENT_USER,RemoteSrvFolder,'SrvSecond',DefaultRemoteSrv);
   fMain.SocketConnection.Address:=RemoteSrv;
   fMain.SocketConnection.Port:=DefaultRemotePrt;
   fMain.SocketConnection.Connected:=true;
   break;
  except on E:Exception do
   fMain.SocketConnection.Connected:=false;
  end;

 if not fMain.SocketConnection.Connected then
  MessageDLG('Не удалось подключиться к сокет-серверам.',mtError,[mbOK],0);

 RetVal:=1;
 fMain.SocketConnection.AppServer.DBSetDatabaseParams(AnsiUpperCase(LoginEdit.Text),PasswordEdit.Text,HostName,IPAddress,Version,RetVal,fMain.BaseSQLDialect);
 case (Olevariant(RetVal)) of
  0: begin
      with fMain.AnyCommandCDS do
       begin
        CommandText:=
         'select * from msd_hostwmslogin('+#39+AnsiUpperCase(LoginEdit.Text)+#39+','+#39+PasswordEdit.Text+#39+',3)';
        Open;

        if (RecordCount=0) then
         begin
          Close;
          fMain.SocketConnection.Connected:=false;
          MessageDLG('У вас нет прав на работу с данным модулем.',mtError,[mbOK],0);
         end
        else
         begin
          fMain.EmpId:=FieldByName('id').AsInteger;
          fMain.Login:=LoginEdit.Text;
          fMain.Pass:=PasswordEdit.Text;
          fMain.Grant:=FieldByName('Grants').asString;
          fMain.AdvancedGrant:=FieldByName('AdvancedGrants').asString;
          fMain.Caption:=fMain.Caption+' Текущий пользователь - '+FieldByName('name').asString;
          fMain.logfalse:=false;
         end;
       end;
     end;
  1: begin
      fMain.SocketConnection.Connected:=false;
      MessageDLG('Неизвестная ошибка.',mtError,[mbOK],0);
     end;
  2: begin
      fMain.SocketConnection.Connected:=false;
      MessageDLG('Не удалось подключиться к БД.',mtError,[mbOK],0);
     end;
  3: begin
      fMain.SocketConnection.Connected:=false;
      MessageDLG('Неправильно введено имя или пароль.',mtError,[mbOK],0);
     end;
 end;
end;



end.



