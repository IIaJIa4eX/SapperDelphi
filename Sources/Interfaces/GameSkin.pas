unit GameSkin;

interface

uses
  IPlugInController;

type
  IxxGameSkin = interface(IxxPlugIn)
    ['{DF3C72C5-5657-4AF8-A378-00A5B6A51DE3}']
    procedure Draw(ASkinName : String);

  end;

implementation

end.
