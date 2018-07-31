unit UrbanDrawer;

interface

uses
  GameSkin;

type
  TxxUrbanSkinDrawer = class(TInterfacedObject,
                             IxxGameSkin)

    procedure Draw(ASkinName : String);

  end;

implementation

procedure TxxUrbanSkinDrawer.Draw(ASkinName : String);
begin

end;

end.
