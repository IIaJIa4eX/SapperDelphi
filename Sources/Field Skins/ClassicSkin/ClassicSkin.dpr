library ClassicSkin;

uses
  ClassicDrawer in 'ClassicDrawer.pas',
  GameSkin in '..\..\Interfaces\GameSkin.pas',
  IPlugInController in '..\..\Interfaces\IPlugInController.pas';

{$R *.res}

function PlugInsCount : Integer; stdcall; export;
begin

end;

function CreatePlugIn(AIndex : Integer) : IxxPlugIn; stdcall; export;
begin
end;

exports
  PlugInsCount name 'ClassicSkinCount', CreatePlugIn name 'CreatePlugInClassicSkin';

begin

end.
