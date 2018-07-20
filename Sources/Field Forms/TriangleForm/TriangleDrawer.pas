unit TriangleDrawer;

interface

uses
  FieldLogic;

type
  TxxTriangleDrawer = class(TInterfacedObject,
                            IxxGameLogic)

    procedure Draw(AFieldSize, AMineSize : Integer; AFormName : String);
    procedure ClearComponents;

  end;

implementation

procedure TxxTriangleDrawer.ClearComponents;
begin

end;

procedure TxxTriangleDrawer.Draw(AFieldSize, AMineSize : Integer; AFormName : String);
begin

end;

end.
