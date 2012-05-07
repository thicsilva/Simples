unit uDaoEstrutura;

interface

uses uClassConexao, SqlExpr,SysUtils, SimpleDS,Classes;

type TDaoEstrutura = class
  private
    FConexao : TConexao;
    FQryAjustes : TSqlQuery;
    {Fun��es Auxiliares}
    function ExisteCampo(prsNomeTabela, prsNomeCampo: string; prSQLConnection: TSQLConnection): Boolean;
    function ExisteTabela( prsNomeTabela: string; prSQLConnection: TSQLConnection): Boolean;
    function BuscaTabelas(fSQLConnection: TSQLConnection; SoTabelas: Boolean): TStringList;
    {Ajustes nos Dados}
    procedure EfetuarCriacaoDosCamposAntigos;
    procedure Adicionar_PagouSinal_na_Tabela_vendas;
    procedure Adicionar_ServicoPago_na_Tabela_vendas;
    procedure Adicionar_QtdeEmbalagem_na_Tabela_Produtos;
    procedure Adicionar_PrecoVendaExterna_na_Tabela_Produtos;
    procedure Adicionar_MetroLinear_na_Tabela_Produtos;
    procedure Adicionar_Cod_Caixa_na_Tabela_CtasReceber;
    procedure Adicionar_SetorId_na_Tabela_ItensVendas;
    procedure adicionar_InscricaoEstadual_Na_Tabela_Clientes;
    Procedure CriarTabela_Caixas;
    procedure CriarTabela_Sertores;
    procedure CriarTabela_Saldo_Sertores;
    procedure CriarTabela_Correcoes;
    procedure Adicionar_SetorId_na_Tabela_MovEstoque;
    procedure Adicionar_CodigoFornecedor_na_Tabela_Produtos;
    procedure Adicionar_Defult_SotorId;
    procedure Adicionar_SetorId_na_Tabela_ItensDevolucao;
    procedure CriarTabela_Animal;
    procedure CrateTabela_AventoAnimais;

  public
    Constructor Create(Conexao : TConexao);
    procedure ExecultarCorrecoes;
end;

implementation

uses uDaoCorrecao, uClassCorrecao;

{ TDaoEstrutura }

procedure TDaoEstrutura.Adicionar_CodigoFornecedor_na_Tabela_Produtos;
begin
   if not ExisteCampo( 'T_Produtos', 'CodigoFornecedor', FConexao.Conection ) then
   begin
      FQryAjustes.Close;
      FQryAjustes.SQL.Text := 'ALTER TABLE T_Produtos ADD CodigoFornecedor Varchar(10)';
      FQryAjustes.ExecSQL;
   end;
end;

procedure TDaoEstrutura.Adicionar_Cod_Caixa_na_Tabela_CtasReceber;
begin
   if not ExisteCampo( 'T_CtasReceber', 'Cod_Caixa', FConexao.Conection ) then
   begin
      FQryAjustes.Close;
      FQryAjustes.SQL.Text := 'ALTER TABLE T_CtasReceber ADD Cod_Caixa Integer';
      FQryAjustes.ExecSQL;
   end;
end;

procedure TDaoEstrutura.Adicionar_Defult_SotorId;
var loDaoCorrecao : TDaoCorrecao;
    loCorrecao    : TCorrecao;
begin
   loDaoCorrecao := TDaoCorrecao.Create(FConexao);
   loCorrecao    := TCorrecao.Create;
   loCorrecao.Correcao :='Criarndo o campo Default na tabela movestoque';
   locorrecao.DataCadastro := now;
   if not loDaoCorrecao.ExisteCorrecao(loCorrecao) then
   begin
      FQryAjustes.Close;
      FQryAjustes.SQL.Text := 'UPDATE T_MOVESTOQUE SET SETORID=1  WHERE SETORID IS NULL';
      FQryAjustes.ExecSQL;

      FQryAjustes.Close;
      FQryAjustes.SQL.Text := 'alter table T_movEstoque add constraint DF_Setor DEFAULT 1 FOR SetorID';
      FQryAjustes.ExecSQL;

      FQryAjustes.Close;
      FQryAjustes.SQL.Text := 'alter table T_Produtos add constraint DF_Saldo DEFAULT 0 FOR Saldo';
      FQryAjustes.ExecSQL;

      loDaoCorrecao.GravarCorrecao(loCorrecao);
   end;
end;

procedure TDaoEstrutura.adicionar_InscricaoEstadual_Na_Tabela_Clientes;
begin
    if not ExisteCampo( 'T_Clientes', 'InscricaoEstadual', FConexao.Conection ) then
   begin
      FQryAjustes.Close;
      FQryAjustes.SQL.Text := 'ALTER TABLE T_Clientes ADD InscricaoEstadual varchar(20)';
      FQryAjustes.ExecSQL;
   end;
end;

procedure TDaoEstrutura.Adicionar_MetroLinear_na_Tabela_Produtos;
begin
   if not ExisteCampo( 'T_Produtos', 'MetroLinear', FConexao.Conection ) then
   begin
      FQryAjustes.Close;
      FQryAjustes.SQL.Text := 'ALTER TABLE T_Produtos ADD MetroLinear bit';
      FQryAjustes.ExecSQL;
   end;
end;

procedure TDaoEstrutura.Adicionar_PagouSinal_na_Tabela_vendas;
begin
    if not ExisteCampo( 'T_Vendas', 'ServicoPago', FConexao.Conection ) then
    begin
       FQryAjustes.Close;
       FQryAjustes.SQL.Text := 'ALTER TABLE T_Vendas ADD ServicoPago bit ';
       FQryAjustes.ExecSQL;

       FQryAjustes.Close;
       FQryAjustes.SQL.Text := 'ALTER TABLE T_vendas ADD CONSTRAINT DF_ServicoPago DEFAULT 0 FOR ServicoPago';
       FQryAjustes.ExecSQL;
    end;
end;

procedure TDaoEstrutura.Adicionar_PrecoVendaExterna_na_Tabela_Produtos;
begin
    if not ExisteCampo( 'T_Produtos', 'PrecoVendaExterna', FConexao.Conection ) then
    begin
       FQryAjustes.Close;
       FQryAjustes.SQL.Text := 'ALTER TABLE T_Produtos ADD PrecoVendaExterna float';
       FQryAjustes.ExecSQL;
    end;
end;

procedure TDaoEstrutura.Adicionar_QtdeEmbalagem_na_Tabela_Produtos;
begin
   if not ExisteCampo( 'T_Produtos', 'QtdeEmbalagem', FConexao.Conection ) then
   begin
      FQryAjustes.Close;
      FQryAjustes.SQL.Text := 'ALTER TABLE T_Produtos ADD QtdeEmbalagem int ';
      FQryAjustes.ExecSQL;
   end;
end;

procedure TDaoEstrutura.Adicionar_ServicoPago_na_Tabela_vendas;
begin
    if not ExisteCampo( 'T_Vendas', 'PagouSinal', FConexao.Conection ) then
    begin
       FQryAjustes.Close;
       FQryAjustes.SQL.Text := 'ALTER TABLE T_Vendas ADD PagouSinal bit ';
       FQryAjustes.ExecSQL;

       FQryAjustes.Close;
       FQryAjustes.SQL.Text := 'ALTER TABLE T_vendas ADD CONSTRAINT DF_PagouSinal DEFAULT 0 FOR PagouSinal';
       FQryAjustes.ExecSQL;
    end;
end;


procedure TDaoEstrutura.Adicionar_SetorId_na_Tabela_ItensDevolucao;
begin
   if not ExisteCampo( 'T_ItensDevolucoes', 'SetorId', FConexao.Conection ) then
   begin
      FQryAjustes.Close;
      FQryAjustes.SQL.Text := 'ALTER TABLE T_ItensDevolucoes ADD SetorId Integer';
      FQryAjustes.ExecSQL;
   end;

end;

procedure TDaoEstrutura.Adicionar_SetorId_na_Tabela_ItensVendas;
begin
   if not ExisteCampo( 'T_ItensVendas', 'SetorId', FConexao.Conection ) then
   begin
      FQryAjustes.Close;
      FQryAjustes.SQL.Text := 'ALTER TABLE T_ItensVendas ADD SetorId Integer';
      FQryAjustes.ExecSQL;
   end;
end;

procedure TDaoEstrutura.Adicionar_SetorId_na_Tabela_MovEstoque;
begin
   if not ExisteCampo( 'T_MovEstoque', 'SetorId', FConexao.Conection ) then
   begin
      FQryAjustes.Close;
      FQryAjustes.SQL.Text := 'ALTER TABLE T_MovEstoque ADD SetorId Integer';
      FQryAjustes.ExecSQL;
   end;
end;


procedure TDaoEstrutura.CrateTabela_AventoAnimais;
begin
   if not ExisteTabela( 'EventosAnimais', FConexao.Conection ) then
   begin
      FQryAjustes.Close;
      FQryAjustes.SQL.Text := 'create Table EventosAnimais (EventoId int primary key identity (1,1),'+
                              'AnimalId int, '+
                              'Evento Varchar(100), '+
                              'Data_Cadastro DateTime, '+
                              'Data_Agendada DateTime, '+
                              'Data_Realizada DateTime, '+
                              'Operador varchar(50) ) ';
      FQryAjustes.ExecSQL;
   end;
end;

constructor TDaoEstrutura.Create(Conexao: TConexao);
begin
   FConexao    := Conexao;
   FQryAjustes := TSqlQuery.Create(Nil);
   FQryAjustes.SQLConnection := Fconexao.Conection;
end;

procedure TDaoEstrutura.CriarTabela_Animal;
begin
   if not ExisteTabela( 'ClienteAnimais', FConexao.Conection ) then
   begin
      FQryAjustes.Close;
      FQryAjustes.SQL.Text := 'Create Table ClienteAnimais '+
                              ' ( Animalid int primary key identity(1,1), '+
                              '   NomeAnimal varchar(50), '+
                              '   Especie varchar(50), '+
                              '   Raca varchar(50), '+
                              '   Cor Varchar(50), '+
                              '   Data_Nascimento DateTime,' +
                              '   Data_Aquisicao DateTime,' +
                              '   CaminhoImagem Varchar(100), '+
                              '   Operador Varchar(50), '+
                              '   Data_Cadastro DateTime, '+
                              '   ClienteId int, '+
                              '   Data_Atualizacao Datetime )';
      FQryAjustes.ExecSQL;
   end;
end;

procedure TDaoEstrutura.CriarTabela_Caixas;
begin
   if not ExisteTabela( 'Caixas', FConexao.Conection ) then
   begin
      FQryAjustes.Close;
      FQryAjustes.SQL.Text := 'CREATE TABLE Caixas([Codigo] [INT] , '+
	                           '                    [Descricao] [varchar](50), '+
                              '                    [Data_Cad] [datetime] NULL,'+
                              '                    [Data_Atu] [datetime] NULL,'+
    	                        '                    [Cod_Emp] [char](3), '+
                              '                    [Operador] [varchar](30))';
      FQryAjustes.ExecSQL;
   end;
end;


procedure TDaoEstrutura.CriarTabela_Correcoes;
begin
   if not ExisteTabela( 'Correcoes', FConexao.Conection ) then
   begin
      FQryAjustes.Close;
      FQryAjustes.SQL.Text := 'CREATE TABLE Correcoes( '+
                              '      	[Id] [int] IDENTITY(1,1) NOT NULL, '+
                              '      	[DataCadastro] [datetime], '+
                              '      	[Correcao] [varchar](100) ) ';
      FQryAjustes.ExecSQL;
   end;
end;

procedure TDaoEstrutura.CriarTabela_Saldo_Sertores;
begin
   if not ExisteTabela( 'SaldosSetor', FConexao.Conection ) then
   begin
      FQryAjustes.Close;
      FQryAjustes.SQL.Text := 'CREATE TABLE SaldosSetor( '+
                              '      	[Id] [int] IDENTITY(1,1) NOT NULL, '+
                              '      	[ProdutoId] [int], '+
                              '       [SetorId] [int], '+
                              '      	[Saldo] [float], '+
                              '      	[DataCadastro] [datetime], '+
                              '      	[DataAtualizacao] [datetime], '+
                              '      	[Operador] [varchar](50), '+
                              '      	[EmpresaId] [int] )';
      FQryAjustes.ExecSQL;
   end;
end;

procedure TDaoEstrutura.CriarTabela_Sertores;
begin
   if not ExisteTabela( 'Setores', FConexao.Conection ) then
   begin
      FQryAjustes.Close;
      FQryAjustes.SQL.Text := 'CREATE TABLE Setores([Codigo] [INT] , '+
	                            '                     [Descricao] [varchar](50), '+
                              '                     [Data_Cad] [datetime] NULL,'+
                              '                     [Data_Atu] [datetime] NULL,'+
    	                        '                     [Cod_Emp] [char](3), '+
                              '                     [Operador] [varchar](30))';
      FQryAjustes.ExecSQL;
   end;
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

procedure TDaoEstrutura.ExecultarCorrecoes;
begin
  EfetuarCriacaoDosCamposAntigos;
  Adicionar_PagouSinal_na_Tabela_vendas;
  Adicionar_ServicoPago_na_Tabela_vendas;
  Adicionar_QtdeEmbalagem_na_Tabela_Produtos;
  Adicionar_PrecoVendaExterna_na_Tabela_Produtos;
  Adicionar_Cod_Caixa_na_Tabela_CtasReceber;
  Adicionar_SetorId_na_Tabela_ItensVendas;
  Adicionar_SetorId_na_Tabela_MovEstoque;
  adicionar_InscricaoEstadual_Na_Tabela_Clientes;
  CriarTabela_Caixas;
  CriarTabela_Sertores;
  CriarTabela_Saldo_Sertores;
  Adicionar_MetroLinear_na_Tabela_Produtos;
  Adicionar_CodigoFornecedor_na_Tabela_Produtos;
  CriarTabela_Correcoes;
  Adicionar_SetorId_na_Tabela_ItensDevolucao;
  CriarTabela_Animal;
  CrateTabela_AventoAnimais;
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

function TDaoEstrutura.ExisteTabela( prsNomeTabela: string; prSQLConnection: TSQLConnection): Boolean;
var llstTabelasTMP: TStringList;
begin
   llstTabelasTMP := TStringList.Create;
   llstTabelasTMP := BuscaTabelas( prSQLConnection, True );
   ExisteTabela   := False;
   if llstTabelasTMP.IndexOf( Trim( UpperCase( prsNomeTabela ) ) ) <> -1 then
      ExisteTabela := True;

   FreeAndNil( llstTabelasTMP );
end;

Function TDaoEstrutura.BuscaTabelas(fSQLConnection: TSQLConnection; SoTabelas: Boolean): TStringList;
Var lsdtsTemp: TSimpleDataSet;
    llstTemp : TStringList;
    liCont, liCont2 : Word;
    gsTipoBD : String;
Begin

   llstTemp := TStringList.Create;
   llstTemp.Clear;
   gstipoBD := 'MSSQL';

   if UpperCase( Trim( gsTipoBD ) ) = 'MSSQL' Then
   begin
      llstTemp.Clear;
      lsdtsTemp                     := TSimpleDataSet.Create( Nil );
      lsdtsTemp.Connection          := fSQLConnection;
      lsdtsTemp.DataSet.CommandText := 'SELECT Name FROM sysobjects';
      lsdtsTemp.Open;
      while not lsdtsTemp.EOF do
      begin
         llstTemp.Add( UpperCase( lsdtsTemp.FieldByName( 'Name' ).AsString ) );

         lsdtsTemp.Next;
      end;
      lsdtsTemp.Close;
      FreeAndNil( lsdtsTemp );
   end;

   Result := llstTemp;
   If SoTabelas Then
   Begin
      If UpperCase( Trim( gsTipoBD ) ) = 'MSSQL' Then
      Begin
         liCont2 := 1;
         For liCont := 1 To llstTemp.Count Do
         Begin
            llstTemp[ liCont2 - 1 ] := llstTemp[ liCont2 - 1 ];
            liCont2 := liCont2 + 1;
         End;
      End;
      llstTemp.Sort;
      Result := llstTemp;
   End;
End;


end.
