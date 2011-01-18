if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_Produtos_T_Grupos]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_Produtos] DROP CONSTRAINT FK_T_Produtos_T_Grupos
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Grupos]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Grupos]
GO

CREATE TABLE [dbo].[T_Grupos] (
	[Codigo] [char] (4) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Descricao] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[Data_Cad] [datetime] NULL ,
	[Data_Atu] [datetime] NULL ,
	[Cod_Emp] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[Operador] [varchar] (30) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[T_Grupos] WITH NOCHECK ADD 
	CONSTRAINT [PK_t_Grupos] PRIMARY KEY  CLUSTERED 
	(
		[Codigo]
	)  ON [PRIMARY] 
GO

