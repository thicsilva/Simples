unit uClassCaixa;

interface

uses uClassConexao, Classes,Sysutils;

type TdaoCaixa = Class
 private
   FConexao : TConexao;
 public
   Constructor Create(Conexao : TConexao);
   function RetornarNomeCaixa(CaixaId : Integer) : String;
End;
implementation

{ TdaoCaixa }

constructor TdaoCaixa.Create(Conexao: TConexao);
begin
   FConexao := Conexao;
end;

function TdaoCaixa.RetornarNomeCaixa(CaixaId: Integer): String;
var lstParametro : TStringList;
begin
   lstParametro := TStringList.Create;
   lstParametro.Add(IntToStr(CaixaId));
   Result := FConexao.BuscarDadosSQL('Select Descricao From Caixas where Codigo=:parCodigo',lstParametro).FieldByName('Descricao').AsString;
end;

end.
