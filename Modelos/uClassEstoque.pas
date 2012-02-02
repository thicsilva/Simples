unit uClassEstoque;

interface

uses cl_tConexao, SqlExpr,Forms,Uprincipal, SysUtils, SimpleDS,SqlTimSt;

Type TEstoque = Class(tconexao)

   Public

      Procedure BaixaMAteriaPrima(prCod_Produto,priseqvenda : integer ; prQtde_Produto : double );
      Constructor Create;
End;

implementation

{ TEstoque }


{ TEstoque }

procedure TEstoque.BaixaMAteriaPrima(prCod_Produto,priseqvenda : integer ; prQtde_Produto : double );
var lQryInsereDados : TSqlQuery;
    lsdtsPesqMateriPrima : TSimpleDataSet;
begin

   Try
      lQryInsereDados                := TSqlQuery.Create(Application);
      lQryInsereDados.SQLConnection  := Conection;
      lQryInsereDados.sql.text       := 'INSERT INTO T_ItensMateriaPrima ( Cod_MateriaPrima,Qtde_Utilizada,Pco_Custo,Custo_Total,Qtde_Venda,Pco_Venda,'+
                                        '                                 vlr_Total,Operador,Data_Cad,Data_Mov,Cod_Produto,'+
                                        '                                 Cod_emp,SeqVenda ) Values '+
                                        '                               ( :parCod_MateriaPrima,:parQtde_Utilizada,:parPco_Custo,:parCusto_Total,'+
                                        '                                 :parQtde_Venda,:parPco_Venda,:parvlr_Total,:parOperador,'+
                                        '                                 :parData_Cad,:parData_Mov,:parCod_Produto,:parCod_emp,:parSeqVenda )';
      lQryInsereDados.Prepared := True;

      lsdtsPesqMateriPrima := TSimpleDataSet.Create(application);
      lsdtsPesqMateriPrima.Connection := conection;

      lsdtsPesqMateriPrima.DataSet.CommandText :='SELECT FichaProd.*, Prod.Pco_Custo, Prod.Pco_Venda '+
                                                 'FROM T_ProdutosFichaTecnica FichaProd ' +
                                                 ' LEFT JOIN T_produtos Prod On ' +
                                                 '      Prod.Codigo=FichaProd.Cod_MateriaPrima '+
                                                 'WHERE FichaProd.Cod_Produto=:parCod_Produto';
      lsdtsPesqMateriPrima.DataSet.ParamByName('parCod_Produto').AsInteger := prCod_Produto;
      lsdtsPesqMateriPrima.Open;

      while not lsdtsPesqMateriPrima.Eof Do
      Begin
         lQryInsereDados.Close;
         lQryInsereDados.ParamByname('parCod_MateriaPrima').asInteger  := lsdtsPesqMateriPrima.FieldByName('Cod_MateriaPrima').asInteger;
         lQryInsereDados.ParamByname('parQtde_Utilizada').asFloat      := (prQtde_Produto*lsdtsPesqMateriPrima.FieldByName('Qtde').asFloat);
         lQryInsereDados.ParamByname('parPco_Custo').asFloat           := lsdtsPesqMateriPrima.FieldByName('Pco_Custo').asFloat;
         lQryInsereDados.ParamByname('parCusto_Total').asFloat         := (prQtde_Produto*lsdtsPesqMateriPrima.FieldByName('Qtde').asFloat)*lsdtsPesqMateriPrima.FieldByName('Pco_Custo').asFloat;
         lQryInsereDados.ParamByname('parCod_Produto').asInteger       := prCod_Produto;
         lQryInsereDados.ParamByname('parQtde_Venda').asFloat          := PrQtde_Produto;
         lQryInsereDados.ParamByname('parPco_Venda').asFloat           := lsdtsPesqMateriPrima.FieldByName('Pco_Venda').asFloat;
         lQryInsereDados.ParamByname('parvlr_Total').asFloat           := (lsdtsPesqMateriPrima.FieldByName('Pco_Venda').asFloat*PrQtde_Produto);
         lQryInsereDados.ParamByname('parOperador').asString           := gsOperador;
         lQryInsereDados.ParamByname('parData_Cad').AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now);
         lQryInsereDados.ParamByname('parData_Mov').AsSQLTimeStamp     := DateTimeToSQLTimeStamp(gsdata_Mov);
         lQryInsereDados.ParamByname('parCod_emp').asString            := gsCod_Emp;
         lQryInsereDados.ParamByname('parSeqVenda').asInteger          := priSeqvenda;
         lQryInsereDados.ExecSQL;

         lsdtsPesqMateriPrima.Next;
      End;
   Finally
     FreeAndNil(lsdtsPesqMateriPrima);
     FreeAndNil(lQryInsereDados);
   End;

end;

constructor TEstoque.Create;
begin
   inherited;
end;

end.
