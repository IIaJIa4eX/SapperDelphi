program TriangleForm;

uses
  Vcl.Forms,
  TriangleDrawer in 'TriangleDrawer.pas',
  FieldLogic in '..\..\Interfaces\FieldLogic.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Run;
end.
