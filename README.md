# Request Proxys
[Delphi] Source para Requisições de Proxys.

# Como utilizar?
Bem, você vai precisar do **sys.ini** encontrado em **lib/data/** e o **UPRequest.pas** em **lib/src/**, implemente o UPRequest em sua aplicação,
é necessário que o caminho do sys.ini seja **./lib/data/sys.ini**, e seu app localizado em **./**, isso pode ser alterado no próxprio UPRequest.
Tendo os dois em seu projeto, basta declarar algo como:

```pascal
procedure MinhaProcedure;
var
  RequisicaoDeProxy: TProxyRequest;
  RequisicaoParams: TProxyParams;
  Proxy: TProxyDetails;
begin
  RequisicaoParams.SupportHttps := True; //Você está dizendo que quer um proxy que suporta https...
  RequisicaoParams.SupportGet   := True;
  RequisicaoParams.Country      := 'BR'; //Quero um proxy brasileiro.
  RequisicaoParams.Port         := 8000; //Esse port tem que ter a porta 8000 aberta
  RequisicaoDeProxy(RequisicaoParams);
  Proxy := RequisicaoDeProxy.BufferTratament;
  ShowMessage('IP: '+Proxy.IP+#13+'PORT: '+IntToStr(Proxy.Port));
 end;
 
```

Não busquei dar mais explicações pois acredito que a source está fácil de ser entendida, qualquer dúvida basta entrar em contato.
Se necessário melhorarei este **README** :smile:

# Regras de uso
Para o funcionamento desta source é útilizado o site: [gimmeproxy.com]: https://gimmeproxy.com, o serviço não é totalmente gratuito, você
será limitado quanto as requisições, por isso é necessário o uso de proxy para requisitar novos proxys.
Cada Proxy lhe renderá 6 requisições ( e só poderá fazer novas requisições após 20 horas ).

# Funcionalidade
Basicamente está source lhe entregará o Proxy requisitado, não há muito o que dizer.

**PS.:** o executável não aplicará o Proxy em sua máquina, ele apenas está lhe dando o Proxy e algumas informações do mesmo.

# Atenção
Caso você decida utilizar o executável, você precisará de tudo dentro da pasta **./lib/**.
