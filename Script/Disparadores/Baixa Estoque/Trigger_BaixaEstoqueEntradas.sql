
DROP TRIGGER BaixaEstoqueEntrada
GO

CREATE TRIGGER BaixaEstoqueEntrada
ON T_ItensEntradas
AFTER INSERT
AS

DECLARE @parCod_Produto Integer
DECLARE @parQtde_Entrada Integer
DECLARE @parPco_Entrada float
DECLARE @parSetorId integer

DECLARE ItensProduto CURSOR FOR ( SELECT SetorId, Cod_Produto, Qtde_Entrada, pco_Entrada FROM INSERTED )
BEGIN

   OPEN ItensProduto
   FETCH NEXT FROM ItensProduto INTO @parSetorId, @parCod_Produto,@parQtde_Entrada,@parPco_Entrada
   WHILE @@FETCH_STATUS = 0
   BEGIN
      FETCH NEXT FROM ItensProduto INTO @parSetorId,@parCod_Produto,@parQtde_Entrada,@parPco_Entrada

      IF (@parSetorId = 1)
      BEGIN
        UPDATE T_Produtos set Saldo = Saldo+@parQtde_Entrada, Pco_Compra=@ParPco_Entrada where Codigo=@parCod_Produto AND TIPO_PRODUTO<>'1'

        SET NOCOUNT ON

        INSERT INTO T_MOVESTOQUE
                    ( COD_EMP,COD_PRODUTO,DATA_CAD,DATA_MOV, E_S, OPERADOR, DOCUMENTO,
                      QTDE_BAIXA, ROTINA,SALDO_ANTERIOR, SALDO_POSTERIOR               ) 
        SELECT        '001',INSERTED.COD_PRODUTO,INSERTED.DATA_CAD,INSERTED.DATA_MOV,'E',
                      INSERTED.OPERADOR,INSERTED.SEQENTRADA,INSERTED.QTDE_Entrada,'ENTRDADA DE MERCADORIA (T_ITENSCOMPRAS) ',(T_PRODUTOS.SALDO-INSERTED.QTDE_Entrada),
                      T_PRODUTOS.SALDO
        FROM INSERTED INNER JOIN T_PRODUTOS
        ON INSERTED.COD_PRODUTO = T_PRODUTOS.CODIGO AND T_PRODUTOS.TIPO_PRODUTO<>'1'
     END
   END 
   CLOSE ItensProduto
   DEALLOCATE ItensProduto

   SET NOCOUNT OFF
END


