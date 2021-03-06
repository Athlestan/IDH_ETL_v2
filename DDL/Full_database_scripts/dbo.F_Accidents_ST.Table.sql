USE [IDH_DWH]
GO
/****** Object:  Table [dbo].[F_Accidents_ST]    Script Date: 2018-12-01 17:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_Accidents_ST](
	[ACCIDENT_DETAILS_RK] [bigint] NULL,
	[ACCIDENT_SEVERITY_RK] [bigint] NULL,
	[REGION_RK] [bigint] NULL,
	[ROAD_TYPE_RK] [bigint] NULL,
	[WEATHER_RK] [bigint] NULL,
	[Speed_Limit] [int] NULL,
	[Daty_dt] [date] NULL,
	[Female_driver_cnt] [bigint] NULL,
	[Male_drive_cnt] [bigint] NULL,
	[SPEED_LIMIT_RK] [int] NULL,
	[TIME_RK] [int] NULL
) ON [PRIMARY]
GO
