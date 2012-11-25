unit uDaoContaAPagar;

interface

uses uClassConexao,DbClient,SysUtils;

type TDaoContaAPagar = class
   private
     FConexao : TConexao;
   public
     Constructor Create(Conexao : TConexao);
     function TotalEmAberto(Data: TDateTime): Real;


end;

implementation

{ TDaoContaAPagar }

constructor TDaoContaAPagar.Create(Conexao: TConexao);
begin
   FConexao := Conexao;
end;

function TDaoContaAPagar.TotalEmAberto(Data: TDateTime): Real;
var lcdsDados : TClientDataSet;
begin
   lcdsDados := Fconexao.BuscarDadosSQL('select Sum(Valor) as Total from T_CtasPagar where '+
                                        'Status=0 and data_vencimento<'+QuotedSTR(FormatDateTime('DD/MM/yyyy',Data)),Nil);
   Result    := lcdsDados.FieldByName('Total').AsFloat;
end;


end.
