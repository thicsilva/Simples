unit uDaoCliente;

interface

uses uClassconexao,uClassCliente,uDaoRota,
     Classes,DBClient,SysUtils, SqlExpr;

type TDaoCliente = class
   private
     FConexao : TConexao;
     FQryModific : TSqlQuery;
     function CarregarDadosCliente( Dados: TClientDataSet ) : TCliente;
   public
     Constructor Create( conexao : TConexao);
     procedure AtualizarSequencia(ClienteId,SequenciaEntrega: Integer);
     function Buscar(ClienteId : Integer) : TCliente;
     function BuscarCNPJ(CNPJ : String) : TCliente;
     function Excluir(ClienteId : Integer) : Boolean;
     function SaldoDevedor(ClienteId: Integer; Data : TDateTime) : real;
     Function BuscarTodos : TClientDataSet;
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
var Parametros : TStringList;
    Dados : TClientDataSet;
begin
   Parametros := TStringList.Create;
   Parametros.ADD(IntToStr(ClienteId));
   Try
      Dados := FConexao.BuscarDadosSQL('Select * from T_clientes where Codigo=:parcodigo',Parametros);
      Result  := CarregarDadosCliente(Dados);
   Finally
     FreeandNil(Dados);
     FreeandNil(Parametros);
   End;
end;

function TDaoCliente.BuscarCNPJ(CNPJ: String): TCliente;
var Parametros : TStringList;
    Dados : TClientDataSet;
begin
  Parametros := TStringList.Create;
  Parametros.ADD(CNPJ);
  Try
     Dados   := FConexao.BuscarDadosSQL('Select * from T_clientes where CNPJCPF=:parCNPJCPF',Parametros);
     Result  := CarregarDadosCliente(Dados);
  Finally
    FreeandNil(Dados);
    FreeandNil(Parametros);
  End;
end;

function TDaoCliente.BuscarTodos: TClientDataSet;
begin
   Result := Fconexao.BuscarDadosSQL('Select * from T_Clientes where ativo='+QuotedStr('S')+' order by Descricao ',Nil);
end;

constructor TDaoCliente.Create(conexao: TConexao);
begin
  Fconexao := conexao;
  FQryModific := TSqlQuery.Create(nil);
  FQryModific.SQLConnection := Fconexao.Conection;
end;

function TDaoCliente.Excluir(ClienteId: Integer): Boolean;
begin
   FQryModific.Close;
   FQryModific.SQLConnection := Fconexao.Conection;
   FQryModific.SQL.Text := 'Delete from T_Clientes where Codigo=:parId ';
   FQryModific.ParamByName('parId').AsInteger := ClienteId;
   FQryModific.ExecSQL;
end;

function TDaoCliente.SaldoDevedor(ClienteId: Integer; Data : TDateTime): real;
var lstParametros : TStringList;
   lcdsDados : TClientDataSet;
begin
   lstParametros := TStringList.Create;
   lstParametros.Add(IntToStr(ClienteId));
   lcdsDados := Fconexao.BuscarDadosSQL('select Sum(vlr_areceber) as Total from T_ctasreceber where Cod_Cliente=:parCod_cliente and '+
                                        'Tipo_baixa='+QuotedSTR('AB')+' and data_vencimento<'+QuotedSTR(FormatDateTime('dd/mm/yyyy',Data)),lstParametros);
   Result    := lcdsDados.FieldByName('Total').AsFloat;
   FreeAndNil(lstParametros);
   FreeAndnil(lcdsDados);
end;

function TDaoCliente.CarregarDadosCliente( Dados: TClientDataSet ) : TCliente;
var Cliente : TCliente;
    DaoRota : TDaoRota;
begin
  DaoRota := TDaoRota.Create(FConexao);
  Cliente := TCliente.Create;
  try
     Cliente.Id := Dados.FieldByName('Codigo').AsInteger;
     Cliente.CPF := Dados.FieldByName('CNPJCPF').AsString;
     Cliente.Descricao := Dados.FieldByName('Descricao').AsString;
     Cliente.Endereco.bairro := Dados.FieldByName('Bairro').AsString;
     Cliente.Endereco.cidade := Dados.FieldByName('cidade').AsString;
     Cliente.Endereco.uf := Dados.FieldByName('UF').AsString;
     Cliente.Endereco.logradouro := Dados.FieldByName('endereco').AsString;
     Cliente.Endereco.PontoReferencia := Dados.FieldByName('Pto_Referencia').AsString;
     Cliente.Telefones := Dados.FieldByName('Telefone').AsString;
     Cliente.InscricaoEstadual := Dados.FieldByName('InscricaoEstadual').AsString;
     Cliente.Sequencia := Dados.FieldByName('Sequenciaentrega').AsString;
     Cliente.Rota := DaoRota.BuscarPorId(Dados.FieldByName('Cod_rota').AsInteger);
     Result := Cliente;
  finally
     FreeAndNil(DaoRota);

  end;
end;

end.
