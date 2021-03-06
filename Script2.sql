USE [NetCore]
GO
/****** Object:  Table [dbo].[SalaryGrade]    Script Date: 04/30/2019 21:23:59 ******/
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
INSERT [dbo].[SalaryGrade] ([grade], [minSalary], [maxSalary]) VALUES (1, 800, 1300)
INSERT [dbo].[SalaryGrade] ([grade], [minSalary], [maxSalary]) VALUES (2, 1301, 1500)
INSERT [dbo].[SalaryGrade] ([grade], [minSalary], [maxSalary]) VALUES (3, 1501, 2100)
INSERT [dbo].[SalaryGrade] ([grade], [minSalary], [maxSalary]) VALUES (4, 2101, 3100)
INSERT [dbo].[SalaryGrade] ([grade], [minSalary], [maxSalary]) VALUES (5, 3101, 9999)
/****** Object:  Table [dbo].[employees]    Script Date: 04/30/2019 21:23:59 ******/
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
INSERT [dbo].[employees] ([empID], [empName], [jobName], [managerID], [hireDate], [salay], [commission], [depID]) VALUES (65646, N'JONAS', N'MANAGER', 68319, NULL, CAST(2957.00 AS Decimal(10, 2)), NULL, 2001)
INSERT [dbo].[employees] ([empID], [empName], [jobName], [managerID], [hireDate], [salay], [commission], [depID]) VALUES (66928, N'BLAZE', N'MANAGER', 68319, CAST(0xA8170B00 AS Date), CAST(2750.00 AS Decimal(10, 2)), NULL, 3001)
INSERT [dbo].[employees] ([empID], [empName], [jobName], [managerID], [hireDate], [salay], [commission], [depID]) VALUES (67832, N'CLARE', N'MANAGER', 68319, CAST(0xCF170B00 AS Date), CAST(2550.00 AS Decimal(10, 2)), NULL, 1001)
INSERT [dbo].[employees] ([empID], [empName], [jobName], [managerID], [hireDate], [salay], [commission], [depID]) VALUES (68319, N'KAYLING', N'PRESIDENT', NULL, CAST(0x71180B00 AS Date), CAST(6000.00 AS Decimal(10, 2)), NULL, 1001)
/****** Object:  Table [dbo].[Department]    Script Date: 04/30/2019 21:23:59 ******/
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
INSERT [dbo].[Department] ([depID], [depName], [depLocation]) VALUES (1001, N'FINANCE', N'SYDNEY')
INSERT [dbo].[Department] ([depID], [depName], [depLocation]) VALUES (2001, N'AUDIT', N'MELBOURNE')
INSERT [dbo].[Department] ([depID], [depName], [depLocation]) VALUES (3001, N'MARKETING', N'PERTH')
INSERT [dbo].[Department] ([depID], [depName], [depLocation]) VALUES (4001, N'PRODUCTION', N'BRISBANE')
