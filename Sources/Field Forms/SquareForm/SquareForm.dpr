library SquareForm;

uses
  SquareDrawer in 'SquareDrawer.pas',
  GameLogic in '..\..\Interfaces\GameLogic.pas',
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
