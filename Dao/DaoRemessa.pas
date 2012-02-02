unit DaoRemessa;

interface

uses Remessa,SqltimSt, SysUtils, DbClient,uClassConexao, Classes;

type TDaoRemessa = class
  private
    FConexao : TConexao;
  public
    Constructor Create(Conexao : TConexao);
    procedure Incluir(remessa : TRemessa; itensRemessa : TClientDataSet);
    procedure Excluir(remessa : TRemessa);
    procedure Alterar(remessa : TRemessa);
    procedure SomarItemNaRemessaVenda( SupervisorId : Integer; ProdutoId : Integer; Quantidade : Integer; operador : string);
    procedure SomarItemNaRemessaDevolucao( SupervisorId : Integer; ProdutoId : Integer; Quantidade : Integer; operador : string);
    function BuscarRemessaAberta( SupervisorId : Integer ) : TRemessa;
    function TemRemessaAberta( SupervisorId : Integer  ) : Boolean;
    function RetornarRemessas( StatusRemessa : String ) : TClientDataSet;
    function FecharRemessas(remessaId: integer; operador : string ): Boolean;
    procedure InserirItens(itensRemessa: TClientDataSet; remessa:TRemessa);
    procedure AtualizarItens(itensRemessa: TClientDataSet; remessaID : Integer; operador : string );
    function ExisteItemRemessa(ProdutoID,RemessaId : Integer) : Boolean;
    function Buscar(RemessaId : integer) : TRemessa;
    function BuscarItens(remessaId : Integer) : TclientDataSet;
end;

implementation

uses
  SqlExpr;

{ TDaoRemessa }

procedure TDaoRemessa.Alterar(remessa: TRemessa);
begin

end;

procedure TDaoRemessa.AtualizarItens(itensRemessa: TClientDataSet; remessaID : Integer; operador : string );
var ModificaDados : TSqlQuery;
begin
   ModificaDados := TSqlQuery.Create(Nil);
   itensRemessa.First;
   while not itensRemessa.Eof do
   begin
       ModificaDados.Close;
       ModificaDados.SQLConnection :=FConexao.Conection;
       if ExisteItemRemessa( itensRemessa.fieldByname('Codigo').AsInteger, RemessaId) then
       begin
          ModificaDados.SQL.Text := 'UPDATE ItensRemessa Set QuantidadeEnviada=QuantidadeEnviada + :parQuantidadeEnviada, '+
                                    '                        Operador=:parOperador, DataAtualizacao=:parDataAtualizacao '+
                                    'WHERE RemessaID=:parRemessaID and ProdutoID=:parProdutoID ';
       end
       else
       begin
          ModificaDados.SQL.Text := 'Insert Into ItensRemessa (ProdutoId, RemessaId, QuantidadeEnviada, QuantidadeDevolvida, QuantidadeVendida, Operador, DataAtualizacao ) values '+
                                    '                         (:parProdutoId, :parRemessaId, :parQuantidadeEnviada, :parQuantidadeDevolvida, :parQuantidadeVendida, :parOperador, :parDataAtualizacao ) ';
          ModificaDados.ParamByName('parQuantidadeDevolvida').AsInteger    := 0;
          ModificaDados.ParamByName('parQuantidadeVendida').AsInteger      := 0;
       end;
       ModificaDados.ParamByName('parQuantidadeEnviada').AsInteger    := itensRemessa.fieldByname('Qtde_Enviada').AsInteger;
       ModificaDados.ParamByName('parRemessaId').AsInteger            := remessaId;
       ModificaDados.ParamByName('parDataAtualizacao').AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now);
       ModificaDados.ParamByName('parProdutoID').AsInteger            := itensRemessa.fieldByname('Codigo').AsInteger;
       ModificaDados.ParamByName('parOperador').AsString              := operador;
       ModificaDados.ExecSQL;
       itensRemessa.next;
   end;
end;

function TDaoRemessa.Buscar(RemessaId: integer): TRemessa;
var lstParametros : TStringList;
    Remessa : TRemessa;
    dados : TClientDataSet;
begin
  Remessa := TRemessa.Create;
  if RemessaId<>0 then
  begin
    lstParametros := TStringList.Create;
    lstParametros.Add(IntToStr(RemessaId));
    dados :=  FConexao.BuscarDadosSQL('SELECT * FROM Remessas WHERE Id=:parId ',lstParametros);
    Remessa.Id             := dados.FieldByName('Id').AsInteger;
    Remessa.Operador       := dados.FieldByName('Operador').AsString;
    Remessa.DataCadastro   := dados.FieldByName('DataCadastro').AsDateTime;
    Remessa.FuncionarioID  := dados.FieldByName('FuncionarioID').AsInteger;
    FreeAndNil(lstParametros);
  end;
  Result := Remessa;
end;

function TDaoRemessa.BuscarItens(remessaId: Integer): TclientDataSet;
var lstParametros : TStringList;
begin
   lstParametros := TStringList.Create;
   lstParametros.add(Inttostr(remessaId));
   Result := Fconexao.BuscarDadosSQL('SELECT ProdutoId as Codigo, (QuantidadeEnviada+QuantidadeDevolvida)-QuantidadeVendida as Qtde_Enviada, * from ItensRemessa where RemessaId=:parRemessaIs',lstParametros);
end;

function TDaoRemessa.BuscarRemessaAberta(SupervisorId: Integer): TRemessa;
var lstParametros : TStringList;
    Remessa : TRemessa;
    dados : TClientDataSet;
begin
  Remessa := TRemessa.Create;
  if SupervisorId<>0 then
  begin
    lstParametros := TStringList.Create;
    lstParametros.Add(IntToStr(SupervisorId));
    lstParametros.Add('A');
    dados :=  FConexao.BuscarDadosSQL('SELECT * FROM Remessas WHERE FuncionarioId=:parFuncionarioId and Status=:parStatus',lstParametros);
    Remessa.Id := dados.FieldByName('Id').AsInteger;
    FreeAndNil(lstParametros);
  end;
  Result := Remessa;
end;

constructor TDaoRemessa.Create(Conexao : TConexao);
begin
   FConexao := Conexao;
end;

procedure TDaoRemessa.Excluir(remessa: TRemessa);
begin
end;

function TDaoRemessa.ExisteItemRemessa(ProdutoID, RemessaId: Integer): Boolean;
var lstParametros : TStringList;
    dados : TClientDataSet;
begin
  try
    lstParametros := TStringList.Create;
    lstParametros.Add(IntToStr(RemessaId));
    lstParametros.Add(IntToStr(ProdutoID));
    dados :=  FConexao.BuscarDadosSQL('SELECT * FROM ItensRemessa WHERE remessaID=:parRemessaId and ProdutoId=:parProdutoId',lstParametros);
  finally
    FreeAndNil(lstParametros);
  end;
  Result := (not dados.IsEmpty);
end;

function TDaoRemessa.FecharRemessas(remessaId: integer; operador : string ): Boolean;
var ModificaDados : TSqlQuery;
begin
   Result := true;
   ModificaDados := TSqlQuery.Create(Nil);
   try
     ModificaDados.SQLConnection :=FConexao.Conection;
     ModificaDados.SQL.Text := 'UPDATE Remessas Set status=:parStatus, '+
                               '               Operador=:parOperador, DataAtualizacao=:parDataAtualizacao '+
                               'WHERE ID=:parIDRemessa ';
     ModificaDados.ParamByName('parIDRemessa').AsInteger            := remessaId;
     ModificaDados.ParamByName('parOperador').AsString              := operador;
     ModificaDados.ParamByName('parDataAtualizacao').AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now);
     ModificaDados.ParamByName('parstatus').AsString                := 'F';
     try
       ModificaDados.ExecSQL;
     except on E: Exception do
        Result := False;
     end;

   finally
     FreeAndNil(ModificaDados);
   end;
end;

procedure TDaoRemessa.Incluir(remessa : TRemessa; itensRemessa : TClientDataSet);
var ModificaDados : TSqlQuery;
begin
   ModificaDados := TSqlQuery.Create(Nil);
   Try
     ModificaDados.SQLConnection :=FConexao.Conection;
     ModificaDados.SQL.Text := 'INSERT INTO Remessas ( Operador, DataCadastro,  FuncionarioID, Status ) VALUES '+
                               '                     ( :parOperador, :parDataCadastro, :parFuncionarioID, :parStatus) ';

     ModificaDados.ParamByName('parStatus').AsString             := remessa.Status;
     ModificaDados.ParamByName('parFuncionarioId').AsInteger     := remessa.FuncionarioID;
     ModificaDados.ParamByName('parOperador').AsString           := remessa.Operador;
     ModificaDados.ParamByName('parDataCadastro').AsSQLTimeStamp := DateTimeToSqlTimeStamp(remessa.DataCadastro);
     ModificaDados.ExecSQL;

     ModificaDados.Close;
     ModificaDados.SQL.Text := 'SELECT IDENT_CURRENT('+QuotedStr('Remessas')+') As Id ';
     ModificaDados.Open;
     remessa.Id :=  ModificaDados.FieldByName('Id').AsInteger;

     InserirItens(itensRemessa, remessa);

   Finally
     FreeAndNil(ModificaDados);
   End;
end;

procedure TDaoRemessa.InserirItens(itensRemessa: TClientDataSet; remessa:TRemessa);
var ModificaDados : TSqlQuery;
begin
   ModificaDados := TSqlQuery.Create(Nil);
   Try
     ModificaDados.Close;
     ModificaDados.Params.Clear;
     ModificaDados.SQLConnection := FConexao.Conection;
     ModificaDados.SQL.Text := 'INSERT INTO ItensRemessa ( RemessaId, ProdutoId, QuantidadeEnviada, QuantidadeDevolvida, QuantidadeVendida, Operador ) VALUES '+
                               '                          ( :parRemessaId, :parProdutoId, :parQuantidadeEnviada, :parQuantidadeDevolvida, :parQuantidadeVendida, :parOperador) ';
     ModificaDados.Prepared := True;

     itensRemessa.First;
     while not itensRemessa.Eof do
     begin
       ModificaDados.Close;
       ModificaDados.ParamByName('parRemessaId').AsInteger           := remessa.Id;
       ModificaDados.ParamByName('parProdutoId').AsInteger           := itensRemessa.FieldByname('Codigo').AsInteger;
       ModificaDados.ParamByName('parOperador').AsString             := remessa.Operador;
       ModificaDados.ParamByName('parQuantidadeEnviada').AsInteger   := itensRemessa.FieldByname('Qtde_Enviada').AsInteger;
       ModificaDados.ParamByName('parQuantidadeDevolvida').AsInteger := 0;
       ModificaDados.ParamByName('parQuantidadeVendida').AsInteger   := 0;
       ModificaDados.ExecSQL;
       itensRemessa.Next;
     end;
   Finally
     FreeAndNil(ModificaDados);
   End;
end;

function TDaoRemessa.RetornarRemessas(StatusRemessa : String): TClientDataSet;
var lstParametros : TStringList;
begin
   lstParametros := TStringList.Create;
   lstParametros.add(StatusRemessa);
   Result := Fconexao.BuscarDadosSQL('SELECT Fun.Descricao as Vendedor, Rem.*, '+
                                     '       CASE STATUS WHEN '+QuotedStr('A')+' then ''Aberto''  '+
                                     '                   WHEN ''F'' then ''Fechada'' '+
                                     '                   ELSE ''Não Identificada'' end as NomeStatus '+
                                     'FROM Remessas Rem '+
                                     'LEFT JOIN T_funcionarios Fun on Fun.codigo = Rem.FuncionarioId '+
                                     'WHERE Status=:parstatus',lstParametros);
end;

procedure TDaoRemessa.SomarItemNaRemessaDevolucao(SupervisorId, ProdutoId, Quantidade: Integer; operador: string);
var ModificaDados : TSqlQuery;
    remessaId : Integer;
begin
   ModificaDados := TSqlQuery.Create(Nil);
   ModificaDados.SQLConnection :=FConexao.Conection;
   remessaId := BuscarRemessaAberta(SupervisorId).Id;

   if ExisteItemRemessa( ProdutoId, remessaId) then
   begin
      ModificaDados.SQL.Text := 'UPDATE ItensRemessa Set QuantidadeDevolvida=QuantidadeDevolvida + :parQuantidadeDevolvida, '+
                                '                        Operador=:parOperador, DataAtualizacao=:parDataAtualizacao '+
                                'WHERE RemessaID=:parRemessaID and ProdutoID=:parProdutoID ';
   end
   else
   begin
      ModificaDados.SQL.Text := 'Insert Into ItensRemessa (ProdutoId, RemessaId, QuantidadeEnviada, QuantidadeDevolvida, QuantidadeVendida, Operador, DataAtualizacao ) values '+
                                '                         (:parProdutoId, :parRemessaId, :parQuantidadeEnviada, :parQuantidadeDevolvida, :parQuantidadeVendida, :parOperador, :parDataAtualizacao ) ';
      ModificaDados.ParamByName('parQuantidadeEnviada').AsInteger    := 0;
      ModificaDados.ParamByName('parQuantidadeVendida').AsInteger    := 0;
   end;

   ModificaDados.ParamByName('parRemessaId').AsInteger            := remessaId;
   ModificaDados.ParamByName('parQuantidadeDevolvida').AsInteger  := Quantidade;
   ModificaDados.ParamByName('parDataAtualizacao').AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now);
   ModificaDados.ParamByName('parProdutoID').AsInteger            := ProdutoId;
   ModificaDados.ParamByName('parOperador').AsString              := operador;
   ModificaDados.ExecSQL;

   FreeAndNil(ModificaDados);
end;

procedure TDaoRemessa.SomarItemNaRemessaVenda(SupervisorId, ProdutoId, Quantidade: Integer; operador : String );
var ModificaDados : TSqlQuery;
    remessaId : Integer;
begin
   ModificaDados := TSqlQuery.Create(Nil);
   ModificaDados.SQLConnection :=FConexao.Conection;
   remessaId := BuscarRemessaAberta(SupervisorId).Id;

   if ExisteItemRemessa( ProdutoId, remessaId) then
   begin
      ModificaDados.SQL.Text := 'UPDATE ItensRemessa Set QuantidadeVendida=QuantidadeVendida + :parQuantidadeVendida, '+
                                '                        Operador=:parOperador, DataAtualizacao=:parDataAtualizacao '+
                                'WHERE RemessaID=:parRemessaID and ProdutoID=:parProdutoID ';
   end
   else
   begin
      ModificaDados.SQL.Text := 'Insert Into ItensRemessa (ProdutoId, RemessaId, QuantidadeEnviada, QuantidadeDevolvida, QuantidadeVendida, Operador, DataAtualizacao ) values '+
                                '                         (:parProdutoId, :parRemessaId, :parQuantidadeEnviada, :parQuantidadeDevolvida, :parQuantidadeVendida, :parOperador, :parDataAtualizacao ) ';
      ModificaDados.ParamByName('parQuantidadeDevolvida').AsInteger  := 0;
      ModificaDados.ParamByName('parQuantidadeEnviada').AsInteger    := 0;
   end;

   ModificaDados.ParamByName('parQuantidadeVendida').AsInteger    := Quantidade;
   ModificaDados.ParamByName('parRemessaId').AsInteger            := remessaId;
   ModificaDados.ParamByName('parDataAtualizacao').AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now);
   ModificaDados.ParamByName('parProdutoID').AsInteger            := ProdutoId;
   ModificaDados.ParamByName('parOperador').AsString              := operador;
   ModificaDados.ExecSQL;

   FreeAndNil(ModificaDados);
end;

function TDaoRemessa.TemRemessaAberta(SupervisorId: Integer): Boolean;
var lstParametros : TStringList;
begin
  Result := False;
  if  SupervisorId <>0 then
  begin
    lstParametros := TStringList.Create;
    lstParametros.Add(IntToStr(SupervisorId));
    lstParametros.Add('A');

    if FConexao.BuscarDadosSQL('SELECT * FROM Remessas WHERE FuncionarioId=:parFuncionarioId and Status=:parStatus',lstParametros).RecordCount > 0 then
       Result := True;
    FreeAndNil(lstParametros);
  end;
end;

end.
