unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, ShellAPI, JvExControls, JvLinkLabel, dxGDIPlusClasses, Vcl.Menus, WinInet, Vcl.ComCtrls, UPRequest, AdvMemo, advmjson, AdvMemoStylerManager,
  AdvGlowButton;

type
  TMain_FM = class(TForm)
    Label1: TLabel;
    Footer: TPanel;
    GitHub_href: TLabel;
    GitHub_logo: TImage;
    MainMenu1: TMainMenu;
    Sobre1: TMenuItem;
    Conexo1: TMenuItem;
    Body: TPanel;
    B_Top: TPanel;
    BodyPages: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    Meth_POST: TLabel;
    Cookies: TLabel;
    Referer: TLabel;
    User_Agent: TLabel;
    Meth_GET: TLabel;
    Meth_GET_EDT: TEdit;
    Meth_POST_edt: TEdit;
    Cookies_EDT: TEdit;
    Referer_edt: TEdit;
    User_Agent_EDT: TEdit;
    TabSheet5: TTabSheet;
    Nivel_Anon: TLabel;
    Support_Https: TLabel;
    Protocol: TLabel;
    IP: TLabel;
    Port: TLabel;
    Nivel_Anon_EDT: TEdit;
    Support_Https_edt: TEdit;
    Protocol_EDT: TEdit;
    IP_edt: TEdit;
    Port_edt: TEdit;
    Loc: TLabel;
    Loc_edt: TEdit;
    SupportOptions: TPanel;
    S_Https: TCheckBox;
    S_Get: TCheckBox;
    S_Post: TCheckBox;
    S_Cookies: TCheckBox;
    S_Referer: TCheckBox;
    S_UserAgent: TCheckBox;
    CB_PN: TPanel;
    Anonymity_CB: TComboBox;
    Protocol_CB: TComboBox;
    Label2: TLabel;
    Vel_edt: TEdit;
    Input_Info: TPanel;
    pref_port_edt: TEdit;
    Origem_CB: TComboBox;
    Exceto_CB: TComboBox;
    Support_PN: TPanel;
    Procurar_Por_CBPN: TLabel;
    Min_vel_edt: TEdit;
    Preferer_Port: TLabel;
    Panel2: TPanel;
    ApenasPO: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    AdvMemo1: TAdvMemo;
    AdvMemoSource1: TAdvMemoSource;
    AdvMemoStylerManager1: TAdvMemoStylerManager;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    ProxyRequest1: TMenuItem;
    Configuraes1: TMenuItem;
    AdvGlowButton1: TAdvGlowButton;
    procedure GitHub_hrefClick(Sender: TObject);
    procedure Conexo1Click(Sender: TObject);
    procedure Request_btnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ProxyRequest1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main_FM: TMain_FM;

implementation

uses
  XSuperJSON, XSuperObject, ABOUT, UConfigs;

{$R *.dfm}

procedure TMain_FM.Conexo1Click(Sender: TObject);
var
  i: DWORD;
begin
  if not InternetGetConnectedState(@i, 0) then
  begin
    MessageBoxW(Handle, 'Não há conexão com a internet.', '', MB_OK + MB_ICONWARNING);
    exit;
  end;

  if InternetCheckConnection('https://gimmeproxy.com/api/getProxy', 0, 0) then
    MessageBoxW(Handle, 'Não foi possível estabelecer conexão com o servidor.', '', MB_OK + MB_ICONWARNING)
  else
    MessageBoxW(Handle, 'Conectado com sucesso!', '', MB_OK + MB_ICONINFORMATION);

end;

procedure TMain_FM.Configuraes1Click(Sender: TObject);
begin
  UConfigs.Config_FM.Show;
end;

procedure TMain_FM.FormCreate(Sender: TObject);
var
  StringJson: TStringList;
  Json: ISuperArray;
  Pais: ISuperObject;
  I: Integer;
begin
  Application.ProcessMessages;
  StringJson := TStringList.Create;
  try
    StringJson.LoadFromFile('lib/data/paises.json');
    Json := SA(StringJson.Text);
    for I := 0 to Json.Length - 1 do
    begin
      Pais := Json.O[I];
      Self.Origem_CB.Items.Add(Pais['sigla'].AsString);
      Self.Exceto_CB.Items.Add(Pais['sigla'].AsString);
    end;

  finally
    FreeAndNil(StringJson);
  end;
end;

procedure TMain_FM.GitHub_hrefClick(Sender: TObject);
const
  ProfileURL = 'https://github.com/riquedev';
begin
  ShellExecute(0, 'open', PCHAR(ProfileURL), nil, nil, SW_SHOWNORMAL);
end;

procedure TMain_FM.ProxyRequest1Click(Sender: TObject);
begin
  AboutBox.Show;
end;

procedure TMain_FM.Request_btnClick(Sender: TObject);
var
  RequisicaoDeProxy: TProxyRequest;
  RequisicaoParams: TProxyParams;
  Proxy: TProxyDetails;
begin
  if (Self.S_Https.Checked) then
    RequisicaoParams.SupportHttps := True;
  if (Self.S_Get.Checked) then
    RequisicaoParams.SupportGet := True;
  if (Self.S_Post.Checked) then
    RequisicaoParams.SupportPost := True;
  if (Self.S_Cookies.Checked) then
    RequisicaoParams.SupportCookies := True;
  if (self.S_Referer.Checked) then
    RequisicaoParams.SupportReferer := True;
  if (Self.S_UserAgent.Checked) then
    RequisicaoParams.SupportUserAgent := True;

  with Self.Anonymity_CB do
  begin
    RequisicaoParams.AnonymityLevel := TAnonymityType(ItemIndex);
  end;

  with Self.Protocol_CB do
  begin
    RequisicaoParams.Protocol := TProxyProtocolType(ItemIndex);
  end;

  with Self.Origem_CB do
  begin
    RequisicaoParams.Country := Items[ItemIndex];
  end;

  with Self.Exceto_CB do
  begin
    RequisicaoParams.ExcludesCountry := Items[ItemIndex];
  end;

  try
    RequisicaoParams.Port := StrToInt(Self.pref_port_edt.Text);
  except
    RequisicaoParams.Port := 0;
  end;
  try
    RequisicaoParams.minSpeedKB := StrToFloat(Self.Min_vel_edt.Text);
  except
    RequisicaoParams.minSpeedKB := 0;
  end;

  RequisicaoDeProxy.RequestProxy(RequisicaoParams);
  Proxy := RequisicaoDeProxy.BufferTratament;

  if (Proxy.AcceptGet) then
  begin
    Self.Meth_GET_EDT.Font.Color := clGreen;
    Self.Meth_GET_EDT.Text := 'Sim';
  end
  else
  begin
    Self.Meth_GET_EDT.Font.Color := clRed;
    Self.Meth_GET_EDT.Text := 'Não';
  end;

  if (Proxy.AcceptPost) then
  begin
    Self.Meth_POST_edt.Font.Color := clGreen;
    Self.Meth_POST_edt.Text := 'Sim';
  end
  else
  begin
    Self.Meth_POST_edt.Font.Color := clRed;
    Self.Meth_POST_edt.Text := 'Não';
  end;

  if (Proxy.AcceptCookies) then
  begin
    Self.Cookies_EDT.Font.Color := clGreen;
    Self.Cookies_EDT.Text := 'Sim';
  end
  else
  begin
    Self.Cookies_EDT.Font.Color := clRed;
    Self.Cookies_EDT.Text := 'Não';
  end;

  if (Proxy.AcceptReferer) then
  begin
    Self.Referer_edt.Font.Color := clGreen;
    Self.Referer_edt.Text := 'Sim';
  end
  else
  begin
    Self.Referer_edt.Font.Color := clRed;
    Self.Referer_edt.Text := 'Não';
  end;

  if (Proxy.AcceptUserAgent) then
  begin
    Self.User_Agent_EDT.Font.Color := clGreen;
    Self.User_Agent_EDT.Text := 'Sim';
  end
  else
  begin
    Self.User_Agent_EDT.Font.Color := clRed;
    Self.User_Agent_EDT.Text := 'Não';
  end;

  if (Proxy.AnonimityLevel = atNotAnon) then
  begin
    Self.Nivel_Anon_EDT.Text := '0';
  end
  else
    Self.Nivel_Anon_EDT.Text := '1';

  if (Proxy.SupportHttps) then
  begin
    Self.Support_Https_edt.Font.Color := clGreen;
    Self.Support_Https_edt.Text := 'Sim';
  end
  else
  begin
    Self.Support_Https_edt.Font.Color := clRed;
    Self.Support_Https_edt.Text := 'Não';
  end;

  if (Proxy.Protocol = ppHttp) then
    Self.Protocol_EDT.Text := 'http'
  else if (Proxy.Protocol = ppSocks4) then
    Self.Protocol_EDT.Text := 'Socks4'
  else if (Proxy.Protocol = ppSocks5) then
    Self.Protocol_EDT.Text := 'Socks5'
  else
    Self.Protocol_EDT.Text := 'Indefinido';

  Self.IP_edt.Text := Proxy.IP;
  Self.Port_edt.Text := IntToStr(Proxy.Port);
  Self.Loc_edt.Text := Proxy.Country;
  Self.Vel_edt.Text := Proxy.speed.ToString + ' kb/s';

  Self.AdvMemoSource1.Lines.Text := RequisicaoDeProxy.BufferResponse;
end;

end.


