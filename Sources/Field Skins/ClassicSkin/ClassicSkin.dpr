library ClassicSkin;

uses
  ClassicDrawer in 'ClassicDrawer.pas',
  GameSkin in '..\..\Interfaces\GameSkin.pas',
  IPlugInController in '..\..\Interfaces\IPlugInController.pas';

{$R *.res}

function PlugInsCount : Integer; export;
begin

end;

function CreatePlugIn(AIndex : Integer) : IxxPlugIn; export;
begin
end;

exports
  PlugInsCount;

exports
  CreatePlugIn;

begin

end.
