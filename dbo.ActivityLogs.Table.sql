USE LibAtmtnSys
GO
/****** Object:  Table [dbo].[ActivityLogs]    Script Date: 5/21/2025 5:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityLogs](
	[ActivityID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[Username] [varchar](50) NULL,
	[Role] [varchar](10) NULL,
	[ActivityType] [varchar](50) NULL,
	[BookName] [varchar](100) NULL,
	[Status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ActivityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
