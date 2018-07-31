unit ClassicDrawer;

interface

uses
  GameSkin;

type
  TxxClassicSkinDrawer = class(TInterfacedObject,
                               IxxGameSkin)

    procedure Draw(ASkinName : String);

  end;

implementation

procedure TxxClassicSkinDrawer.Draw(ASkinName : String);
begin

end;

end.
