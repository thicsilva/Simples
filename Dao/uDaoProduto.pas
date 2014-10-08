unit uDaoProduto;

interface

uses uClassConexao, SqlExpr,Classes,DBClient,SysUtils;

type TDaoProduto = class
   private
     FConexao : TConexao;
     FQryModific : TSqlQuery;
   public
     Constructor Create(Conexao : TConexao);
     function RetornarCodigoProduto( CodigoBarra: String ) : String;
     function BuscaCodigoProCodigoProprio( CodigoProprio : String ) : String;
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
