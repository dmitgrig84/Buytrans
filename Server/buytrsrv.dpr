 program buytrsrv;

uses
  Forms,
  buytrsrv_TLB in 'buytrsrv_TLB.pas',
  rdmbuytr in 'rdmbuytr.pas' {BuyTrRDM: TRemoteDataModule} {BuyTrRDM: CoClass},
  viewsrvform in 'viewsrvform.pas' {ServerForm};

{$R *.TLB}

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'BuyTransportation Server';
  Application.CreateForm(TServerForm, ServerForm);
  Application.Run;
end.
