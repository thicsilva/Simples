--DROP TRIGGER BaixaEstoqueTransferencia_Setor
--GO

alter TRIGGER BaixaEstoqueTransferencia_Setor
ON Transferencias
after INSERT
AS

DECLARE @parCod_Produto int
DECLARE @parQtde_Transferida Int
DECLARE @parIdSetorOrigem int
DECLARE @parIdSetorDestino int


DECLARE ItensTransferidos CURSOR FOR ( SELECT IdSetorOrigem, IdSetorDestino, IdProduto, Quantidade_Transferida FROM INSERTED )
BEGIN
   OPEN ItensTransferidos 

   FETCH NEXT FROM ItensTransferidos INTO @parIdSetorOrigem, @parIdSetorDestino, @parCod_Produto, @parQtde_Transferida 
   WHILE @@FETCH_STATUS = 0
   BEGIN
      if (@parIdSetorOrigem > 1)
      begin 
         UPDATE SaldosSetor set Saldo = Saldo-@parQtde_Transferida where ProdutoId=@parCod_Produto and SetorId=@parIdSetorOrigem
         
         INSERT INTO T_MOVESTOQUE
                     ( COD_EMP,COD_PRODUTO,DATA_CAD,DATA_MOV, E_S, OPERADOR, DOCUMENTO,
                       QTDE_BAIXA, ROTINA,SALDO_ANTERIOR, SALDO_POSTERIOR,SetorId     ) 
         SELECT        '001',INSERTED.IdProduto,GetDate(),INSERTED.DATA_Cadastro,'S',
                       INSERTED.OPERADOR,INSERTED.NumeroTransferencia,INSERTED.Quantidade_transferida,'Saida por Transferencias(1) ',(Estoque.SALDO+INSERTED.Quantidade_transferida), 
                       Estoque.SALDO,INSERTED.IdSetorOrigem
         FROM INSERTED 
               INNER JOIN SaldosSetor Estoque on Estoque.ProdutoId=INSERTED.IdProduto and Estoque.SetorId=INSERTED.IdSetorOrigem  
      end 
      else
      begin
         UPDATE T_Produtos set Saldo = Saldo-@parQtde_Transferida where Codigo=@parCod_Produto

         INSERT INTO T_MOVESTOQUE
                     ( COD_EMP,COD_PRODUTO,DATA_CAD,DATA_MOV, E_S, OPERADOR, DOCUMENTO,
                       QTDE_BAIXA, ROTINA,SALDO_ANTERIOR, SALDO_POSTERIOR,SetorId     ) 
         SELECT        '001',INSERTED.IdProduto,GetDate(),INSERTED.DATA_Cadastro,'S',
                       INSERTED.OPERADOR,INSERTED.NumeroTransferencia,INSERTED.Quantidade_transferida,'Saida por Transferencias(2) ',(Estoque.SALDO+INSERTED.Quantidade_transferida), 
                       Estoque.SALDO,INSERTED.IdSetorOrigem
         FROM INSERTED 
              left JOIN T_PRODUTOS Estoque ON Estoque.Codigo = INSERTED.IdProduto 
   
      end;

      if (@parIdSetorDestino > 1) 
      begin
         UPDATE SaldosSetor set Saldo = Saldo+@parQtde_Transferida where ProdutoId=@parCod_Produto and SetorId=@parIdSetorDestino

         INSERT INTO T_MOVESTOQUE
                     ( COD_EMP,COD_PRODUTO,DATA_CAD,DATA_MOV, E_S, OPERADOR, DOCUMENTO,
                       QTDE_BAIXA, ROTINA,SALDO_ANTERIOR, SALDO_POSTERIOR,SetorId     ) 
         SELECT        '001',INSERTED.IdProduto,GetDate(),INSERTED.DATA_Cadastro,'E',
                       INSERTED.OPERADOR,INSERTED.NumeroTransferencia,INSERTED.Quantidade_transferida,'Entrada por Transferencias (3) ',(Estoque.SALDO-INSERTED.Quantidade_transferida), 
                       Estoque.SALDO,INSERTED.IdSetorDestino
         FROM INSERTED 
               left JOIN SaldosSetor Estoque on Estoque.ProdutoId=INSERTED.IdProduto and Estoque.SetorId=INSERTED.IdSetorDestino  

      end 
      else
      begin
         UPDATE T_Produtos set Saldo = Saldo+@parQtde_Transferida where Codigo=@parCod_Produto


         INSERT INTO T_MOVESTOQUE
                     ( COD_EMP,COD_PRODUTO,DATA_CAD,DATA_MOV, E_S, OPERADOR, DOCUMENTO,
                       QTDE_BAIXA, ROTINA,SALDO_ANTERIOR, SALDO_POSTERIOR,SetorId     ) 
         SELECT        '001',INSERTED.IdProduto,GetDate(),INSERTED.DATA_Cadastro,'E',
                       INSERTED.OPERADOR,INSERTED.NumeroTransferencia,INSERTED.Quantidade_transferida,'Entrada Por Transferencias (4)',(Estoque.SALDO-INSERTED.Quantidade_transferida), 
                       Estoque.SALDO,INSERTED.IdSetorDestino
         FROM INSERTED 
              INNER JOIN T_PRODUTOS Estoque ON Estoque.Codigo = INSERTED.IdProduto 
      end;

      FETCH NEXT FROM ItensTransferidos INTO @parIdSetorOrigem, @parIdSetorDestino, @parCod_Produto, @parQtde_Transferida 
   END 
   CLOSE ItensTransferidos 
   DEALLOCATE ItensTransferidos 

END


