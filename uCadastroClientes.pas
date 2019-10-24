unit uCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, uBuscaCep,
  Data.DB, Datasnap.DBClient, XMLIntf, XMLDoc, ICadastroClientes, Xml.xmldom, IdSSLOpenSSL, IdSMTP,
  IdMessage, IdText, IdExplicitTLSClientServerBase, IdAttachmentFile;

type
  TForm1 = class(TForm)
    lblNome: TLabel;
    lblRG: TLabel;
    lblCPF: TLabel;
    lblTelefone: TLabel;
    lblEmail: TLabel;
    lblEndereco: TLabel;
    lblCEP: TLabel;
    lblNumero: TLabel;
    lblComplemento: TLabel;
    lblBairro: TLabel;
    lblCidade: TLabel;
    lblEstado: TLabel;
    lblPais: TLabel;
    dbedtNome: TDBEdit;
    dbedtRG: TDBEdit;
    dbedtCPF: TDBEdit;
    dbedtTelefone: TDBEdit;
    dbedtEndereco: TDBEdit;
    dbedtCEP: TDBEdit;
    dbedtNumero: TDBEdit;
    dbedtComplemento: TDBEdit;
    dbedtBairro: TDBEdit;
    dbedtCidade: TDBEdit;
    dbedtEstado: TDBEdit;
    dbedtPais: TDBEdit;
    dbedtEmail: TDBEdit;
    btnNovo: TButton;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    cdsCadastroClientes: TClientDataSet;
    dsCadastroClientes: TDataSource;
    cdsCadastroClientesNome: TStringField;
    cdsCadastroClientesRG: TStringField;
    cdsCadastroClientesCPF: TStringField;
    cdsCadastroClientesTelefone: TStringField;
    cdsCadastroClientesEmail: TStringField;
    cdsCadastroClientesCEP: TStringField;
    cdsCadastroClientesEndereco: TStringField;
    cdsCadastroClientesNumero: TStringField;
    cdsCadastroClientesComplemento: TStringField;
    cdsCadastroClientesBairro: TStringField;
    cdsCadastroClientesCidade: TStringField;
    cdsCadastroClientesEstado: TStringField;
    cdsCadastroClientesPais: TStringField;
    XMLDocument1: TXMLDocument;
    btnEnviarEmail: TButton;
    procedure btnNovoClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dbedtCEPExit(Sender: TObject);
    procedure cdsCadastroClientesAfterScroll(DataSet: TDataSet);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure AtivarControles;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AtivarControles;
begin
  if (cdsCadastroClientes.State in dsEditModes) then
  begin
    btnNovo.Enabled := false;
    btnConfirmar.Enabled := true;
    btnCancelar.Enabled := true;
  end
  else
  begin
    btnNovo.Enabled := true;
    btnConfirmar.Enabled := false;
    btnCancelar.Enabled := false;
  end;
end;

procedure TForm1.btnCancelarClick(Sender: TObject);
begin
  cdsCadastroClientes.Cancel;
end;

procedure TForm1.btnConfirmarClick(Sender: TObject);

begin
  try
    cdsCadastroClientes.Post;
    
    MessageDlg('Cadastro realizado com sucesso!', mtInformation, [mbOK], 0);

  except
    On E:Exception do
    begin
      MessageDlg('Erro ao cadastrar cliente: ' +
        E.Message, mtWarning, [mbOK], 0);
    end;
  end;
end;

procedure TForm1.btnEnviarEmailClick(Sender: TObject);
var
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  IdText: TIdText;
  sAnexo: string;
begin
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
  IdSMTP := TIdSMTP.Create(Self);
  IdMessage := TIdMessage.Create(Self);

  try
    // Protocolo SSL
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

    // Servidor SMTP
    IdSMTP.IOHandler := IdSSLIOHandlerSocket;
    IdSMTP.UseTLS := utUseImplicitTLS;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Port := 465;
    IdSMTP.Host := 'smtp'; //<--- Configurar protocolo
    IdSMTP.Username := 'email_de_envio@email.com'; //<--- Configurar
    IdSMTP.Password := 'senha';  //<--- Configurar

    // Configuração da mensagem (TIdMessage)
    IdMessage.From.Address := 'email_do_remetente@email.com'; //<-- Configurar
    IdMessage.From.Name := 'Nome do remetente';     //<--- Configurar
    IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
    IdMessage.Recipients.Add.Text := 'usuario@email.com';   //<--- Configurar e-mail destino
    //IdMessage.Recipients.Add.Text := 'usuario@email.com'; // opcional
    //IdMessage.Recipients.Add.Text := 'usuario@email.com'; // opcional
    IdMessage.Subject := ''; // Assunto
    IdMessage.Encoding := meMIME;

    // Corpo do email
    IdText := TIdText.Create(IdMessage.MessageParts);
    IdText.Body.Add('Corpo do e-mail');
    IdText.ContentType := 'text/plain; charset=iso-8859-1';

    sAnexo := 'CadastroClientes.xml';
    if FileExists(sAnexo) then
    begin
      TIdAttachmentFile.Create(IdMessage.MessageParts, sAnexo);
    end;

    try
      IdSMTP.Connect;
      IdSMTP.Authenticate;
    except
      on E:Exception do
      begin
        MessageDlg('Erro na conexão ou autenticação: ' +
          E.Message, mtWarning, [mbOK], 0);
        Exit;
      end;
    end;

    try
      IdSMTP.Send(IdMessage);
      MessageDlg('Mensagem enviada com sucesso!', mtInformation, [mbOK], 0);
    except
      On E:Exception do
      begin
        MessageDlg('Erro ao enviar a mensagem: ' +
          E.Message, mtWarning, [mbOK], 0);
      end;
    end;
  finally
    IdSMTP.Disconnect;
    UnLoadOpenSSLLibrary;
    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);
  end;
end;

procedure TForm1.btnNovoClick(Sender: TObject);
begin
  try
    cdsCadastroClientes.Open;
    cdsCadastroClientes.Append;
    dbedtNome.SetFocus;
  except
    On E:Exception do
    begin
      MessageDlg('Erro ao inserir novo cliente: ' +
        E.Message, mtWarning, [mbOK], 0);
    end;
  end;
end;

procedure TForm1.cdsCadastroClientesAfterScroll(DataSet: TDataSet);
begin
  AtivarControles;
end;

procedure TForm1.dbedtCEPExit(Sender: TObject);
var
  BuscaCep: TBuscaCep;
begin

  if (cdsCadastroClientes.State in dsEditModes) then
  begin
    BuscaCep := TBuscaCep.Create(dbedtCEP.Text);

    cdsCadastroClientesCEP.AsString := BuscaCep.Cep;
    cdsCadastroClientesEndereco.AsString := BuscaCep.Logradouro;
    cdsCadastroClientesBairro.AsString := BuscaCep.Bairro;
    cdsCadastroClientesComplemento.AsString := BuscaCep.Complemento;
    cdsCadastroClientesCidade.AsString := BuscaCep.Cidade;
    cdsCadastroClientesEstado.AsString := BuscaCep.UF;
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsCadastroClientes.Close;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  AtivarControles;
  cdsCadastroClientes.Close;
end;

end.
