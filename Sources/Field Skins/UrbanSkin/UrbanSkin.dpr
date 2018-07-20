program UrbanSkin;

uses
  Vcl.Forms,
  UrbanDrawer in 'UrbanDrawer.pas',
  GameSkin in '..\..\Interfaces\GameSkin.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Run;
end.
