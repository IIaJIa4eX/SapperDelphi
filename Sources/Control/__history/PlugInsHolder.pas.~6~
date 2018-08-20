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
    procedure PlugInSearch;
  end;

procedure PlugInSearch;
begin
  HLibSquareLogic := 0;
  try
    HLibSquareLogic := LoadLibrary('SquareForm.dll');
    if HLibSquareLogic > HINSTANCE_ERROR then
    begin
      @CountF       := GetProcAddress(HLibSquareLogic, 'SquareFormCount');
      @PlugInCreate := GetProcAddress(HLibSquareLogic, 'CreatePlugInSquareForm');
      if Assigned(CountF and PlugInCreate) then
      begin

      end
      else
        ShowMessage('Method with name SquareFormCount was not found');
    end
    else
      ShowMessage('Can not load library SquareForm.dll');
  finally
    if HLibSquareLogic > HINSTANCE_ERROR then
      FreeLibrary(HLibSquareLogic);
  end
end;

end.
