unit GameLogic;

interface

uses
  IPlugInController;

type
  IxxGameLogic = interface(IxxPlugIn)
    ['{D47AEB9C-F1AB-4DBA-9DC4-4C4E0F45B5C6}']
    procedure Draw(AFieldSize, AMineSize : Integer; AFormName : String);

  end;

implementation

end.
