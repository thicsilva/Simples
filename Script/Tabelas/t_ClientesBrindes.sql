if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_ClientesBrindes]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_ClientesBrindes]
GO

CREATE TABLE [dbo].[T_ClientesBrindes] (
	[Sequencia] [int] NOT NULL ,
	[Cod_Cliente] [int] NULL ,
	[cod_Produto] [int] NULL ,
	[Qtde_Brinde] [float] NULL ,
	[Pco_Brinde] [float] NULL ,
	[data_Cad] [datetime] NULL ,
	[data_Atu] [datetime] NULL ,
	[Cod_emp] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[Operador] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[vlr_Total] [float] NULL ,
	[Documento] [char] (11) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[T_ClientesBrindes] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_ClientesBrindes] PRIMARY KEY  CLUSTERED 
	(
		[Sequencia]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_ClientesBrindes] ADD 
	CONSTRAINT [FK_T_ClientesBrindes_T_Clientes] FOREIGN KEY 
	(
		[Cod_Cliente]
	) REFERENCES [dbo].[T_Clientes] (
		[Codigo]
	) ON UPDATE CASCADE ,
	CONSTRAINT [FK_T_ClientesBrindes_T_Produtos] FOREIGN KEY 
	(
		[cod_Produto]
	) REFERENCES [dbo].[T_Produtos] (
		[Codigo]
	) ON UPDATE CASCADE 
GO

