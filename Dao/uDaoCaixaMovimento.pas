unit uDaoCaixaMovimento;

interface

uses uClassConexao,classes,SysUtils,DbClient,uClassLancamento,uFuncoes, SqlExpr,SqlTimst;

Type TDaoCaixaMovimento = Class
  private
    FConexao : TConexao;
    FQueryModific : TSqlQuery;
  public
    Constructor Create(Conexao : TConexao);
    function RetornarUltimoTurno(ptDataAtual: TdateTime; IdCaixa : integer) : integer;
    function RetornarTurnosFechados(ptDataAtual: TdateTime; IdCaixa : integer) : TClientDataSet;
    function TemCaixaAberto(ptDataAtual: TdateTime) : Boolean;
    function RetornarCaixaDoLancamento(SeqVenda : Integer) : integer;
    function RetornarDataMovimento(CaixaId : String) : TDateTime;
    function SaldoPeriodo(DataInicical, DataFinal: TDateTime; TipoPagamento : Integer): Real;
    procedure Lancar(lacamento : TLancamento);
end;

implementation

{ TDaoCaixaMovimento }

constructor TDaoCaixaMovimento.Create(Conexao: TConexao);
begin
  FConexao :=  Conexao;
  FQueryModific := TSqlQuery.Create(Nil);
  FQueryModific.SQLConnection := FConexao.Conection;
end;

procedure TDaoCaixaMovimento.Lancar(lacamento: TLancamento);
var lsCampo, lsParametro : String;
begin
   if lacamento.SeqVenda>0 then
   begin
       lsCampo     :=',SeqVenda';
       lsParametro :=',:parSeqVenda';
   end;

   FQueryModific.Close;
   FQueryModific.SQL.Text := 'Insert into T_movCaixa ( Operador, Cod_Caixa, Valor,Historico,Data_Lancamento,D_C,Cod_tipoDespesa,Sequencia,Cod_FormaPagamento'+lsCampo+' ) Values '+
                          '                       ( :parOperador,:parCod_Caixa, :parValor,:parHistorico,:parData_Lancamento,'+
                          '                         :parD_C,:parCod_tipoDespesa,:parSeqeuencia,:parCod_FormaPagamento'+lsParametro+' ) ';

   FQueryModific.ParamByName('parCod_Caixa').AsInteger            := lacamento.Cod_Caixa;
   FQueryModific.ParamByName('parValor').asFloat                  := lacamento.Valor;
   FQueryModific.ParamByName('parHistorico').asString             := lacamento.Historico;
   FQueryModific.ParamByName('parData_Lancamento').AsSqlTimeStamp := DateTimeToSQLTimeStamp( lacamento.Data_Lancamento );
   FQueryModific.ParamByName('parD_C').AsString                   := lacamento.D_C;
   if lacamento.SeqVenda>0 then
      FQueryModific.ParamByName('parSeqVenda').asInteger             := lacamento.SeqVenda;
   FQueryModific.ParamByName('parCod_tipoDespesa').AsString       := lacamento.Cod_tipoDespesa;
   FQueryModific.ParamByName('parSeqeuencia').AsString            := lacamento.Sequencia;
   FQueryModific.ParamByName('parCod_FormaPagamento').AsInteger   := lacamento.Cod_FormaPagamento;
   FQueryModific.ParamByName('parOperador').AsString              := lacamento.Operador;
   FQueryModific.ExecSQL;
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

function TDaoCaixaMovimento.RetornarDataMovimento(CaixaId: String): TDateTime;
var Parametros : TStringList;
begin
   parametros := TStringList.Create;
   Try
     Parametros.Add(CaixaId);
     Result := FConexao.BuscarDadosSQL('select coalesce(max(Turno),0) as Turno from Caixas where Cod_Caixa=:parCod_Caixa',Parametros ).FieldByName('DataMovimento').AsDateTime;
   Finally
     FreeAndNil(parametros);
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

function TDaoCaixaMovimento.SaldoPeriodo(DataInicical, DataFinal: TDateTime; TipoPagamento : Integer): Real;
var Parametros : TStringList;
    locdsDados   : TClientDataSet;
    Creditos: real;
    Debitos: Real;
    Saldo : Real;
begin
   Parametros := TStringList.Create;
   Creditos := 0;
   Debitos := 0;
   locdsDados := TClientDataSet.Create(nil);
   locdsDados.Data := FConexao.BuscarDadosSQL('Select D_C, Sum(Valor) as Valor from T_MovCaixa '+
                                       'where Data_Lancamento>='+QuotedStr(FormatDateTime('dd/mm/yyyy',DataInicical)+' 00:00:00')+' and '+
                                       '      Data_Lancamento<='+QuotedStr(FormatDateTime('dd/mm/yyyy',DataFinal)+' 23:59:00')+' '+
                                       '      and  Estornado<>'+QuotedStr('S')  +' and '+
                                       '      Cod_FormaPagamento='+IntToStr(TipoPagamento)+' '+
                                       'group by D_C Order by D_C ',Nil).Data;
  while not locdsDados.Eof do
  begin
     if locdsDados.FieldByName('D_C').AsString='C' then
        Creditos := Creditos + locdsDados.fieldByname('Valor').asfloat
     else
        Debitos := Debitos + locdsDados.fieldByname('Valor').asfloat;
      locdsDados.Next;
  end;
  Saldo := Creditos - Debitos;
  Result := Saldo;
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
