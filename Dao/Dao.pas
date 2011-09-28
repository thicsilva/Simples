unit Dao;

interface

uses uClassConexao;

type Tdao = class
  protected
    FConexao : TConexao;
  public
    Constructor Create(Conexao : tConexao);

end;

implementation

{ Tdao }

constructor Tdao.Create(Conexao: tConexao);
begin
   FConexao := Conexao;
end;

end.
