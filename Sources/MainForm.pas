unit MainForm;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TMain_Form = class(TForm)

    edt_fieldSize : TEdit;
    btn_start : TButton;
    edt_mineQuantity : TEdit;
    cmb_fieldTheme : TComboBox;
    lbl_fieldSize : TLabel;
    lbl_mineQuantity : TLabel;
    lbl_fieldTheme : TLabel;
    cmb_fieldForm : TComboBox;
    lbl_fieldForm : TLabel;
  end;

var
  MainView              : TMain_Form;
  AFieldSize, AMineSize : Integer;
  ASkinName             : String;

implementation

{$R *.dfm}

end.
