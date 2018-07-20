unit ClassicDrawer;

interface

uses
  GameSkin;

type
  TxxClassicSkinDrawer = class(TInterfacedObject,
                               IxxGameSkin)

    procedure Draw(ASkinName : String);
    procedure ClearComponents;

  end;

implementation

procedure TxxClassicSkinDrawer.ClearComponents;
begin

end;

procedure TxxClassicSkinDrawer.Draw(ASkinName : String);
begin

end;

end.
