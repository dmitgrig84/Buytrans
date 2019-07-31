library Buytrans;

uses
  ComServ,
  Buytrans_TLB in 'Buytrans_TLB.pas',
  BuytransMain in 'BuytransMain.pas' {BuyTransX: TActiveForm} {BuyTransX: CoClass};

{$E ocx}

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.TLB}

{$R *.RES}

begin
end.
