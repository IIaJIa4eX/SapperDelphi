unit SquareDrawer;

interface

uses
  GameLogic;

type
  TxxSquareDrawer = class(TInterfacedObject,
                          IxxGameLogic)

    procedure Draw(AFieldSize, AMineSize : Integer; AFormName : String);

  end;

implementation

procedure TxxSquareDrawer.Draw(AFieldSize, AMineSize : Integer; AFormName : String);
begin

end;

end.
