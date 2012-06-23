unit uDaoEmpresa;

interface

uses uClassConexao,uClassempresa, DBClient;

type TDaoEmpresa = class
  private
    FConexao : TConexao;
  public
    constructor Create(Conexao : TConexao);
    function carregar : TEmpresa;

end;


implementation

{ TDaoEmpresa }

function TDaoEmpresa.carregar: TEmpresa;
var Empresa : TEmpresa;
    Dados : TClientDataSet;
begin
   Dados := FConexao.BuscarDadosSQL('Select * from Empresa ',Nil);
   Empresa := TEmpresa.Create;

   Empresa.CNPJ                :=  Dados.FieldByName('cnpjcpf').AsString;
   Empresa.Nome_Fantasia       :=  Dados.FieldByName('Nome_Fantasia').AsString;
   Empresa.Razao_Social        :=  Dados.FieldByName('Razao_Social').AsString;
   Empresa.Endereco.logradouro :=  Dados.FieldByName('Endereco').AsString;
   Empresa.Endereco.Bairro     :=  Dados.FieldByName('Bairro').AsString;
   Empresa.Endereco.Cidade     :=  Dados.FieldByName('Cidade').AsString;
   Empresa.Telefone            :=  Dados.FieldByName('Telefone').AsString;
   Empresa.Endereco.Cep        :=  Dados.FieldByName('Cep').AsString;
   Empresa.Endereco.Uf         :=  Dados.FieldByName('UF').AsString;
   Empresa.Email               :=  Dados.FieldByName('Email').AsString;
   Empresa.Fax                 :=  Dados.FieldByName('Fax').AsString;
   Result := Empresa;
end;

constructor TDaoEmpresa.Create(Conexao: TConexao);
begin
   FConexao := Conexao;
end;

end.
