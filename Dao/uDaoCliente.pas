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
     procedure Incluir(Cliente : TCliente);
     function SaldoDevedor(ClienteId: Integer; Data : TDateTime) : real;
     Function BuscarTodos : TClientDataSet;
     function BuscarTelefone(prsTelefone : String) : String;
     function BuscarNome(prsNome : String) : TClientDataSet;
end;

implementation

uses ufuncoes;

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

function TDaoCliente.BuscarNome(prsNome: String): TClientDataSet;
begin
   Result := Fconexao.BuscarDadosSQL('Select Codigo, Endereco+'+QuotedStr(' - ')+'+Telefone as Descricao, Telefone from T_Clientes where Descricao='+QuotedStr(prsNome)+' order by Descricao ',Nil);
end;

function TDaoCliente.BuscarTelefone(prsTelefone: String): String;
begin
   Result := Fconexao.BuscarDadosSQL('Select Descricao, Telefone from T_Clientes where Telefone='+QuotedStr(prsTelefone)+' order by Descricao ',Nil).FieldByName('Descricao').AsString;
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

procedure TDaoCliente.Incluir(Cliente: TCliente);
begin
   FQryModific.Close;
   FQryModific.SQLConnection := Fconexao.Conection;
   FQryModific.SQL.Text := 'insert into T_clientes ( Codigo, Descricao,Telefone,CNPJCPF,Placa, DescricaoVeiculo,Ativo,'+
                           '                         Cod_Atividade,Cod_Rota,Cod_Funcionario,Limite_Credito,Qtde_PedAberto, Status, '+
                           '                         Endereco, Bairro, Cep, Pto_referencia ) Values '+
                           '                       ( :parCodigo, :parDescricao,:parTelefone,:parCNPJCPF,:parPlaca, :parDescricaoVeiculo,:parAtivo, '+
                           '                         :parCod_Atividade, :parCod_Rota, :parCod_Funcionario, :parLimite_Credito, :parQtde_PedAberto, :parStatus, '+
                           '                         :parEndereco, :parBairro, :parCep, :parPto_referencia  ) ';

   FQryModific.ParamByName('parCodigo').AsString     := Sequencia('Codigo',False,'T_Clientes',fConexao.Conection,'',False,5);
   FQryModific.ParamByName('parDescricao').AsString  := Cliente.Descricao;
   FQryModific.ParamByName('parTelefone').AsString   := Cliente.Telefones;
   FQryModific.ParamByName('parCNPJCPF').AsString    := Cliente.CPF;
   FQryModific.ParamByName('parAtivo').AsString      := 'S';
   FQryModific.ParamByName('parCod_Atividade').AsInteger   := Cliente.AtividadeId;
   FQryModific.ParamByName('parCod_Rota').AsInteger        := Cliente.RotaId;
   FQryModific.ParamByName('parCod_Funcionario').AsInteger := Cliente.FuncionarioId;
   FQryModific.ParamByName('parLimite_Credito').AsFloat    := 500;
   FQryModific.ParamByName('parQtde_PedAberto').AsFloat    := 999;
   FQryModific.ParamByName('parPlaca').AsString            := Cliente.Placa;
   FQryModific.ParamByName('parStatus').AsInteger          := 0;
   FQryModific.ParamByName('parDescricaoVeiculo').AsString := Cliente.DescricaoVeiculo;
   FQryModific.ParamByName('parEndereco').AsString         := Cliente.Endereco.logradouro;
   FQryModific.ParamByName('parCep').AsString              := Cliente.Endereco.cep;
   FQryModific.ParamByName('parBairro').AsString           := Cliente.Endereco.bairro;
   FQryModific.ParamByName('parPto_Referencia').AsString   := Cliente.Endereco.PontoReferencia;

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
