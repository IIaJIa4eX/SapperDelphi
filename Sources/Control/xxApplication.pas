unit xxApplication;

interface

uses
  IPlugInController,
  WinTypes,
  Vcl.Dialogs;

implementation

type
  TCountfunction = function                 : Integer; stdcall;
  TCreatePlugIn  = function(AIndx : Integer) : IxxPlugIn; stdcall;

var
  CountF                                                             : TCountfunction;
  PlugInCreate                                                       : TCreatePlugIn;
  HLibSquareLogic, HLibTriangleLogic, HLibClassicSkin, HLibUrbanSkin : THandle;

type
  TxxApplication = class(TInterfacedObject,
                         IxxPlugIn)

  public
    constructor Create();
    destructor Destroy(); override;
    procedure PlugInSearch;
  end;

constructor TxxApplication.Create;
begin

end;

destructor TxxApplication.Destroy;
begin

  inherited;
end;

procedure TxxApplication.PlugInSearch;
begin
  HLibSquareLogic   := 0;
  HLibTriangleLogic := 0;
  HLibClassicSkin   := 0;
  HLibUrbanSkin     := 0;

  try
    HLibSquareLogic := LoadLibrary('SquareForm.dll');
    if HLibSquareLogic > HINSTANCE_ERROR then
    begin
      @CountF       := GetProcAddress(HLibSquareLogic, 'SquareFormCount');
      @PlugInCreate := GetProcAddress(HLibSquareLogic, 'CreatePlugInSquareForm');
      if (Assigned(CountF) and Assigned(PlugInCreate)) then
      begin

      end
      else
        ShowMessage('Method with name SquareFormCount or CreatePlugInSquareForm was not found');
    end
    else
      ShowMessage('Can not load library SquareForm.dll');
  finally
    if HLibSquareLogic > HINSTANCE_ERROR then
      FreeLibrary(HLibSquareLogic);
  end;

  try
    HLibTriangleLogic := LoadLibrary('TriangleForm.dll');
    if HLibSquareLogic > HINSTANCE_ERROR then
    begin
      @CountF       := GetProcAddress(HLibTriangleLogic, 'TriangleFormCount');
      @PlugInCreate := GetProcAddress(HLibTriangleLogic, 'CreatePlugInTriangleForm');
      if (Assigned(CountF) and Assigned(PlugInCreate)) then
      begin

      end
      else
        ShowMessage('Method with name TriangleFormCount or CreatePlugInTriangleForm was not found');
    end
    else
      ShowMessage('Can not load library TriangleForm.dll');
  finally
    if HLibTriangleLogic > HINSTANCE_ERROR then
      FreeLibrary(HLibTriangleLogic);
  end;

  try
    HLibClassicSkin := LoadLibrary('ClassicSkin.dll');
    if HLibClassicSkin > HINSTANCE_ERROR then
    begin
      @CountF       := GetProcAddress(HLibClassicSkin, 'ClassicSkinCount');
      @PlugInCreate := GetProcAddress(HLibClassicSkin, 'CreatePlugInClassicSkin');
      if (Assigned(CountF) and Assigned(PlugInCreate)) then
      begin

      end
      else
        ShowMessage('Method with name ClassicSkinCount or CreatePlugInClassicSkin was not found');
    end
    else
      ShowMessage('Can not load library ClassicSkin.dll');
  finally
    if HLibClassicSkin > HINSTANCE_ERROR then
      FreeLibrary(HLibClassicSkin);
  end;

  try
    HLibUrbanSkin := LoadLibrary('UrbanSkin.dll');
    if HLibUrbanSkin > HINSTANCE_ERROR then
    begin
      @CountF       := GetProcAddress(HLibUrbanSkin, 'UrbanSkinCount');
      @PlugInCreate := GetProcAddress(HLibUrbanSkin, 'CreatePlugInUrbanSkin');
      if (Assigned(CountF) and Assigned(PlugInCreate)) then
      begin

      end
      else
        ShowMessage('Method with name UrbanSkinCount or CreatePlugInUrbanSkin was not found');
    end
    else
      ShowMessage('Can not load library UrbanSkin.dll');
  finally
    if HLibUrbanSkin > HINSTANCE_ERROR then
      FreeLibrary(HLibUrbanSkin);
  end;
end;

end.
