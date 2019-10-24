
{********************************************************************************************************************}
{                                                                                                                    }
{                                                  XML Data Binding                                                  }
{                                                                                                                    }
{         Generated on: 23/10/2019 18:20:12                                                                          }
{                                                                                                                    }
{********************************************************************************************************************}

unit ICadastroClientes;

interface

uses Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf;

type

{ Forward Decls }

  IXMLDATAPACKETType = interface;
  IXMLMETADATAType = interface;
  IXMLFIELDSType = interface;
  IXMLFIELDType = interface;
  IXMLPARAMSType = interface;
  IXMLROWDATAType = interface;
  IXMLROWType = interface;

{ IXMLDATAPACKETType }

  IXMLDATAPACKETType = interface(IXMLNode)
    ['{DA0B360D-A5D6-472A-A5D2-121E734425DE}']
    { Property Accessors }
    function Get_Version: UnicodeString;
    function Get_METADATA: IXMLMETADATAType;
    function Get_ROWDATA: IXMLROWDATAType;
    procedure Set_Version(Value: UnicodeString);
    { Methods & Properties }
    property Version: UnicodeString read Get_Version write Set_Version;
    property METADATA: IXMLMETADATAType read Get_METADATA;
    property ROWDATA: IXMLROWDATAType read Get_ROWDATA;
  end;

{ IXMLMETADATAType }

  IXMLMETADATAType = interface(IXMLNode)
    ['{114C911D-DF60-4681-947D-7DD725FEB112}']
    { Property Accessors }
    function Get_FIELDS: IXMLFIELDSType;
    function Get_PARAMS: IXMLPARAMSType;
    { Methods & Properties }
    property FIELDS: IXMLFIELDSType read Get_FIELDS;
    property PARAMS: IXMLPARAMSType read Get_PARAMS;
  end;

{ IXMLFIELDSType }

  IXMLFIELDSType = interface(IXMLNodeCollection)
    ['{D0365B9D-A500-42F3-AEE5-25F35E5279C1}']
    { Property Accessors }
    function Get_FIELD(Index: Integer): IXMLFIELDType;
    { Methods & Properties }
    function Add: IXMLFIELDType;
    function Insert(const Index: Integer): IXMLFIELDType;
    property FIELD[Index: Integer]: IXMLFIELDType read Get_FIELD; default;
  end;

{ IXMLFIELDType }

  IXMLFIELDType = interface(IXMLNode)
    ['{95920386-AA0B-4536-AF3A-85D3C7DA89D4}']
    { Property Accessors }
    function Get_Attrname: UnicodeString;
    function Get_Fieldtype: UnicodeString;
    function Get_Required: UnicodeString;
    function Get_WIDTH: Integer;
    procedure Set_Attrname(Value: UnicodeString);
    procedure Set_Fieldtype(Value: UnicodeString);
    procedure Set_Required(Value: UnicodeString);
    procedure Set_WIDTH(Value: Integer);
    { Methods & Properties }
    property Attrname: UnicodeString read Get_Attrname write Set_Attrname;
    property Fieldtype: UnicodeString read Get_Fieldtype write Set_Fieldtype;
    property Required: UnicodeString read Get_Required write Set_Required;
    property WIDTH: Integer read Get_WIDTH write Set_WIDTH;
  end;

{ IXMLPARAMSType }

  IXMLPARAMSType = interface(IXMLNode)
    ['{5DE65734-5EC3-4CE5-AF25-C1114C23F45F}']
    { Property Accessors }
    function Get_CHANGE_LOG: UnicodeString;
    procedure Set_CHANGE_LOG(Value: UnicodeString);
    { Methods & Properties }
    property CHANGE_LOG: UnicodeString read Get_CHANGE_LOG write Set_CHANGE_LOG;
  end;

{ IXMLROWDATAType }

  IXMLROWDATAType = interface(IXMLNodeCollection)
    ['{C6E31E4D-6C1A-4415-9C3C-7F8AA36BFE46}']
    { Property Accessors }
    function Get_ROW(Index: Integer): IXMLROWType;
    { Methods & Properties }
    function Add: IXMLROWType;
    function Insert(const Index: Integer): IXMLROWType;
    property ROW[Index: Integer]: IXMLROWType read Get_ROW; default;
  end;

{ IXMLROWType }

  IXMLROWType = interface(IXMLNode)
    ['{574B8931-D725-4AF3-B861-1827CD45BB99}']
    { Property Accessors }
    function Get_RowState: Integer;
    function Get_Nome: UnicodeString;
    function Get_RG: Integer;
    function Get_CPF: Integer;
    function Get_Telefone: Integer;
    function Get_Email: UnicodeString;
    function Get_CEP: UnicodeString;
    function Get_Endereco: UnicodeString;
    function Get_Numero: Integer;
    function Get_Complemento: UnicodeString;
    function Get_Bairro: UnicodeString;
    function Get_Cidade: UnicodeString;
    function Get_Estado: UnicodeString;
    function Get_Pais: UnicodeString;
    procedure Set_RowState(Value: Integer);
    procedure Set_Nome(Value: UnicodeString);
    procedure Set_RG(Value: Integer);
    procedure Set_CPF(Value: Integer);
    procedure Set_Telefone(Value: Integer);
    procedure Set_Email(Value: UnicodeString);
    procedure Set_CEP(Value: UnicodeString);
    procedure Set_Endereco(Value: UnicodeString);
    procedure Set_Numero(Value: Integer);
    procedure Set_Complemento(Value: UnicodeString);
    procedure Set_Bairro(Value: UnicodeString);
    procedure Set_Cidade(Value: UnicodeString);
    procedure Set_Estado(Value: UnicodeString);
    procedure Set_Pais(Value: UnicodeString);
    { Methods & Properties }
    property RowState: Integer read Get_RowState write Set_RowState;
    property Nome: UnicodeString read Get_Nome write Set_Nome;
    property RG: Integer read Get_RG write Set_RG;
    property CPF: Integer read Get_CPF write Set_CPF;
    property Telefone: Integer read Get_Telefone write Set_Telefone;
    property Email: UnicodeString read Get_Email write Set_Email;
    property CEP: UnicodeString read Get_CEP write Set_CEP;
    property Endereco: UnicodeString read Get_Endereco write Set_Endereco;
    property Numero: Integer read Get_Numero write Set_Numero;
    property Complemento: UnicodeString read Get_Complemento write Set_Complemento;
    property Bairro: UnicodeString read Get_Bairro write Set_Bairro;
    property Cidade: UnicodeString read Get_Cidade write Set_Cidade;
    property Estado: UnicodeString read Get_Estado write Set_Estado;
    property Pais: UnicodeString read Get_Pais write Set_Pais;
  end;

{ Forward Decls }

  TXMLDATAPACKETType = class;
  TXMLMETADATAType = class;
  TXMLFIELDSType = class;
  TXMLFIELDType = class;
  TXMLPARAMSType = class;
  TXMLROWDATAType = class;
  TXMLROWType = class;

{ TXMLDATAPACKETType }

  TXMLDATAPACKETType = class(TXMLNode, IXMLDATAPACKETType)
  protected
    { IXMLDATAPACKETType }
    function Get_Version: UnicodeString;
    function Get_METADATA: IXMLMETADATAType;
    function Get_ROWDATA: IXMLROWDATAType;
    procedure Set_Version(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLMETADATAType }

  TXMLMETADATAType = class(TXMLNode, IXMLMETADATAType)
  protected
    { IXMLMETADATAType }
    function Get_FIELDS: IXMLFIELDSType;
    function Get_PARAMS: IXMLPARAMSType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLFIELDSType }

  TXMLFIELDSType = class(TXMLNodeCollection, IXMLFIELDSType)
  protected
    { IXMLFIELDSType }
    function Get_FIELD(Index: Integer): IXMLFIELDType;
    function Add: IXMLFIELDType;
    function Insert(const Index: Integer): IXMLFIELDType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLFIELDType }

  TXMLFIELDType = class(TXMLNode, IXMLFIELDType)
  protected
    { IXMLFIELDType }
    function Get_Attrname: UnicodeString;
    function Get_Fieldtype: UnicodeString;
    function Get_Required: UnicodeString;
    function Get_WIDTH: Integer;
    procedure Set_Attrname(Value: UnicodeString);
    procedure Set_Fieldtype(Value: UnicodeString);
    procedure Set_Required(Value: UnicodeString);
    procedure Set_WIDTH(Value: Integer);
  end;

{ TXMLPARAMSType }

  TXMLPARAMSType = class(TXMLNode, IXMLPARAMSType)
  protected
    { IXMLPARAMSType }
    function Get_CHANGE_LOG: UnicodeString;
    procedure Set_CHANGE_LOG(Value: UnicodeString);
  end;

{ TXMLROWDATAType }

  TXMLROWDATAType = class(TXMLNodeCollection, IXMLROWDATAType)
  protected
    { IXMLROWDATAType }
    function Get_ROW(Index: Integer): IXMLROWType;
    function Add: IXMLROWType;
    function Insert(const Index: Integer): IXMLROWType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLROWType }

  TXMLROWType = class(TXMLNode, IXMLROWType)
  protected
    { IXMLROWType }
    function Get_RowState: Integer;
    function Get_Nome: UnicodeString;
    function Get_RG: Integer;
    function Get_CPF: Integer;
    function Get_Telefone: Integer;
    function Get_Email: UnicodeString;
    function Get_CEP: UnicodeString;
    function Get_Endereco: UnicodeString;
    function Get_Numero: Integer;
    function Get_Complemento: UnicodeString;
    function Get_Bairro: UnicodeString;
    function Get_Cidade: UnicodeString;
    function Get_Estado: UnicodeString;
    function Get_Pais: UnicodeString;
    procedure Set_RowState(Value: Integer);
    procedure Set_Nome(Value: UnicodeString);
    procedure Set_RG(Value: Integer);
    procedure Set_CPF(Value: Integer);
    procedure Set_Telefone(Value: Integer);
    procedure Set_Email(Value: UnicodeString);
    procedure Set_CEP(Value: UnicodeString);
    procedure Set_Endereco(Value: UnicodeString);
    procedure Set_Numero(Value: Integer);
    procedure Set_Complemento(Value: UnicodeString);
    procedure Set_Bairro(Value: UnicodeString);
    procedure Set_Cidade(Value: UnicodeString);
    procedure Set_Estado(Value: UnicodeString);
    procedure Set_Pais(Value: UnicodeString);
  end;

{ Global Functions }

function GetDATAPACKET(Doc: IXMLDocument): IXMLDATAPACKETType;
function LoadDATAPACKET(const FileName: string): IXMLDATAPACKETType;
function NewDATAPACKET: IXMLDATAPACKETType;

const
  TargetNamespace = '';

implementation

uses Xml.xmlutil;

{ Global Functions }

function GetDATAPACKET(Doc: IXMLDocument): IXMLDATAPACKETType;
begin
  Result := Doc.GetDocBinding('DATAPACKET', TXMLDATAPACKETType, TargetNamespace) as IXMLDATAPACKETType;
end;

function LoadDATAPACKET(const FileName: string): IXMLDATAPACKETType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('DATAPACKET', TXMLDATAPACKETType, TargetNamespace) as IXMLDATAPACKETType;
end;

function NewDATAPACKET: IXMLDATAPACKETType;
begin
  Result := NewXMLDocument.GetDocBinding('DATAPACKET', TXMLDATAPACKETType, TargetNamespace) as IXMLDATAPACKETType;
end;

{ TXMLDATAPACKETType }

procedure TXMLDATAPACKETType.AfterConstruction;
begin
  RegisterChildNode('METADATA', TXMLMETADATAType);
  RegisterChildNode('ROWDATA', TXMLROWDATAType);
  inherited;
end;

function TXMLDATAPACKETType.Get_Version: UnicodeString;
begin
  Result := AttributeNodes['Version'].Text;
end;

procedure TXMLDATAPACKETType.Set_Version(Value: UnicodeString);
begin
  SetAttribute('Version', Value);
end;

function TXMLDATAPACKETType.Get_METADATA: IXMLMETADATAType;
begin
  Result := ChildNodes['METADATA'] as IXMLMETADATAType;
end;

function TXMLDATAPACKETType.Get_ROWDATA: IXMLROWDATAType;
begin
  Result := ChildNodes['ROWDATA'] as IXMLROWDATAType;
end;

{ TXMLMETADATAType }

procedure TXMLMETADATAType.AfterConstruction;
begin
  RegisterChildNode('FIELDS', TXMLFIELDSType);
  RegisterChildNode('PARAMS', TXMLPARAMSType);
  inherited;
end;

function TXMLMETADATAType.Get_FIELDS: IXMLFIELDSType;
begin
  Result := ChildNodes['FIELDS'] as IXMLFIELDSType;
end;

function TXMLMETADATAType.Get_PARAMS: IXMLPARAMSType;
begin
  Result := ChildNodes['PARAMS'] as IXMLPARAMSType;
end;

{ TXMLFIELDSType }

procedure TXMLFIELDSType.AfterConstruction;
begin
  RegisterChildNode('FIELD', TXMLFIELDType);
  ItemTag := 'FIELD';
  ItemInterface := IXMLFIELDType;
  inherited;
end;

function TXMLFIELDSType.Get_FIELD(Index: Integer): IXMLFIELDType;
begin
  Result := List[Index] as IXMLFIELDType;
end;

function TXMLFIELDSType.Add: IXMLFIELDType;
begin
  Result := AddItem(-1) as IXMLFIELDType;
end;

function TXMLFIELDSType.Insert(const Index: Integer): IXMLFIELDType;
begin
  Result := AddItem(Index) as IXMLFIELDType;
end;

{ TXMLFIELDType }

function TXMLFIELDType.Get_Attrname: UnicodeString;
begin
  Result := AttributeNodes['attrname'].Text;
end;

procedure TXMLFIELDType.Set_Attrname(Value: UnicodeString);
begin
  SetAttribute('attrname', Value);
end;

function TXMLFIELDType.Get_Fieldtype: UnicodeString;
begin
  Result := AttributeNodes['fieldtype'].Text;
end;

procedure TXMLFIELDType.Set_Fieldtype(Value: UnicodeString);
begin
  SetAttribute('fieldtype', Value);
end;

function TXMLFIELDType.Get_Required: UnicodeString;
begin
  Result := AttributeNodes['required'].Text;
end;

procedure TXMLFIELDType.Set_Required(Value: UnicodeString);
begin
  SetAttribute('required', Value);
end;

function TXMLFIELDType.Get_WIDTH: Integer;
begin
  Result := AttributeNodes['WIDTH'].NodeValue;
end;

procedure TXMLFIELDType.Set_WIDTH(Value: Integer);
begin
  SetAttribute('WIDTH', Value);
end;

{ TXMLPARAMSType }

function TXMLPARAMSType.Get_CHANGE_LOG: UnicodeString;
begin
  Result := AttributeNodes['CHANGE_LOG'].Text;
end;

procedure TXMLPARAMSType.Set_CHANGE_LOG(Value: UnicodeString);
begin
  SetAttribute('CHANGE_LOG', Value);
end;

{ TXMLROWDATAType }

procedure TXMLROWDATAType.AfterConstruction;
begin
  RegisterChildNode('ROW', TXMLROWType);
  ItemTag := 'ROW';
  ItemInterface := IXMLROWType;
  inherited;
end;

function TXMLROWDATAType.Get_ROW(Index: Integer): IXMLROWType;
begin
  Result := List[Index] as IXMLROWType;
end;

function TXMLROWDATAType.Add: IXMLROWType;
begin
  Result := AddItem(-1) as IXMLROWType;
end;

function TXMLROWDATAType.Insert(const Index: Integer): IXMLROWType;
begin
  Result := AddItem(Index) as IXMLROWType;
end;

{ TXMLROWType }

function TXMLROWType.Get_RowState: Integer;
begin
  Result := AttributeNodes['RowState'].NodeValue;
end;

procedure TXMLROWType.Set_RowState(Value: Integer);
begin
  SetAttribute('RowState', Value);
end;

function TXMLROWType.Get_Nome: UnicodeString;
begin
  Result := AttributeNodes['Nome'].Text;
end;

procedure TXMLROWType.Set_Nome(Value: UnicodeString);
begin
  SetAttribute('Nome', Value);
end;

function TXMLROWType.Get_RG: Integer;
begin
  Result := AttributeNodes['RG'].NodeValue;
end;

procedure TXMLROWType.Set_RG(Value: Integer);
begin
  SetAttribute('RG', Value);
end;

function TXMLROWType.Get_CPF: Integer;
begin
  Result := AttributeNodes['CPF'].NodeValue;
end;

procedure TXMLROWType.Set_CPF(Value: Integer);
begin
  SetAttribute('CPF', Value);
end;

function TXMLROWType.Get_Telefone: Integer;
begin
  Result := AttributeNodes['Telefone'].NodeValue;
end;

procedure TXMLROWType.Set_Telefone(Value: Integer);
begin
  SetAttribute('Telefone', Value);
end;

function TXMLROWType.Get_Email: UnicodeString;
begin
  Result := AttributeNodes['Email'].Text;
end;

procedure TXMLROWType.Set_Email(Value: UnicodeString);
begin
  SetAttribute('Email', Value);
end;

function TXMLROWType.Get_CEP: UnicodeString;
begin
  Result := AttributeNodes['CEP'].Text;
end;

procedure TXMLROWType.Set_CEP(Value: UnicodeString);
begin
  SetAttribute('CEP', Value);
end;

function TXMLROWType.Get_Endereco: UnicodeString;
begin
  Result := AttributeNodes['Endereco'].Text;
end;

procedure TXMLROWType.Set_Endereco(Value: UnicodeString);
begin
  SetAttribute('Endereco', Value);
end;

function TXMLROWType.Get_Numero: Integer;
begin
  Result := AttributeNodes['Numero'].NodeValue;
end;

procedure TXMLROWType.Set_Numero(Value: Integer);
begin
  SetAttribute('Numero', Value);
end;

function TXMLROWType.Get_Complemento: UnicodeString;
begin
  Result := AttributeNodes['Complemento'].Text;
end;

procedure TXMLROWType.Set_Complemento(Value: UnicodeString);
begin
  SetAttribute('Complemento', Value);
end;

function TXMLROWType.Get_Bairro: UnicodeString;
begin
  Result := AttributeNodes['Bairro'].Text;
end;

procedure TXMLROWType.Set_Bairro(Value: UnicodeString);
begin
  SetAttribute('Bairro', Value);
end;

function TXMLROWType.Get_Cidade: UnicodeString;
begin
  Result := AttributeNodes['Cidade'].Text;
end;

procedure TXMLROWType.Set_Cidade(Value: UnicodeString);
begin
  SetAttribute('Cidade', Value);
end;

function TXMLROWType.Get_Estado: UnicodeString;
begin
  Result := AttributeNodes['Estado'].Text;
end;

procedure TXMLROWType.Set_Estado(Value: UnicodeString);
begin
  SetAttribute('Estado', Value);
end;

function TXMLROWType.Get_Pais: UnicodeString;
begin
  Result := AttributeNodes['Pais'].Text;
end;

procedure TXMLROWType.Set_Pais(Value: UnicodeString);
begin
  SetAttribute('Pais', Value);
end;

end.