if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_itensEntradas]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_itensEntradas]
GO

CREATE TABLE [dbo].[T_itensEntradas] (
	[SeqEntrada] [int] NULL ,
	[Cod_Produto] [int] NULL ,
	[Qtde_Entrada] [float] NULL ,
	[pco_Entrada] [float] NULL ,
	[Vlr_Total] [float] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[T_itensEntradas] WITH NOCHECK ADD 
	CONSTRAINT [IX_T_itensEntradas] UNIQUE  CLUSTERED 
	(
		[SeqEntrada],
		[Cod_Produto]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_itensEntradas] ADD 
	CONSTRAINT [FK_T_itensEntradas_T_Entradas] FOREIGN KEY 
	(
		[SeqEntrada]
	) REFERENCES [dbo].[T_Entradas] (
		[SeqEntrada]
	) ON UPDATE CASCADE ,
	CONSTRAINT [FK_T_itensEntradas_T_Produtos] FOREIGN KEY 
	(
		[Cod_Produto]
	) REFERENCES [dbo].[T_Produtos] (
		[Codigo]
	) ON UPDATE CASCADE 
GO

