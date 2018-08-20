program SapperUltra;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Main_Form},
  MainGame in 'Interfaces\MainGame.pas',
  FieldBuilder in 'Control\FieldBuilder.pas',
  GameSkin in 'Interfaces\GameSkin.pas',
  GameLogic in 'Interfaces\GameLogic.pas',
  xxApplication in 'Control\xxApplication.pas',
  IPlugInController in 'Interfaces\IPlugInController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain_Form, MainView);
  Application.Run;
end.
