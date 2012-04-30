---DROP TRIGGER BaixaEstoqueDevolucao_Setor
--GO

CREATE TRIGGER BaixaEstoqueDevolucao_Setor
ON T_ItensDevolucoes
after INSERT
AS

DECLARE @parCod_Produto VARCHAR(5)
DECLARE @parQtde_Devolvida Integer
DECLARE @SetorId int

DECLARE ItensVendas CURSOR FOR ( SELECT SetorId, COD_PRODUTO, Qtde_Devolvida FROM INSERTED )
BEGIN

   OPEN ItensVendas
   FETCH NEXT FROM ItensVendas INTO @SetorId, @parCod_Produto,@parQtde_Devolvida
   WHILE @@FETCH_STATUS = 0
   BEGIN
      IF @SetorId>1
      begin
      UPDATE SaldosSetor set Saldo = Saldo+@parQtde_Devolvida where ProdutoId=@parCod_Produto and SetorId=@SetorId

      SET NOCOUNT ON

      INSERT INTO T_MOVESTOQUE
                  ( COD_EMP,COD_PRODUTO,DATA_CAD,DATA_MOV, E_S, OPERADOR, DOCUMENTO,
                    QTDE_BAIXA, ROTINA,SALDO_ANTERIOR, SALDO_POSTERIOR,SetorId     ) 
      SELECT       '001',INSERTED.COD_PRODUTO,INSERTED.DATA_CAD,INSERTED.DATA_CAD,'S',
                    INSERTED.OPERADOR,INSERTED.SEQVENDA,INSERTED.QTDE_Devolvida,'DEVOLUCAO DE VENDA',(Estoque.SALDO-INSERTED.QTDE_Devolvida), 
                    Estoque.SALDO,INSERTED.SetorID
      FROM INSERTED 
           INNER JOIN SaldosSetor Estoque on Estoque.ProdutoId=INSERTED.COD_PRODUTO and Estoque.SetorId=INSERTED.SetorID  
     
      end
      FETCH NEXT FROM ItensVendas INTO @SetorId, @parCod_Produto,@parQtde_Devolvida
   END 
   CLOSE ItensVendas
   DEALLOCATE ItensVendas

   SET NOCOUNT OFF
END


