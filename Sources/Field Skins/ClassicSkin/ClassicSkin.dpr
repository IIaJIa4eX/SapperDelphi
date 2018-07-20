program ClassicSkin;

uses
  Vcl.Forms,
  ClassicDrawer in 'ClassicDrawer.pas',
  GameSkin in '..\..\Interfaces\GameSkin.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Run;
end.
