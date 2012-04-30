unit uDaoSaldo;

interface

uses uClassConexao,uClassSaldo,Classes, SqlExpr,SysUtils, DBClient;

type TDaoSaldo = class
  private
    FConexao : TConexao;
    FQuery : TSqlQuery;
  public
    constructor Create(prConexao : TConexao);
    procedure AtualizarSaldo(Saldo : TSaldo);
    function ExisteSaldo(Saldo : TSaldo) : boolean;
    function RetornaSaldo(CodProduto,CodSetor : Integer ) : Integer;
    function CriarNoSetor(Saldo : TSaldo) : boolean;
end;

implementation

{ TDaoSaldo }

procedure TDaoSaldo.AtualizarSaldo(Saldo: TSaldo);
begin
   FQuery.Close;
   FQuery.SQLConnection := FConexao.Conection;
   if not ExisteSaldo(Saldo) then
      FQuery.SQL.Text :='Insert into SaldosSetor (ProdutoId,SetorId,saldo) Values (:parProdutoId,:parSetorId,:parSaldo)'
   else
      FQuery.SQL.Text :='Update SaldosSetor set saldo = saldo + :parSaldo where ProdutoId=:parProdutoId and SetorId=:parSetorId';
   Fquery.ParamByName('parProdutoId').AsInteger := Saldo.ProdutoId;
   Fquery.ParamByName('parSetorId').AsInteger := Saldo.SetorId;
   Fquery.ParamByName('parSaldo').AsInteger := Saldo.Diferenca;
   FQuery.ExecSQL;
end;

constructor TDaoSaldo.Create(prConexao: TConexao);
begin
   FConexao := prConexao;
   FQuery   := TSqlQuery.Create(Nil);
   FQuery.SQLConnection := FConexao.Conection;
end;

function TDaoSaldo.CriarNoSetor(Saldo: TSaldo): boolean;
begin
   FQuery.Close;
   FQuery.SQLConnection := FConexao.Conection;
   FQuery.SQL.Text :='Insert into SaldosSetor (ProdutoId,SetorId,saldo) Values (:parProdutoId,:parSetorId,:parSaldo)';
   Fquery.ParamByName('parProdutoId').AsInteger := Saldo.ProdutoId;
   Fquery.ParamByName('parSetorId').AsInteger   := Saldo.SetorId;
   Fquery.ParamByName('parSaldo').AsInteger     := 0;
   FQuery.ExecSQL;
end;

function TDaoSaldo.ExisteSaldo(Saldo: TSaldo): boolean;
var Parametros : TStringList;
begin
   Parametros := TStringList.Create;
   Parametros.add(IntToStr(Saldo.ProdutoId));
   Parametros.add(IntToStr(Saldo.SetorId));
   Result := (not FConexao.BuscarDadosSQL('Select * from SaldosSetor where ProdutoID=:parProdutoId and SetorId=:parSetor',Parametros).IsEmpty);
end;

function TDaoSaldo.RetornaSaldo(CodProduto, CodSetor: Integer): Integer;
var Parametros : TStringList;
    cdsDados : TClientDataSet;
begin
   Parametros := TStringList.Create;
   Parametros.add(IntToStr(CodProduto));
   if CodSetor>1 then
   begin
       Parametros.add(IntToStr(CodSetor));
      cdsDados := FConexao.BuscarDadosSQL('Select Saldo from SaldosSetor where ProdutoID=:parProdutoId and SetorId=:parSetor',Parametros);
   end
   else
      cdsDados := FConexao.BuscarDadosSQL('Select Saldo from T_Produtos where Codigo=:parProdutoId',Parametros);
   Result := cdsDados.fieldByname('Saldo').AsInteger;
end;

end.
