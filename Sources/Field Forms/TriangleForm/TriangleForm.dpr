library TriangleForm;

uses
  TriangleDrawer in 'TriangleDrawer.pas',
  GameLogic in '..\..\Interfaces\GameLogic.pas',
  IPlugInController in '..\..\Interfaces\IPlugInController.pas';

{$R *.res}

function PlugInsCount : Integer; stdcall; export;
begin

end;

function CreatePlugIn(AIndex : Integer) : IxxPlugIn; stdcall; export;
begin
end;

exports
  PlugInsCount name 'TriangleFormCount', CreatePlugIn name 'CreatePlugInTriangleForm';

begin

end.
