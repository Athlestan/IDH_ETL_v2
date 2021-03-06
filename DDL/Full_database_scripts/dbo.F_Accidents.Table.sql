USE [IDH_DWH]
GO
/****** Object:  Table [dbo].[F_Accidents]    Script Date: 2018-12-01 17:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_Accidents](
	[ACCIDENT_DETAILS_RK] [bigint] NOT NULL,
	[TIME_RK] [int] NOT NULL,
	[ACCIDENT_SERVERITY_RK] [bigint] NOT NULL,
	[REGION_RK] [bigint] NOT NULL,
	[ROAD_TYPE_RK] [bigint] NOT NULL,
	[WEATHER_RK] [bigint] NOT NULL,
	[SPEED_LIMIT_RK] [int] NOT NULL,
	[TIME_OF_DAY_RK] [int] NOT NULL,
	[Female_drive_cnt] [bigint] NULL,
	[Male_driver_cnt] [bigint] NULL
) ON [PRIMARY]
GO
