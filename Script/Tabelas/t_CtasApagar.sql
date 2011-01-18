if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Ctaspagar]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Ctaspagar]
GO

CREATE TABLE [dbo].[T_Ctaspagar] (
	[sequencia] [int] NOT NULL ,
	[Cod_Fornecedor] [int] NULL ,
	[Valor] [float] NULL ,
	[Historico] [varchar] (75) COLLATE Latin1_General_CI_AS NULL ,
	[Data_Cad] [datetime] NULL ,
	[Data_Emissao] [datetime] NOT NULL ,
	[Data_vencimento] [datetime] NULL ,
	[seqParCela] [int] NULL ,
	[Data_Atu] [datetime] NULL ,
	[status] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[Cod_Operacao] [char] (4) COLLATE Latin1_General_CI_AS NULL ,
	[Operador] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[seqentrada] [int] NULL ,
	[Documento] [char] (11) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[T_Ctaspagar] WITH NOCHECK ADD 
	CONSTRAINT [DF_T_Ctaspagar_status] DEFAULT ('A') FOR [status],
	CONSTRAINT [IX_T_Ctaspagar] UNIQUE  NONCLUSTERED 
	(
		[Cod_Fornecedor],
		[Documento]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_Ctaspagar] ADD 
	CONSTRAINT [FK_T_Ctaspagar_T_Entradas] FOREIGN KEY 
	(
		[seqentrada]
	) REFERENCES [dbo].[T_Entradas] (
		[SeqEntrada]
	),
	CONSTRAINT [FK_T_Ctaspagar_T_Fornecedores] FOREIGN KEY 
	(
		[Cod_Fornecedor]
	) REFERENCES [dbo].[T_Fornecedores] (
		[Codigo]
	) ON UPDATE CASCADE ,
	CONSTRAINT [FK_T_Ctaspagar_T_Operacoes] FOREIGN KEY 
	(
		[Cod_Operacao]
	) REFERENCES [dbo].[T_Operacoes] (
		[Codigo]
	) ON UPDATE CASCADE 
GO

