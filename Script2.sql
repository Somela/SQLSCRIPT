USE [NetCore]
GO
/****** Object:  Table [dbo].[SalaryGrade]    Script Date: 04/30/2019 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryGrade](
	[grade] [int] NULL,
	[minSalary] [int] NULL,
	[maxSalary] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 04/30/2019 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employees](
	[empID] [int] NOT NULL,
	[empName] [varchar](50) NULL,
	[jobName] [varchar](50) NULL,
	[managerID] [int] NULL,
	[hireDate] [date] NULL,
	[salay] [decimal](10, 2) NOT NULL,
	[commission] [decimal](18, 2) NULL,
	[depID] [int] NULL,
 CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED 
(
	[empID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 04/30/2019 21:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[depID] [int] NULL,
	[depName] [varchar](50) NULL,
	[depLocation] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
