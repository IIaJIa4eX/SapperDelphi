unit MainForm;

interface

uses
  Winapi.Windows,
  Math,
  mmSystem,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg,
  Vcl.ExtCtrls,
  Vcl.MPlayer;

type
  TMain_Form = class(TForm)
    BackGroundImg : TImage;
    ThermalBombMenu : TImage;
    Timer : TTimer;
    MediaPlayer : TMediaPlayer;
    procedure TimerTimer(Sender : TObject);
    procedure FormCreate(Sender : TObject);

  end;

const

  rad = 10;

var
  MainView              : TMain_Form;
  AFieldSize, AMineSize : Integer;
  ASkinName             : String;
  FfallingBobm          : Boolean;
  FAngle                : real;

implementation

{$R *.dfm}

procedure TMain_Form.FormCreate(Sender : TObject);
begin

  ClientHeight        := ThermalBombMenu.Height;
  ClientWidth         := ThermalBombMenu.Width;
  ThermalBombMenu.Top := -(ThermalBombMenu.Height);
  FfallingBobm        := true;
  FAngle              := 0;
  Timer.Interval      := 100;
  MediaPlayer.Play;
end;

procedure TMain_Form.TimerTimer(Sender : TObject);
begin

  if (FfallingBobm and (ThermalBombMenu.Top < ClientRect.Top)) then
  begin
    ThermalBombMenu.Top := ThermalBombMenu.Top + 10
  end
  else
  begin
    FfallingBobm         := false;
    Timer.Interval       := 20;
    ThermalBombMenu.Left := Round(rad * cos(FAngle));
    ThermalBombMenu.Top  := Round(rad * sin(FAngle));
    FAngle               := FAngle + pi / 37;
  end;

end;

end.
