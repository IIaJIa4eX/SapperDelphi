unit SquareDrawer;

interface

uses
  FieldLogic;

type
  TxxSquareDrawer = class(TInterfacedObject,
                          IxxGameLogic)

    procedure Draw(AFieldSize, AMineSize : Integer; AFormName : String);
    procedure ClearComponents;

  end;

implementation

procedure TxxSquareDrawer.ClearComponents;
begin

end;

procedure TxxSquareDrawer.Draw(AFieldSize, AMineSize : Integer; AFormName : String);
begin

end;

end.
