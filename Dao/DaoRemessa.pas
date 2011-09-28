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
    procedure SomarItemNaRemessa(SupervisorId : Integer; ProdutoId : Integer; Quantidade : Integer; operador : string);
    function BuscarRemessaAberta(SupervisorId : Integer) : TRemessa;
    function RetornarRemessasAbertas : TClientDataSet;
    function TemRemessaAberta(SupervisorId : Integer  ) : Boolean;

end;

implementation

uses
  SqlExpr;

{ TDaoRemessa }

procedure TDaoRemessa.Alterar(remessa: TRemessa);
begin

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

procedure TDaoRemessa.Incluir(remessa : TRemessa; itensRemessa : TClientDataSet);
var ModificaDados : TSqlQuery;
    remessaId: Integer;
begin
   Try
     ModificaDados := TSqlQuery.Create(Nil);
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
     remessaId :=  ModificaDados.FieldByName('Id').AsInteger;

     ModificaDados.Close;
     ModificaDados.Params.Clear;
     ModificaDados.SQL.Text := 'INSERT INTO ItensRemessa ( RemessaId, ProdutoId, QuantidadeEnviada, QuantidadeDevolvida, QuantidadeVendida, Operador ) VALUES '+
                               '                          ( :parRemessaId, :parProdutoId, :parQuantidadeEnviada, :parQuantidadeDevolvida, :parQuantidadeVendida, :parOperador) ';
     ModificaDados.Prepared := True;

     itensRemessa.First;
     while not itensRemessa.Eof do
     begin
       ModificaDados.Close;
       ModificaDados.ParamByName('parRemessaId').AsInteger           := remessaId;
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

function TDaoRemessa.RetornarRemessasAbertas: TClientDataSet;
var lstParametros : TStringList;
begin
  lstParametros := TStringList.Create;
  lstParametros.add('A');
  Result := Fconexao.BuscarDadosSQL('select Fun.Descricao as Vendedor, Rem.*, '+
                                    '       case Status when '+QuotedStr('A')+' then ''Aberto''  '+
                                    '                   when ''F'' then ''Fechada'' '+
                                    '                   else ''Não Identificada'' end as NomeStatus '+
                                    'from Remessas Rem '+
                                    'left join T_funcionarios Fun on Fun.codigo = Rem.FuncionarioId '+
                                    'where Status=:parstatus',lstParametros);
end;

procedure TDaoRemessa.SomarItemNaRemessa(SupervisorId, ProdutoId, Quantidade: Integer; operador : String );
var ModificaDados : TSqlQuery;
    remessaId: Integer;
begin
     ModificaDados := TSqlQuery.Create(Nil);
     ModificaDados.SQLConnection :=FConexao.Conection;
     ModificaDados.SQL.Text := 'UPDATE ItensRemessa Set QuantidadeVendida=QuantidadeVendida + :parQtdeVendida, '+
                               '                        Operador=:parOperador, DataAtualizacao=:parDataAtualizacao '+
                               'WHERE RemessaID=:parIDRemessa and ProdutoID=:parProdutoID ';

     ModificaDados.ParamByName('parQtdeVendida').AsInteger          := Quantidade;
     ModificaDados.ParamByName('parIDRemessa').AsInteger            := BuscarRemessaAberta(SupervisorId).Id;
     ModificaDados.ParamByName('parOperador').AsString              := operador;
     ModificaDados.ParamByName('parDataAtualizacao').AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now);
     ModificaDados.ParamByName('parProdutoID').AsInteger            := ProdutoId;
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
