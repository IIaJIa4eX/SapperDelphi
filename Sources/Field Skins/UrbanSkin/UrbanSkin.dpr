library UrbanSkin;

uses
  UrbanDrawer in 'UrbanDrawer.pas',
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
  PlugInsCount name 'UrbanSkinCount', CreatePlugIn name 'CreatePlugInUrbanSkin';

begin

end.
