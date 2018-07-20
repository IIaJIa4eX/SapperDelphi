program SquareForm;

uses
  Vcl.Forms,
  SquareDrawer in 'SquareDrawer.pas',
  FieldLogic in '..\..\Interfaces\FieldLogic.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Run;
end.
