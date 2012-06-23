unit uDaoCliente;

interface

uses uClassconexao,uClassCliente,
     Classes,DBClient,SysUtils, SqlExpr;

type TDaoCliente = class
   private
     FConexao : TConexao;
     FQryModific : TSqlQuery;
   public
     Constructor Create( conexao : TConexao);
     function Buscar(idCliente : Integer) : TCliente;
     function Excluir(idCliente : Integer) : Boolean;
end;


implementation

{ TDaoCliente }

function TDaoCliente.Buscar(idCliente: Integer): TCliente;
var Cliente : TCliente;
    Parametros : TStringList;
    Dados : TClientDataSet;
begin
  Cliente := TCliente.Create;
  Parametros := TStringList.Create;
  Parametros.ADD(IntToStr(idCliente));
  Try
     Dados := FConexao.BuscarDadosSQL('Select * from T_clientes where Codigo=:parcodigo',Parametros);
     Cliente.Id         := Dados.FieldByName('Codigo').AsInteger;
     Cliente.CPF        := Dados.FieldByName('CNPJCPF').AsString;
     Cliente.Descricao  := Dados.FieldByName('Descricao').AsString;
     Cliente.Endereco.bairro := Dados.FieldByName('Bairro').AsString;
     Cliente.Endereco.cidade := Dados.FieldByName('cidade').AsString;
     Cliente.Endereco.uf      := Dados.FieldByName('UF').AsString;
     Cliente.Endereco.logradouro := Dados.FieldByName('endereco').AsString;
     Cliente.Endereco.PontoReferencia := Dados.FieldByName('Pto_Referencia').AsString;
     Cliente.Telefones := Dados.FieldByName('Telefone').AsString;
     Cliente.InscricaoEstadual := Dados.FieldByName('InscricaoEstadual').AsString;
     Result := Cliente;
  Finally
    FreeandNil(Dados);
    FreeandNil(Parametros);
  End;

end;

constructor TDaoCliente.Create(conexao: TConexao);
begin
  Fconexao := conexao;
  FQryModific := TSqlQuery.Create(nil);
end;

function TDaoCliente.Excluir(idCliente: Integer): Boolean;
begin
   FQryModific.Close;
   FQryModific.SQLConnection := Fconexao.Conection;
   FQryModific.SQL.Text := 'Delete from T_Clientes where Codigo=:parId ';
   FQryModific.ParamByName('parId').AsInteger := idCliente;
   FQryModific.ExecSQL;
end;

end.
