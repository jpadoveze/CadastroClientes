program CadastroClientes;

uses
  Vcl.Forms,
  uCadastroClientes in 'uCadastroClientes.pas' {Form1},
  uBuscaCep in 'uBuscaCep.pas',
  ICadastroClientes in 'ICadastroClientes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
