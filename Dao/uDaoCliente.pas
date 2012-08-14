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
     function Buscar(ClienteId : Integer) : TCliente;
     function Excluir(ClienteId : Integer) : Boolean;
     procedure AtualizarSequencia(ClienteId,SequenciaEntrega: Integer);
end;


implementation

{ TDaoCliente }

procedure TDaoCliente.AtualizarSequencia(ClienteId,SequenciaEntrega: Integer);
begin
   FQryModific.Close;
   FQryModific.SQLConnection := Fconexao.Conection;
   FQryModific.SQL.Text := 'Update T_Clientes set Sequenciaentrega=:parSequenciaEntrega where Codigo=:parId ';
   FQryModific.ParamByName('parId').AsInteger := ClienteId;
   FQryModific.ParamByName('parSequenciaEntrega').AsInteger := SequenciaEntrega;
   FQryModific.ExecSQL;
end;

function TDaoCliente.Buscar(ClienteId: Integer): TCliente;
var Cliente : TCliente;
    Parametros : TStringList;
    Dados : TClientDataSet;
begin
  Cliente := TCliente.Create;
  Parametros := TStringList.Create;
  Parametros.ADD(IntToStr(ClienteId));
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
     Cliente.Sequencia := Dados.FieldByName('Sequenciaentrega').AsString;

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

function TDaoCliente.Excluir(ClienteId: Integer): Boolean;
begin
   FQryModific.Close;
   FQryModific.SQLConnection := Fconexao.Conection;
   FQryModific.SQL.Text := 'Delete from T_Clientes where Codigo=:parId ';
   FQryModific.ParamByName('parId').AsInteger := ClienteId;
   FQryModific.ExecSQL;
end;

end.
