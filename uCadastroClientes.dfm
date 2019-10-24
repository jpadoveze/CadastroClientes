object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 438
  ClientWidth = 629
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblNome: TLabel
    Left = 72
    Top = 50
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object lblRG: TLabel
    Left = 72
    Top = 90
    Width = 14
    Height = 13
    Caption = 'RG'
  end
  object lblCPF: TLabel
    Left = 273
    Top = 90
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object lblTelefone: TLabel
    Left = 72
    Top = 123
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object lblEmail: TLabel
    Left = 272
    Top = 123
    Width = 28
    Height = 13
    Caption = 'E-mail'
  end
  object lblEndereco: TLabel
    Left = 72
    Top = 201
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object lblCEP: TLabel
    Left = 72
    Top = 162
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object lblNumero: TLabel
    Left = 453
    Top = 201
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object lblComplemento: TLabel
    Left = 353
    Top = 240
    Width = 65
    Height = 13
    Caption = 'Complemento'
  end
  object lblBairro: TLabel
    Left = 72
    Top = 245
    Width = 28
    Height = 13
    Caption = 'Bairro'
  end
  object lblCidade: TLabel
    Left = 72
    Top = 288
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object lblEstado: TLabel
    Left = 288
    Top = 288
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object lblPais: TLabel
    Left = 72
    Top = 328
    Width = 19
    Height = 13
    Caption = 'Pa'#237's'
  end
  object dbedtNome: TDBEdit
    Left = 136
    Top = 47
    Width = 335
    Height = 21
    DataField = 'Nome'
    DataSource = dsCadastroClientes
    TabOrder = 0
  end
  object dbedtRG: TDBEdit
    Left = 136
    Top = 87
    Width = 121
    Height = 21
    DataField = 'RG'
    DataSource = dsCadastroClientes
    TabOrder = 1
  end
  object dbedtCPF: TDBEdit
    Left = 315
    Top = 87
    Width = 121
    Height = 21
    DataField = 'CPF'
    DataSource = dsCadastroClientes
    TabOrder = 2
  end
  object dbedtTelefone: TDBEdit
    Left = 136
    Top = 120
    Width = 121
    Height = 21
    DataField = 'Telefone'
    DataSource = dsCadastroClientes
    TabOrder = 3
  end
  object dbedtEndereco: TDBEdit
    Left = 136
    Top = 198
    Width = 300
    Height = 21
    DataField = 'Endereco'
    DataSource = dsCadastroClientes
    TabOrder = 6
  end
  object dbedtCEP: TDBEdit
    Left = 136
    Top = 159
    Width = 121
    Height = 21
    DataField = 'CEP'
    DataSource = dsCadastroClientes
    TabOrder = 5
    OnExit = dbedtCEPExit
  end
  object dbedtNumero: TDBEdit
    Left = 496
    Top = 198
    Width = 49
    Height = 21
    DataField = 'Numero'
    DataSource = dsCadastroClientes
    TabOrder = 7
  end
  object dbedtComplemento: TDBEdit
    Left = 424
    Top = 237
    Width = 121
    Height = 21
    DataField = 'Complemento'
    DataSource = dsCadastroClientes
    TabOrder = 9
  end
  object dbedtBairro: TDBEdit
    Left = 136
    Top = 242
    Width = 201
    Height = 21
    DataField = 'Bairro'
    DataSource = dsCadastroClientes
    TabOrder = 8
  end
  object dbedtCidade: TDBEdit
    Left = 136
    Top = 288
    Width = 121
    Height = 21
    DataField = 'Cidade'
    DataSource = dsCadastroClientes
    TabOrder = 10
  end
  object dbedtEstado: TDBEdit
    Left = 327
    Top = 285
    Width = 42
    Height = 21
    DataField = 'Estado'
    DataSource = dsCadastroClientes
    TabOrder = 11
  end
  object dbedtPais: TDBEdit
    Left = 136
    Top = 325
    Width = 121
    Height = 21
    DataField = 'Pais'
    DataSource = dsCadastroClientes
    TabOrder = 12
  end
  object dbedtEmail: TDBEdit
    Left = 315
    Top = 120
    Width = 230
    Height = 21
    DataField = 'Email'
    DataSource = dsCadastroClientes
    TabOrder = 4
  end
  object btnNovo: TButton
    Left = 72
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 13
    OnClick = btnNovoClick
  end
  object btnConfirmar: TButton
    Left = 262
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 14
    OnClick = btnConfirmarClick
  end
  object btnCancelar: TButton
    Left = 343
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 15
    OnClick = btnCancelarClick
  end
  object btnEnviarEmail: TButton
    Left = 168
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Enviar e-mail'
    TabOrder = 16
    OnClick = btnEnviarEmailClick
  end
  object cdsCadastroClientes: TClientDataSet
    PersistDataPacket.Data = {
      730100009619E0BD01000000180000000D0000000000030000007301044E6F6D
      650100490014000100055749445448020002003C000252470100490014000100
      0557494454480200020009000343504601004900140001000557494454480200
      02000B000854656C65666F6E650100490014000100055749445448020002000B
      0005456D61696C0100490014000100055749445448020002003C000343455001
      0049001400010005574944544802000200090008456E64657265636F01004900
      14000100055749445448020002003C00064E756D65726F010049001400010005
      57494454480200020006000B436F6D706C656D656E746F010049000000010005
      57494454480200020014000642616972726F0100490014000100055749445448
      020002003C00064369646164650100490014000100055749445448020002003C
      000645737461646F010049001400010005574944544802000200140004506169
      730100490014000100055749445448020002003C000000}
    Active = True
    Aggregates = <>
    FileName = 'CadastroClientes.xml'
    FieldDefs = <
      item
        Name = 'Nome'
        Attributes = [faRequired, faUnNamed]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'RG'
        Attributes = [faRequired, faUnNamed]
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CPF'
        Attributes = [faRequired, faUnNamed]
        DataType = ftString
        Size = 11
      end
      item
        Name = 'Telefone'
        Attributes = [faRequired, faUnNamed]
        DataType = ftString
        Size = 11
      end
      item
        Name = 'Email'
        Attributes = [faRequired, faUnNamed]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CEP'
        Attributes = [faRequired, faUnNamed]
        DataType = ftString
        Size = 9
      end
      item
        Name = 'Endereco'
        Attributes = [faRequired, faUnNamed]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Numero'
        Attributes = [faRequired, faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Complemento'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Bairro'
        Attributes = [faRequired, faUnNamed]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Cidade'
        Attributes = [faRequired, faUnNamed]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Estado'
        Attributes = [faRequired, faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Pais'
        Attributes = [faRequired, faUnNamed]
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    AfterScroll = cdsCadastroClientesAfterScroll
    Left = 528
    Top = 304
    object cdsCadastroClientesNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 60
    end
    object cdsCadastroClientesRG: TStringField
      FieldName = 'RG'
      Required = True
      Size = 9
    end
    object cdsCadastroClientesCPF: TStringField
      FieldName = 'CPF'
      Required = True
      Size = 11
    end
    object cdsCadastroClientesTelefone: TStringField
      FieldName = 'Telefone'
      Required = True
      Size = 11
    end
    object cdsCadastroClientesEmail: TStringField
      FieldName = 'Email'
      Required = True
      Size = 60
    end
    object cdsCadastroClientesCEP: TStringField
      FieldName = 'CEP'
      Required = True
      Size = 9
    end
    object cdsCadastroClientesEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 60
    end
    object cdsCadastroClientesNumero: TStringField
      FieldName = 'Numero'
      Required = True
      Size = 6
    end
    object cdsCadastroClientesComplemento: TStringField
      FieldName = 'Complemento'
    end
    object cdsCadastroClientesBairro: TStringField
      FieldName = 'Bairro'
      Required = True
      Size = 60
    end
    object cdsCadastroClientesCidade: TStringField
      FieldName = 'Cidade'
      Required = True
      Size = 60
    end
    object cdsCadastroClientesEstado: TStringField
      FieldName = 'Estado'
      Required = True
    end
    object cdsCadastroClientesPais: TStringField
      FieldName = 'Pais'
      Required = True
      Size = 60
    end
  end
  object dsCadastroClientes: TDataSource
    DataSet = cdsCadastroClientes
    Left = 448
    Top = 304
  end
  object XMLDocument1: TXMLDocument
    Left = 472
    Top = 360
  end
end
