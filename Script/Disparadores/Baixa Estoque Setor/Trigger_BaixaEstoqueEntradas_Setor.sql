DROP TRIGGER BaixaEstoqueEntrada_setor
GO

CREATE TRIGGER BaixaEstoqueEntrada_Setor
ON T_ItensEntradas
AFTER INSERT
AS

DECLARE @parCod_Produto Integer
DECLARE @parQtde_Entrada Integer
DECLARE @parPco_Entrada float
DECLARE	@SetorId Integer

DECLARE ItensProduto CURSOR FOR ( SELECT SetorId, Cod_Produto, Qtde_Entrada, pco_Entrada FROM INSERTED )
BEGIN

   OPEN ItensProduto
   FETCH NEXT FROM ItensProduto INTO @SetorId, @parCod_Produto, @parQtde_Entrada, @parPco_Entrada
   WHILE @@FETCH_STATUS = 0
   BEGIN
      UPDATE SaldosSetor set Saldo = Saldo+@parQtde_Entrada where ProdutoId=@parCod_Produto and SetorId=@SetorId
       FETCH NEXT FROM ItensProduto INTO @SetorId, @parCod_Produto, @parQtde_Entrada, @parPco_Entrada
   END 
   CLOSE ItensProduto
   DEALLOCATE ItensProduto

   SET NOCOUNT ON

   INSERT INTO T_MOVESTOQUE
               ( COD_EMP,COD_PRODUTO,DATA_CAD,DATA_MOV, E_S, OPERADOR, DOCUMENTO,
                 QTDE_BAIXA, ROTINA,SALDO_ANTERIOR, SALDO_POSTERIOR,SetorId     ) 
   SELECT       '001',INSERTED.COD_PRODUTO,INSERTED.DATA_CAD,INSERTED.DATA_Mov,'E',
                 INSERTED.OPERADOR,INSERTED.SEQENTRADA,INSERTED.Qtde_Entrada,'ENTRDADA DE MERCADORIA (T_ITENSCOMPRAS) ',(Estoque.SALDO-INSERTED.Qtde_Entrada), 
                 Estoque.SALDO,INSERTED.SetorID
   FROM INSERTED 
        INNER JOIN SaldosSetor Estoque on Estoque.ProdutoId=INSERTED.COD_PRODUTO and Estoque.SetorId=INSERTED.SetorID  

   SET NOCOUNT OFF
END


