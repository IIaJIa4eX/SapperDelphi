program SapperUltra;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Main_Form},
  MainGame in 'Interfaces\MainGame.pas',
  FieldBuilder in 'Control\FieldBuilder.pas',
  GameSkin in 'Interfaces\GameSkin.pas',
  GameLogic in 'Interfaces\GameLogic.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainView, MainView);
  Application.Run;
end.
