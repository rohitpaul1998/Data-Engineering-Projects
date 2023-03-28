USE [retail_data_warehousing_solution]
GO

/****** Object:  Table [dbo].[retail_warehousing_stg]    Script Date: 27-03-2023 20:22:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[retail_warehousing_stg](
	[Date received] [varchar](255) NULL,
	[Product] [varchar](255) NULL,
	[Sub-product] [nvarchar](255) NULL,
	[Issue] [varchar](255) NULL,
	[Sub-issue] [varchar](255) NULL,
	[Consumer complaint narrative] [nvarchar](max) NULL,
	[Company public response] [varchar](255) NULL,
	[Company] [nvarchar](255) NULL,
	[State] [varchar](255) NULL,
	[ZIP code] [varchar](255) NULL,
	[Tags] [varchar](255) NULL,
	[Consumer consent provided] [varchar](255) NULL,
	[Submitted via] [varchar](255) NULL,
	[Date sent to company] [varchar](255) NULL,
	[Company response to consumer] [varchar](255) NULL,
	[Timely response] [varchar](255) NULL,
	[Consumer disputed] [varchar](255) NULL,
	[Complaint ID] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

