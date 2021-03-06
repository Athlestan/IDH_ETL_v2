USE [IDH_DWH]
GO
/****** Object:  Table [dbo].[D_ACCIDENT_DETAILS]    Script Date: 2018-12-01 17:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_ACCIDENT_DETAILS](
	[ACCIDENT_DETAILS_RK] [bigint] IDENTITY(1,1) NOT NULL,
	[Accident_Index] [varchar](13) NULL,
	[Longitude] [numeric](9, 7) NULL,
	[Latitude] [numeric](9, 7) NULL,
	[Motorcycle_cnt] [int] NULL,
	[Vehicles_cnt] [bigint] NULL,
	[Casualties_cnt] [bigint] NULL,
	[Accident_Time] [time](7) NULL,
 CONSTRAINT [PK_D_ACCIDENT_DETAILS] PRIMARY KEY CLUSTERED 
(
	[ACCIDENT_DETAILS_RK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
