unit UConfigs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, AdvGlowButton, IniFiles;

type
  TConfig_FM = class(TForm)
    Body: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Config_FM: TConfig_FM;

implementation

{$R *.dfm}

procedure TConfig_FM.AdvGlowButton1Click(Sender: TObject);
var
  IniFile: TIniFile;
begin
  try
    IniFile := TIniFile.Create('lib/data/sys.ini');
    with IniFile do
    begin
      WriteString('Configs','PServer',trim(Self.Edit1.Text));
      WriteString('Configs','PPort',trim(Self.Edit2.Text));
    end;
  finally
    FreeAndNiL(IniFile);
    Self.Close;
  end;
end;

procedure TConfig_FM.FormShow(Sender: TObject);
var
  IniFile: TIniFile;
begin
  try
    IniFile := TIniFile.Create('lib/data/sys.ini');
    with IniFile do
    begin
      Self.Edit1.Text := ReadString('Configs', 'PServer', '');
      Self.Edit2.Text := ReadString('Configs','PPort','');
    end;
  finally
    FreeAndNiL(IniFile);
  end;
end;

end.


