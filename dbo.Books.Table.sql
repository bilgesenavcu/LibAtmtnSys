USE [LibAtmtnSys]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 5/21/2025 5:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[Category] [varchar](50) NULL,
	[Author] [varchar](100) NULL,
	[ISBN] [varchar](20) NULL,
	[Publisher] [varchar](50) NULL,
	[Year] [int] NULL,
	[Edition] [varchar](20) NULL,
	[Language] [varchar](50) NULL,
	[IsAvailable] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Books] ADD  DEFAULT ((1)) FOR [IsAvailable]
GO
