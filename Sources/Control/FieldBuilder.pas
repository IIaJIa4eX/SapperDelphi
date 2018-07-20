unit FieldBuilder;

interface

uses
  MainGame;

implementation

type
  TxxFieldBuilder = class(TInterfacedObject,
                          IxxMainGame)

    procedure Build(AFieldSize, AMineSize : Integer; AFieldForm, AFileldSkin : String);
    procedure ClearComponents;

  end;

procedure TxxFieldBuilder.Build(AFieldSize, AMineSize : Integer; AFieldForm, AFileldSkin : String);
begin

end;

procedure TxxFieldBuilder.ClearComponents;
begin

end;

end.
