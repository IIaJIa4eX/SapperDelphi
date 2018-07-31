unit TriangleDrawer;

interface

uses
  GameLogic;

type
  TxxTriangleDrawer = class(TInterfacedObject,
                            IxxGameLogic)

    procedure Draw(AFieldSize, AMineSize : Integer; AFormName : String);

  end;

implementation

procedure TxxTriangleDrawer.Draw(AFieldSize, AMineSize : Integer; AFormName : String);
begin

end;

end.
