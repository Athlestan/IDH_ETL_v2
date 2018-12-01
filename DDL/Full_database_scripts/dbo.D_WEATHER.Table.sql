USE [IDH_DWH]
GO
/****** Object:  Table [dbo].[D_WEATHER]    Script Date: 2018-12-01 17:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_WEATHER](
	[WEATHER_RK] [int] NOT NULL,
	[Weather] [varchar](max) NULL,
 CONSTRAINT [PK_D_WEATHER] PRIMARY KEY CLUSTERED 
(
	[WEATHER_RK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
