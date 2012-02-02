unit uDaoFuncionario;


interface

uses DBClient,
     uClassConexao,uClassFuncionario;

type TDaoFuncionario = class
   private
     FConexao : TConexao;
   public
     Constructor Create(Conexao : TConexao);
     function Buscar( idFuncionario : Integer ) : TFuncionario;

end;
implementation

{ TDaoFuncionario }

function TDaoFuncionario.Buscar(idFuncionario: Integer): TFuncionario;
var Dados : TclientDataSet;
    Funcionario : TFuncionario;
begin
    Dados := FConexao.BuscarDadosSQL('Select * from T_Funcionarios',Nil);
    Funcionario := TFuncionario.Create;
    Funcionario.IdFuncionario := Dados.FieldByName('Codigo').AsInteger;
    Funcionario.Descricao     := Dados.FieldByName('Descricao').AsString;
    Result := Funcionario;
end;

constructor TDaoFuncionario.Create(Conexao: TConexao);
begin
  Fconexao := Conexao;
end;

end.
