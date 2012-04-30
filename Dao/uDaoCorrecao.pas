unit uDaoCorrecao;

interface

uses uClassConexao, uClassCorrecao, Classes,SysUtils, SqlExpr,SqlTimSt;

type TDaoCorrecao = class
   private
     FConexao : TConexao;
     FQuery : TSqlQuery;
   public
     Constructor Create(Conexao : TConexao);
     function ExisteCorrecao(loCorrecao : TCorrecao) : Boolean;
     procedure GravarCorrecao(loCorrecao : TCorrecao);
end;

implementation

{ TDaoCorrecao }

constructor TDaoCorrecao.Create(Conexao: TConexao);
begin
   FConexao := Conexao;
   FQuery   := TSqlQuery.Create(Nil);
   FQuery.SQLConnection := FConexao.Conection;
end;

function TDaoCorrecao.ExisteCorrecao(loCorrecao: TCorrecao) : Boolean;
var Parametros : TStringList;
begin
   Parametros := TStringList.Create;
   Parametros.add(loCorrecao.Correcao);
   Result := (not FConexao.BuscarDadosSQL('Select * from Correcoes where Correcao=:parCorrecao',Parametros).IsEmpty);
end;

procedure TDaoCorrecao.GravarCorrecao(loCorrecao: TCorrecao);
begin
   FQuery.SQL.Text :='Insert into Correcoes (Correcao,DataCadastro) Values (:parCorrecao,:parDataCadastro)';
   Fquery.ParamByName('parCorrecao').AsString := loCorrecao.Correcao;
   Fquery.ParamByName('parDataCadastro').AsSQLTimeStamp := DateTimeToSqlTimeStamp(loCorrecao.DataCadastro);
   FQuery.ExecSQL;
end;

end.
