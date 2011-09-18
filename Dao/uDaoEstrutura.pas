unit uDaoEstrutura;

interface

uses uClassConexao, SqlExpr,SysUtils, SimpleDS;

type TDaoEstrutura = class
  private
    FConexao : TConexao;
    FQryAjustes : TSqlQuery;
    function ExisteCampo(prsNomeTabela, prsNomeCampo: string; prSQLConnection: TSQLConnection): Boolean;
  public
    Constructor Create(Conexao : TConexao);
    procedure EfetuarCriacaoDosCamposAntigos;
end;

implementation

{ TDaoEstrutura }

constructor TDaoEstrutura.Create(Conexao: TConexao);
begin
   FConexao := Conexao;
end;

procedure TDaoEstrutura.EfetuarCriacaoDosCamposAntigos;
var qryAjustaTabelas : TSqlQuery;
begin
   qryAjustaTabelas := TSqlQuery.Create(Nil);
   qryAjustaTabelas.SQLConnection := FConexao.Conection;
   Try
      if not ExisteCampo( 'T_Vendas', 'Cod_TipoVenda', FConexao.Conection ) then
      begin
         qryAjustaTabelas.Close;
         qryAjustaTabelas.SQL.Text := 'ALTER TABLE T_Vendas ADD Cod_TipoVenda Integer ';
         qryAjustaTabelas.ExecSQL;
      end;

      if not ExisteCampo( 'T_ItensVendas', 'Perc_Comis', FConexao.Conection ) then
      begin
         qryAjustaTabelas.Close;
         qryAjustaTabelas.SQL.Text := 'ALTER TABLE T_ItensVendas ADD Perc_Comis Float ';
         qryAjustaTabelas.ExecSQL;
      end;

      if not ExisteCampo( 'T_Ctasreceber', 'Fechado', FConexao.Conection ) then
      begin
         qryAjustaTabelas.Close;
         qryAjustaTabelas.SQL.Text := 'ALTER TABLE T_Ctasreceber ADD Fechado integer ';
         qryAjustaTabelas.ExecSQL;
      end;

      if not ExisteCampo( 'T_Ctasreceber', 'Lote', FConexao.Conection ) then
      begin
         qryAjustaTabelas.Close;
         qryAjustaTabelas.SQL.Text := 'ALTER TABLE T_Ctasreceber ADD Lote integer ';
         qryAjustaTabelas.ExecSQL;
      end;

      if not ExisteCampo( 'T_Clientes', 'Contrato', FConexao.Conection ) then
      begin
         qryAjustaTabelas.Close;
         qryAjustaTabelas.SQL.Text := 'ALTER TABLE T_Clientes ADD Contrato Varchar(10) ';
         qryAjustaTabelas.ExecSQL;
      end;
   Finally
      FreeAndNil(qryAjustaTabelas);
   End;
end;

Function TDaoEstrutura.ExisteCampo( prsNomeTabela, prsNomeCampo: string; prSQLConnection: TSQLConnection ): Boolean;
var lsdtsTemp: TSimpleDataSet;
begin
   lsdtsTemp                     := TSimpleDataSet.Create( nil );
   lsdtsTemp.Connection          := prSQLConnection;
   lsdtsTemp.DataSet.CommandText := 'SELECT * FROM '+ prsNomeTabela +
                                    ' WHERE 1=2';
   lsdtsTemp.FieldDefs.Clear;
   lsdtsTemp.FieldDefs.Update;
   ExisteCampo    := False;
   if lsdtsTemp.FieldDefList.IndexOf( prsNomeCampo ) <> -1 then
      ExisteCampo := True;
   lsdtsTemp.Close;
   FreeAndNil( lsdtsTemp );
end;


end.
