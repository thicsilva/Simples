unit uDaoCaixaMovimento;

interface

uses uClassConexao,classes,SysUtils,DbClient;

Type TDaoCaixaMovimento = Class
  private
    FConexao : TConexao;
  public
    Constructor Create(Conexao : TConexao);
    function RetornarUltimoTurno(ptDataAtual: TdateTime; IdCaixa : integer) : integer;
    function RetornarTurnosFechados(ptDataAtual: TdateTime; IdCaixa : integer) : TClientDataSet;
    function TemCaixaAberto(ptDataAtual: TdateTime) : Boolean;
    function RetornarCaixaDoLancamento(SeqVenda : Integer) : integer;
end;

implementation

{ TDaoCaixaMovimento }

constructor TDaoCaixaMovimento.Create(Conexao: TConexao);
begin
   FConexao :=  Conexao;
end;

function TDaoCaixaMovimento.RetornarCaixaDoLancamento(SeqVenda: Integer): integer;
var Parametros : TStringList;
    Dados : TClientDataSet;
begin
   parametros := TStringList.Create;
   Try
     Parametros.Add(IntToStr(SeqVenda));
     Dados   := FConexao.BuscarDadosSQL('select Cod_Caixa from T_MovCaixa where SeqVenda=:parSeqVenda',Parametros );
     Result  := StrToIntDef(Trim(Dados.FieldByname('Cod_Caixa').AsString),1);
   Finally
     FreeAndNil(parametros);
     FreeAndNil(Dados);
   End;
end;

function TDaoCaixaMovimento.RetornarTurnosFechados(ptDataAtual: TdateTime; IdCaixa: integer): TClientDataSet;
var Parametros : TStringList;
begin
   parametros := TStringList.Create;
   Try
     Parametros.Add(FormatDatetime('dd/mm/yyyy',ptDataAtual));
     Parametros.Add(IntToStr(IdCaixa));
     Result  := FConexao.BuscarDadosSQL('select coalesce(Turno,0) as Turno from T_MovCaixa where Data_Lancamento=:paData_Lancamento and Cod_Caixa=:parCod_Caixa Group by Turno',Parametros );
   Finally
     FreeAndNil(parametros);
   End;
end;

function TDaoCaixaMovimento.RetornarUltimoTurno(ptDataAtual: TdateTime;IdCaixa: integer): integer;
var Parametros : TStringList;
    Dados : TClientDataSet;
begin
   parametros := TStringList.Create;
   Try
     Parametros.Add(FormatDatetime('dd/mm/yyyy',ptDataAtual));
     Parametros.Add(IntToStr(IdCaixa));
     Dados := FConexao.BuscarDadosSQL('select coalesce(max(Turno),0) as Turno from T_MovCaixa where Data_Lancamento=:paData_Lancamento and Cod_Caixa=:parCod_Caixa',Parametros );
     Result := Dados.FieldByname('Turno').Asinteger;
   Finally
     FreeAndNil(parametros);
     FreeAndNil(Dados);
   End;
end;

function TDaoCaixaMovimento.TemCaixaAberto(ptDataAtual: TdateTime): Boolean;
var Parametros : TStringList;
begin
   parametros := TStringList.Create;
   Try
     Parametros.Add(FormatDatetime('dd/mm/yyyy',ptDataAtual));
     Result  := (not FConexao.BuscarDadosSQL('select coalesce(Turno,0) as Turno from T_MovCaixa where Data_Lancamento=:paData_Lancamento and Turno is Null ',Parametros ).IsEmpty);
   Finally
     FreeAndNil(parametros);
   End;
end;

end.
