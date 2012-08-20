unit uDaoContaReceber;

interface

uses uClassConexao,uClassContaReceber,
     SqlExpr,SqltimSt, SysUtils;

type TDaoContaReceber = class
  private
    Fconexao : TConexao;
    FqryModific : TsqlQuery;

  public
    constructor Create(Conexao : TConexao);
    procedure AtualizarVencimento(prNovoVencimento : TDateTime; prsFormaPagamento : String; ContasAReceberId : Integer  );
    procedure BaixarTitulo(proContaAreceber : TContaReceber);

end;


implementation

{ TDaoContaReceber }

procedure TDaoContaReceber.AtualizarVencimento(prNovoVencimento : TDateTime;
  prsFormaPagamento: String; ContasAReceberId: Integer);
begin
   FqryModific.Close;
   FqryModific.SQL.Text := 'Update T_Ctasreceber set Data_Vencimento=:parData_vencimentom, '+
                           '                         Cod_FormaPagamento=:parCod_FormaPagamento '+
                           'where Sequencia=:parSequencia ';

   FqryModific.paramByName('parData_vencimentom').AsSqlTimeStamp := DateTimeToSqlTimeStamp(prNovoVencimento);
   FqryModific.paramByName('parCod_FormaPagamento').AsInteger    := StrToInt(prsFormaPagamento);
   FqryModific.paramByName('parSequencia').AsInteger             := ContasAReceberId;
   FqryModific.ExecSQL;
end;

procedure TDaoContaReceber.BaixarTitulo(proContaAreceber : TContaReceber);
begin
   FqryModific.Close;
   FqryModific.SQL.Text := 'update T_Ctasreceber set Status=:parStatus, '+
                           '                         Operador=:parOperador, Tipo_Baixa=:parTipo_Baixa, '+
                           '                         vlr_Recebido   =:parvlr_Recebido, '+
                           '                         Data_Pagamento =:parData_Pagamento, '+
                           'Vlr_Desconto=:parvlr_desconto, Data_Atu =:parData_Atu '+
                           'where Documento=:parDocumento ';
   FqryModific.ParamByName('parDocumento').AsString            := proContaAreceber.Documento;
   FqryModific.ParamByName('parData_Pagamento').asSqlTimeStamp := DateTimeToSqlTimeStamp(proContaAreceber.Data_Pagamento);
   FqryModific.ParamByName('parData_Atu').asSqlTimeStamp       := DateTimeToSQLTimeStamp(proContaAreceber.Data_Atu);
   FqryModific.ParamByName('parOperador').AsString             := proContaAreceber.Operador;
   FqryModific.ParamByName('parStatus').AsInteger              := proContaAreceber.Status;
   FqryModific.ParamByName('parTipo_Baixa').AsString           := proContaAreceber.Tipo_Baixa;
   FqryModific.ParamByName('parVlr_Desconto').AsFloat          := proContaAreceber.vlr_Desconto;
   FqryModific.ParamByName('parVlr_Recebido').AsFloat          := proContaAreceber.Vlr_Recebido;
   FqryModific.ExecSQL;
end;

constructor TDaoContaReceber.Create(Conexao: TConexao);
begin
   FConexao := Conexao;
   FqryModific := TSqlQuery.Create(Nil);
   FqryModific.SQLConnection := FConexao.Conection;
end;

end.
