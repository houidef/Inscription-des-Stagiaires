program SysPaie;



uses
  Forms,
  UPrincipale in 'UPrincipale.pas' {FMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
