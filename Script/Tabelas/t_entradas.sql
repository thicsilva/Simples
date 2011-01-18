if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_Ctaspagar_T_Entradas]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_Ctaspagar] DROP CONSTRAINT FK_T_Ctaspagar_T_Entradas
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_itensEntradas_T_Entradas]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_itensEntradas] DROP CONSTRAINT FK_T_itensEntradas_T_Entradas
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Entradas]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Entradas]
GO

CREATE TABLE [dbo].[T_Entradas] (
	[SeqEntrada] [int] NOT NULL ,
	[Cod_Fornecedor] [int] NULL ,
	[Vlr_Total] [float] NULL ,
	[Status] [nvarchar] (1) COLLATE Latin1_General_CI_AS NULL ,
	[Data_Entrada] [datetime] NULL ,
	[Data_atu] [datetime] NULL ,
	[Data_Cancel] [datetime] NULL ,
	[Operador] [varchar] (50) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[T_Entradas] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_Entradas] PRIMARY KEY  CLUSTERED 
	(
		[SeqEntrada]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_Entradas] WITH NOCHECK ADD 
	CONSTRAINT [DF_T_Entradas_Status] DEFAULT (' ') FOR [Status]
GO

ALTER TABLE [dbo].[T_Entradas] ADD 
	CONSTRAINT [FK_T_Entradas_T_Fornecedores] FOREIGN KEY 
	(
		[Cod_Fornecedor]
	) REFERENCES [dbo].[T_Fornecedores] (
		[Codigo]
	) ON UPDATE CASCADE 
GO

