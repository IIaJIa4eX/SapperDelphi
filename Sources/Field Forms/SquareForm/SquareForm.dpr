library SquareForm;

uses
  SquareDrawer in 'SquareDrawer.pas',
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
  PlugInsCount name 'SquareFormCount', CreatePlugIn name 'CreatePlugInSquareForm';

begin

end.
