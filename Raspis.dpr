program Raspis;

uses
  Vcl.Forms,
  Main in 'Main.pas' {MainForm},
  DataModule in 'DataModule.pas' {DataModule6: TDataModule},
  sprav_dolzh in 'sprav_dolzh.pas' {sprav_dolzhn},
  Modal in 'Modal.pas' {frModal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule6, DataModule6);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TfrModal, frModal);
  Application.Run;
end.
