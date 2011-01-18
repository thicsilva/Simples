CREATE Procedure [sp_AtualizaEstoque] 
   @lsCod_Emp varchar(3),
   @lsCod_Setor varchar(4),
   @lsCod_Produto varchar(10),
   @lsTipoMov char(1) = '',
   @liQtde float,
   @liQtdeInv float = 0,
   @liQtdeCX float = 0,
   @liQtdeFiscal float = 0
as
   if @lsTipoMov=''
   begin
      RaisError('Tipo de movimento inválido na sp_AtualizaEstoque. As alterações foram desfeitas!!!', 16, 1)
      RollBack 
      Return
   end
   else
   begin
      if @liQtde > 0
      begin
         if @lsTipoMov='S'
         begin
            if Exists ( SELECT Cod_Produto FROM T_Saldos WHERE Cod_Emp=@lsCod_Emp and Cod_Setor=@lsCod_Setor and Cod_Produto=@lsCod_Produto)
               UPDATE T_Saldos SET Saldo       = Saldo       - @liQtde,
                                   SaldoCX     = SaldoCX     - @liQtdeCX,
                                   SaldoFiscal = SaldoFiscal - @liQtdeFiscal,
                                   QtdeInv     = @liQtdeFiscal
                                   WHERE Cod_Emp=@lsCod_Emp and Cod_Setor=@lsCod_Setor and Cod_Produto=@lsCod_Produto
            else  
               INSERT INTO T_Saldos (Cod_Emp, Cod_Setor, Cod_Produto, Saldo, SaldoCX, SaldoFiscal, QtdeInv) VALUES (@lsCod_Emp, @lsCod_Setor, @lsCod_Produto, ( @liQtde * -1), (@liQtdeCX * -1), (@liQtdeFiscal * -1), @liQtdeInv )
         end
         else
         begin
            if Exists ( SELECT Cod_Produto FROM T_Saldos WHERE Cod_Emp=@lsCod_Emp and Cod_Setor=@lsCod_Setor and Cod_Produto=@lsCod_Produto)
               UPDATE T_Saldos SET Saldo       = Saldo       + @liQtde,
                                   SaldoCX     = SaldoCX     + @liQtdeCX,
                                   SaldoFiscal = SaldoFiscal + @liQtdeFiscal,
                                   QtdeInv     = @liQtdeFiscal
                                   WHERE Cod_Emp=@lsCod_Emp and Cod_Setor=@lsCod_Setor and Cod_Produto=@lsCod_Produto
            else
               INSERT INTO T_Saldos (Cod_Emp, Cod_Setor, Cod_Produto, Saldo, SaldoCX, SaldoFiscal, QtdeInv) VALUES (@lsCod_Emp, @lsCod_Setor, @lsCod_Produto, @liQtde, @liQtdeCX, @liQtdeFiscal, @liQtdeInv )
         end
      end
   end


CREATE PROCEDURE [sp_VerEstoque] 
     @lsCod_Emp varchar(3),
     @lsCod_Setor varchar(4),
     @lsCod_Produto varchar(10),
     @result_Estoque float = 0 OutPut
AS
   IF Exists( SELECT Cod_Produto FROM T_Saldos WHERE Cod_Emp=@lsCod_Emp and Cod_Setor=@lsCod_Setor and Cod_Produto=@lsCod_Produto)
      SET @result_Estoque = ( SELECT Saldo FROM T_Saldos WHERE Cod_Emp=@lsCod_Emp and Cod_Setor=@lsCod_Setor and Cod_Produto=@lsCod_Produto )
   ELSE
      SET @result_Estoque = 0


CREATE TRIGGER [TG_INSERT_ITENSORCAMENTOSTMPRAMON] 
ON dbo.T_ITENSORCAMENTOSTMPRAMON 
FOR INSERT
AS
   Declare @lcCod_Emp varchar(3)
   Declare @lcCod_Setor varchar(4)
   Declare @lcCod_Produto varchar(10)
   Declare @liQtde float
   Declare @liSaldo float

   Set @lcCod_Emp     = ( Select Cod_Emp     From Inserted )
   Set @lcCod_Setor   = ( Select Cod_Setor   From Inserted )
   Set @lcCod_Produto = ( Select Cod_Produto From Inserted )
   Set @liQtde        = ( Select Qtde        From Inserted )

   Exec sp_VerEstoque @lcCod_Emp, @lcCod_Setor, @lcCod_Produto, @liSaldo output 

   If @liQtde > @liSaldo
   Begin
      RollBack
      RaisError( 'Estoque insuficiente', 16, 1)
   End
   Else
      Exec sp_AtualizaEstoque @lcCod_Emp, @lcCod_Setor, @lcCod_Produto, 'S' , @liQtde



CREATE TRIGGER [TG_UPDATE_ITENSORCAMENTOSTMPRAMON] 
ON dbo.T_ITENSORCAMENTOSTMPRAMON 
FOR UPDATE
AS
   if Update( Qtde )
   begin
      Declare @lcCod_Emp varchar(3)
      Declare @lcCod_Setor varchar(4)
      Declare @lcCod_Produto varchar(10)
      Declare @liQtde float
      Declare @liQtdeANT float
      Declare @liSaldo float

      Set @lcCod_Emp     = ( Select Cod_Emp     From Inserted )
      Set @lcCod_Setor   = ( Select Cod_Setor   From Inserted )
      Set @lcCod_Produto = ( Select Cod_Produto From Inserted )
      Set @liQtde        = ( Select Qtde        From Inserted )
      Set @liQtdeANT     = ( Select Qtde        From Deleted )
 
      Exec sp_VerEstoque @lcCod_Emp, @lcCod_Setor, @lcCod_Produto, @liSaldo output 
  
      If @liQtde > ( @liSaldo + @liQtdeANT )
      Begin
         RollBack
         RaisError( 'Estoque insuficiente', 16, 1)
      End
      Else
      begin
         Exec sp_AtualizaEstoque @lcCod_Emp, @lcCod_Setor, @lcCod_Produto, 'E' , @liQtdeANT
         Exec sp_AtualizaEstoque @lcCod_Emp, @lcCod_Setor, @lcCod_Produto, 'S' , @liQtde
      end
   end


CREATE TRIGGER [TG_DELETE_ITENSORCAMENTOSTMPRAMON] 
ON [T_ITENSORCAMENTOSTMPRAMON] 
FOR DELETE 
AS
   DECLARE @lsCod_Emp     varchar (3)
   DECLARE @lsCod_Setor   varchar (4)
   DECLARE @lsCod_Produto varchar (10)
   DECLARE @liQtdeANT	  float
   DECLARE deleted_cursor CURSOR FOR (SELECT Cod_Emp, Cod_Setor, Cod_Produto, Qtde FROM Deleted)
   
   OPEN deleted_cursor
   FETCH NEXT FROM deleted_cursor INTO @lsCod_Emp, @lsCod_Setor, @lsCod_Produto, @liQtdeANT
   WHILE @@FETCH_STATUS = 0
   BEGIN
      EXEC sp_AtualizaEstoque @lsCod_Emp, @lsCod_Setor, @lsCod_Produto, 'E', @liQtdeANT
      FETCH NEXT FROM deleted_cursor INTO @lsCod_Emp, @lsCod_Setor, @lsCod_Produto, @liQtdeANT
   END
   CLOSE deleted_cursor
   DEALLOCATE deleted_cursor
