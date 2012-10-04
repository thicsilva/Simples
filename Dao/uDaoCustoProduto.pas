unit uDaoCustoProduto;

interface

uses uClassConexao,DbClient, SqlExpr, Classes, uClassCustoProduto,Sysutils;

type TDaoCustoProduto = class
  private
    FConexao : TConexao;
    FqryModific : TSqlQuery;
    FParametros : TStringList;
  public
     constructor Create(Conexao : TConexao);
     function BuscarPorProduto(ProdutoId : Integer) : TClientDataSet;
     procedure Incluir(CustoPrtoduto : TCustoProduto);
     procedure Excluir(idCustoProduto: Integer);
     Function CustoMercadoriaVendida( ProdutoId : Integer ) : Real;
end;

implementation

{ TDaoCustoProduto }

function TDaoCustoProduto.BuscarPorProduto(ProdutoId: Integer): TClientDataSet;
begin
   FParametros.Clear;
   FParametros.Add(IntToStr(ProdutoId));
   Result := FConexao.BuscarDadosSQL('Select * from CustosProduto where ProdutoId=:parProdutoId order by Tipo',FParametros);
end;

constructor TDaoCustoProduto.create(Conexao: TConexao);
begin
   FConexao := Conexao;
   FqryModific  := TSqlQuery.Create(Nil);
   FqryModific.SQLConnection := FConexao.Conection;
   FParametros := TStringList.Create;
end;

function TDaoCustoProduto.CustoMercadoriaVendida(ProdutoId: Integer): Real;
var Dados : TClientDataSet;
    lrValor : Real;
begin
   FParametros.Clear;
   FParametros.Add(IntToStr(ProdutoId));
   Dados := FConexao.BuscarDadosSQL('Select * from CustosProduto where ProdutoId=:parProdutoId order by Tipo',FParametros);
   lrValor := 0;
   while not dados.eof do
   begin
      lrValor := lrValor + Dados.FieldByname('Valor').AsFloat;
      dados.next;
   end;
   FParametros.Clear;
   FParametros.Add(IntToStr(ProdutoId));
   lrValor := lrValor + FConexao.BuscarDadosSQL('Select Pco_Custo from T_Produtos where Codigo=:parProdutoId ',FParametros).fieldByname('Pco_Custo').AsFloat;
   Result  := lrValor;
   FreeAndNil(Dados);
end;

procedure TDaoCustoProduto.Excluir(idCustoProduto: Integer);
begin
   FQryModific.Close;
   FQryModific.SQLConnection := Fconexao.Conection;
   FQryModific.SQL.Text := 'Delete from CustosProduto where ID=:parId ';
   FQryModific.ParamByName('parId').AsInteger := idCustoProduto;
   FQryModific.ExecSQL;
end;

procedure TDaoCustoProduto.Incluir(CustoPrtoduto : TCustoProduto);
begin
   FqryModific.Close;
   FqryModific.SQL.Text := 'Insert Into CustosProduto '+
                           '          ( ProdutoId, Descricao, Valor, Tipo, Ordem ) Values ' +
                           '          ( :parProdutoId, :parDescricao, :parValor, :parTipo, :parOrdem )';

   FqryModific.paramByName('parProdutoId').AsInteger:= CustoPrtoduto.ProdutoId;
   FqryModific.paramByName('parDescricao').AsString := CustoPrtoduto.Descricao;
   FqryModific.paramByName('parValor').AsFloat      := CustoPrtoduto.Valor;
   FqryModific.paramByName('parTipo').AsInteger     := CustoPrtoduto.Tipo;
   FqryModific.paramByName('parOrdem').AsInteger    := CustoPrtoduto.Ordem;
   FqryModific.ExecSQL;
end;

end.
