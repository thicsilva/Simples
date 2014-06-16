unit uDaoItensVendaGrade;

interface

uses uClassConexao,DbClient, SqlExpr;

type TDaoItensVendaGrade = class
  private
    FConexao : TConexao;
    FQueryModific : TSqlQuery;
  public
     Constructor Create(Conexao : TConexao);
     procedure InserirItens(ItensVendaGrade: TClientDataSet; IdVenda : Integer );


end;

implementation


{ TDaoItensVendaGrade }

constructor TDaoItensVendaGrade.Create(Conexao: TConexao);
begin
  Fconexao := Conexao;
  FQueryModific := TSqlQuery.Create(Nil);
end;

procedure TDaoItensVendaGrade.InserirItens(ItensVendaGrade: TClientDataSet; IdVenda : Integer );
begin
   FQueryModific.Close;
   FQueryModific.SQLConnection := Fconexao.Conection;
   FQueryModific.Sql.Text := 'insert into ItensVendaGrade ( ProdutoId, ItenGradeId, QtdeSolicitada, VendaId ) Values '+
                             '                            ( :parProdutoId, :parItenGradeId, :parQtdeSolicitada, :parVendaId )';
   FQueryModific.Prepared := True;
   ItensVendaGrade.First;
   while not ItensVendaGrade.eof do
   begin
      FQueryModific.close;
      FQueryModific.ParamByName('parProdutoId').AsInteger      := ItensVendaGrade.FieldByname('IDProduto').AsInteger;
      FQueryModific.ParamByName('parItenGradeId').AsInteger    := ItensVendaGrade.FieldByname('ItenGradeId').AsInteger;
      FQueryModific.ParamByName('parVendaId').AsInteger        := IdVenda;
      FQueryModific.ParamByName('parQtdeSolicitada').AsFloat   := ItensVendaGrade.FieldByname('Qtde').AsFloat;
      FQueryModific.ExecSql;
      ItensVendaGrade.Next;
   end;
end;

end.
