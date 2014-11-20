unit uDaoProduto;

interface

uses uClassConexao, SqlExpr,Classes,DBClient,SysUtils,uClassProduto;


type TDaoProduto = class
   private
     FConexao : TConexao;
     FQryModific : TSqlQuery;
   public
     Constructor Create(Conexao : TConexao);
     function RetornarCodigoProduto( CodigoBarra: String ) : String;
     function BuscaCodigoProCodigoProprio( CodigoProprio : String ) : String;
     function Buscar(ProdutoId : Integer) : TProduto;
end;

implementation


{ TDaoProduto }

function TDaoProduto.BuscaCodigoProCodigoProprio(CodigoProprio: String): String;
var lstParametros : TStringList;
   lcdsDados : TClientDataSet;
begin
   lstParametros := TStringList.Create;
   lstParametros.Add(CodigoProprio);
   lcdsDados := Fconexao.BuscarDadosSQL('select Codigo from T_Produtos where CodigoFornecedor=:parCodigoProprio',lstParametros);
   if lcdsDados.IsEmpty then
      Result := '0'
   else
      Result := lcdsDados.FieldByName('Codigo').AsString;
   FreeAndNil(lstParametros);
   FreeAndnil(lcdsDados);
end;

function TDaoProduto.Buscar(ProdutoId: Integer): TProduto;
var lstParametros : TStringList;
    lcdsDados : TClientDataSet;
    produto : TProduto;
begin
   lstParametros := TStringList.Create;
   lstParametros.Add(IntToStr(ProdutoId));
   lcdsDados := Fconexao.BuscarDadosSQL('select Descricao, Codigo, Pco_Venda from T_Produtos where Codigo=:Codigo',lstParametros);
   produto := TProduto.Create;
   produto.ProdutoId   := lcdsDados.FieldByName('Codigo').AsInteger;
   produto.PrecoTabela := lcdsDados.FieldByName('Pco_Venda').AsFloat;
   produto.Descricao   := lcdsDados.FieldByName('Descricao').AsString;
   FreeAndNil(lstParametros);
   FreeAndNil(lcdsDados);
   Result := produto;
end;

constructor TDaoProduto.Create(Conexao: TConexao);
begin
  Fconexao := conexao;
  FQryModific := TSqlQuery.Create(nil);
  FQryModific.SQLConnection := Fconexao.Conection;
end;

function TDaoProduto.RetornarCodigoProduto( CodigoBarra : String ) : String;
var lstParametros : TStringList;
   lcdsDados : TClientDataSet;
begin
   lstParametros := TStringList.Create;
   lstParametros.Add(CodigoBarra);
   lcdsDados := Fconexao.BuscarDadosSQL('select Codigo from T_Produtos where Cod_Barras=:parCod_Barras',lstParametros);
   if lcdsDados.IsEmpty then
      Result := '0'
   else
      Result := lcdsDados.FieldByName('Codigo').AsString;
   FreeAndNil(lstParametros);
   FreeAndnil(lcdsDados);
end;

end.
