unit uDaoVenda;

interface

uses DBClient,Classes,uClassConexao,uClassVenda,uDaoCliente,
     uDaoFuncionario,uDaoFormaPagamento,
     Dao, SqlExpr;

type TDaoVenda = class
   private
     FConexao : TConexao;
     FqryModific : TSqlQuery;
   public
     constructor Create(conexao : TConexao );
     Function RetonarVendasSemSinalPago : TclientDataSet;
     Procedure MarcarComoPagouSinal(IDVenda : Integer);
     Procedure MarcarComoServicoPago(IDVenda : Integer);
     Function  CarregarVenda(DadosVendas : TClientDataSet) : TVenda;
end;


implementation

{ TDaoVenda }

function TDaoVenda.CarregarVenda(DadosVendas: TClientDataSet): TVenda;
var DaoFuncionario : TDaoFuncionario;
    DaoFormaPagamento : TDaoFormaPagamento;
    DaoCliente : TDaoCliente;
    Venda : TVenda;
begin
    DaoFuncionario    := TDaoFuncionario.Create(FConexao);
    DaoFormaPagamento := TDaoFormaPagamento.Create(FConexao);
    DaoCliente        := TDaoCliente.Create(FConexao);

    Venda := TVenda.Create(FConexao);
    Venda.FormaPagamento := DaoFormaPagamento.Buscar(DadosVendas.fieldByname('Cod_FormaPagamento').AsInteger);
    Venda.Funcionario := DaoFuncionario.Buscar(DadosVendas.fieldByname('Cod_Funcionario').AsInteger);
    Venda.Cliente := DaoCliente.Buscar(DadosVendas.fieldByname('Cod_Cliente').AsInteger);
    Result := Venda;
end;

constructor TDaoVenda.Create(conexao: TConexao);
begin
  FConexao := conexao;
  FqryModific  := TSqlQuery.Create(Nil);
  FqryModific.SQLConnection := FConexao.Conection;
end;

procedure TDaoVenda.MarcarComoPagouSinal(IDVenda: Integer);
begin
  FqryModific.Close;
  FqryModific.SQL.Text :='UpDate T_vendas set PagouSinal=1 where SeqVenda=:parSeqvenda';
  FqryModific.ParamByName('parSeqVenda').AsInteger := IDVenda;
  FqryModific.ExecSql;
end;

procedure TDaoVenda.MarcarComoServicoPago(IDVenda: Integer);
begin
  FqryModific.Close;
  FqryModific.SQL.Text :='UpDate T_vendas set ServicoPago=1 where SeqVenda=:parSeqvenda';
  FqryModific.ParamByName('parSeqVenda').AsInteger := IDVenda;
  FqryModific.ExecSql;
end;

function TDaoVenda.RetonarVendasSemSinalPago: TclientDataSet;
var Parametros : TStringList;
begin
   Parametros := TStringList.Create;
   Parametros.Add('1');
   Result := FConexao.BuscarDadosSQL('select seqvenda,Controle,Nome_Cliente,vlr_total from T_vendas where PagouSinal<>:parPagouSinal',Parametros);
end;

end.
