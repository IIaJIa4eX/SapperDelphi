unit UrbanDrawer;

interface

uses
  GameSkin;

type
  TxxUrbanSkinDrawer = class(TInterfacedObject,
                             IxxGameSkin)

    procedure Draw(ASkinName : String);
    procedure ClearComponents;

  end;

implementation

procedure TxxUrbanSkinDrawer.ClearComponents;
begin

end;

procedure TxxUrbanSkinDrawer.Draw(ASkinName : String);
begin

end;

end.
