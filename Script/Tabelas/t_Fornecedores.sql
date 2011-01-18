if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_Ctaspagar_T_Fornecedores]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_Ctaspagar] DROP CONSTRAINT FK_T_Ctaspagar_T_Fornecedores
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_Entradas_T_Fornecedores]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_Entradas] DROP CONSTRAINT FK_T_Entradas_T_Fornecedores
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Fornecedores]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Fornecedores]
GO

CREATE TABLE [dbo].[T_Fornecedores] (
	[Codigo] [int] NOT NULL ,
	[Descricao] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL ,
	[CNPJCPF] [char] (10) COLLATE Latin1_General_CI_AS NULL ,
	[Endereco] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[Bairro] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[Cidade] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[UF] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[Telefone] [char] (13) COLLATE Latin1_General_CI_AS NULL ,
	[celular] [char] (13) COLLATE Latin1_General_CI_AS NULL ,
	[Operador] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[cod_emp] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[Data_Cad] [datetime] NULL ,
	[Data_Atu] [datetime] NULL ,
	[Status] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[ativo] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[cep] [char] (9) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[T_Fornecedores] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_Fornecedores] PRIMARY KEY  CLUSTERED 
	(
		[Codigo]
	)  ON [PRIMARY] 
GO

