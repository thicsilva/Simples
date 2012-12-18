unit uDaoContaReceber;

interface

uses uClassConexao,uClassContaReceber,ufuncoes,
     SqlExpr,SqltimSt, SysUtils, DBClient,Classes;

type TDaoContaReceber = class
  private
    Fconexao : TConexao;
    FqryModific : TsqlQuery;

  public
    constructor Create(Conexao : TConexao);
    procedure AtualizarVencimento(prNovoVencimento : TDateTime; prsFormaPagamento : String; ContasAReceberId : Integer; SeqvendaId : Integer = 0  );
    procedure BaixarTitulo(proContaAreceber : TContaReceber);
    procedure AtualizarValorDosTitulos(VendaId : Integer; ValorDiminuir : Real);
    Function TotalEmAberto(Data : TDateTime) : Real;
    Function BuscarVendaID(VendaId : Integer) : TClientDataSet;
    function NovaSequenciaTitulo(SeqVendaID : Integer) : Integer;

end;


implementation

{ TDaoContaReceber }

procedure TDaoContaReceber.AtualizarValorDosTitulos(VendaId: Integer; ValorDiminuir: Real);
var Dados : TclientDataSet;
    Parametros : TStringList;
    lrvlrDiminuir : Real;
    lrAjuste : Real;
begin
   Parametros := TStringList.Create;
   Parametros.Add(IntToStr(VendaId));
   Dados := Fconexao.BuscarDadosSQL('Select vlr_areceber,Sequencia from T_ctasreceber where seqvenda=:parSeqVenda', Parametros );
   lrvlrDiminuir := Arredondar((ValorDiminuir/Dados.RecordCount),2);
   lrAjuste      := ValorDiminuir - (lrvlrDiminuir*Dados.RecordCount);
   while not Dados.eof do
   begin
      FqryModific.Close;
      FqryModific.SQL.Text := 'Update T_Ctasreceber set Vlr_Areceber= ( Vlr_Areceber - :parVlr_Areceber )'+
                              'where Sequencia=:parSequencia ';
      FqryModific.paramByName('parVlr_Areceber').AsFloat   := lrAjuste+lrvlrDiminuir;
      FqryModific.paramByName('parSequencia').AsInteger    := Dados.FieldByname('Sequencia').AsInteger;
      FqryModific.ExecSQL;
      lrAjuste := 0;
      Dados.next;
   end;
end;

procedure TDaoContaReceber.AtualizarVencimento(prNovoVencimento : TDateTime; prsFormaPagamento : String;
 ContasAReceberId : Integer; SeqvendaId : Integer = 0  );
var lswhere : String;
begin
   lswhere := 'where Sequencia=:parSequencia';
   if SeqvendaId<>0 then
      lswhere := 'where SeqVenda=:parSequencia';


   FqryModific.Close;
   FqryModific.SQL.Text := 'Update T_Ctasreceber set Data_Vencimento=:parData_vencimentom, '+
                           '                         Cod_FormaPagamento=:parCod_FormaPagamento'+' '+lswhere;

   FqryModific.paramByName('parData_vencimentom').AsSqlTimeStamp := DateTimeToSqlTimeStamp(prNovoVencimento);
   FqryModific.paramByName('parCod_FormaPagamento').AsInteger    := StrToInt(prsFormaPagamento);
   FqryModific.paramByName('parSequencia').AsInteger             := ContasAReceberId;
   if SeqvendaId<>0 then
      FqryModific.paramByName('parSequencia').AsInteger          := SeqvendaId;
   FqryModific.ExecSQL;
end;

procedure TDaoContaReceber.BaixarTitulo(proContaAreceber : TContaReceber);
begin
   FqryModific.Close;
   FqryModific.SQL.Text := 'update T_Ctasreceber set Status=:parStatus, '+
                           '                         Operador=:parOperador, Tipo_Baixa=:parTipo_Baixa, '+
                           '                         vlr_Recebido   =:parvlr_Recebido, '+
                           '                         Data_Pagamento =:parData_Pagamento, '+
                           '                         Vlr_Areceber =:parVlr_Areceber, '+
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
   FqryModific.ParamByName('parVlr_Areceber').AsFloat          := proContaAreceber.ValorAReceber;
   FqryModific.ExecSQL;
end;

function TDaoContaReceber.BuscarVendaID(VendaId: Integer): TClientDataSet;
Var Parametros : TStringList;
begin
   Parametros := TStringList.Create;
   Parametros.Add(IntToStr(VendaId));
   Result := Fconexao.BuscarDadosSQL('select * from T_ctasreceber where SeqVenda=:parSeqvenda',Parametros);
   FreeAndNil(Parametros);
end;

constructor TDaoContaReceber.Create(Conexao: TConexao);
begin
   FConexao := Conexao;
   FqryModific := TSqlQuery.Create(Nil);
   FqryModific.SQLConnection := FConexao.Conection;
end;

function TDaoContaReceber.NovaSequenciaTitulo(SeqVendaID: Integer): Integer;
begin
   Result := Fconexao.BuscarDadosSQL('select Count(SeqVenda) as Total from T_ctasreceber where SeqVenda='+
                                       IntTostr(SeqVendaID),Nil).FieldByname('Total').AsInteger+1
end;

function TDaoContaReceber.TotalEmAberto(Data: TDateTime): Real;
var lcdsDados : TClientDataSet;
begin
   lcdsDados := Fconexao.BuscarDadosSQL('select Sum(vlr_areceber) as Total from T_ctasreceber where '+
                                        'Tipo_baixa='+QuotedSTR('AB')+' and data_vencimento<'+QuotedSTR(FormatDateTime('DD/MM/yyyy',Data)),Nil);
   Result    := lcdsDados.FieldByName('Total').AsFloat;
end;

end.
