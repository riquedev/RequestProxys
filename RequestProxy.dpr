program RequestProxy;

uses
  Vcl.Forms,
  UMain in 'lib\src\UMain.pas' {Main_FM},
  UPRequest in 'lib\src\UPRequest.pas',
  XSuperJSON in 'lib\src\XSuperJSON.pas',
  XSuperObject in 'lib\src\XSuperObject.pas',
  UConfigs in 'lib\src\UConfigs.pas' {Config_FM},
  ABOUT in 'lib\src\ABOUT.pas' {AboutBox};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain_FM, Main_FM);
  Application.CreateForm(TConfig_FM, Config_FM);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.Run;
end.
