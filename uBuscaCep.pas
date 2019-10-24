unit uBuscaCep;

interface

uses
  REST.Client, REST.Types, System.JSON, System.SysUtils;

type
  TBuscaCep = class(TObject)
  strict private
    FCep: string;
    FLogradouro: string;
    FComplemento: string;
    FBairro: string;
    FCidade: string;
    FUF: string;
  private
  public
    constructor Create(const Cep: string); overload;
    property Cep: string read FCep;
    property Logradouro: string read FLogradouro;
    property Complemento: string read FComplemento;
    property Bairro: string read FBairro;
    property Cidade: string read FCidade;
    property UF: string read FUF;
  end;

implementation

{ TBuscaCep }

constructor TBuscaCep.Create(const Cep: string);
var
  RESTClient: TRESTClient;
  RESTRequest: TRESTRequest;
  RESTResponse: TRESTResponse;
  jsonObject: TJSONObject;
begin
  try
    RESTClient := TRESTClient.Create(nil);
    RESTClient.Accept := 'application/json, text/plain; q=0.9, text/html;q=0.8,';
    RESTClient.AcceptCharset := 'utf-8, *;q=0.8';
    RESTClient.BaseURL := 'http://viacep.com.br/ws/';

    RESTRequest := TRESTRequest.Create(nil);
    RESTRequest.Accept := 'application/json, text/plain; q=0.9, text/html;q=0.8,';
    RESTRequest.AcceptCharset := 'utf-8, *;q=0.8';
    RESTRequest.Client := RESTClient;
    RESTRequest.Resource := '{cep}/json';

    RESTResponse := TRESTResponse.Create(nil);
    RESTResponse.ContentType := 'application/json';
    RESTRequest.Method := TRESTRequestMethod.rmGET;
    RESTRequest.Params.AddUrlSegment('cep',Cep);

    RESTRequest.Response := RESTResponse;

    RESTRequest.Execute;

    jsonObject := RESTResponse.JSONValue as TJSONObject;

    FCep := jsonObject.Get('cep').JsonValue.Value;
    FLogradouro := jsonObject.Get('logradouro').JsonValue.Value;
    FComplemento := jsonObject.Get('complemento').JsonValue.Value;
    FBairro := jsonObject.Get('bairro').JsonValue.Value;
    FCidade := jsonObject.Get('localidade').JsonValue.Value;
    FUF := jsonObject.Get('uf').JsonValue.Value;
  finally
    FreeAndNil(RESTClient);
    FreeAndNil(RESTRequest);
    FreeAndNil(RESTResponse);
  end;
end;

end.
