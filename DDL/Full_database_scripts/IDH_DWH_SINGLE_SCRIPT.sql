USE [master]
GO
/****** Object:  Database [IDH_DWH]    Script Date: 2018-12-01 18:00:12 ******/
CREATE DATABASE [IDH_DWH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IDH_DWH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\IDH_DWH.mdf' , SIZE = 3481600KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'IDH_DWH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\IDH_DWH_log.ldf' , SIZE = 5840896KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [IDH_DWH] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IDH_DWH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IDH_DWH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IDH_DWH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IDH_DWH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IDH_DWH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IDH_DWH] SET ARITHABORT OFF 
GO
ALTER DATABASE [IDH_DWH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IDH_DWH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IDH_DWH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IDH_DWH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IDH_DWH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IDH_DWH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IDH_DWH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IDH_DWH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IDH_DWH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IDH_DWH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [IDH_DWH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IDH_DWH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IDH_DWH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IDH_DWH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IDH_DWH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IDH_DWH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IDH_DWH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IDH_DWH] SET RECOVERY FULL 
GO
ALTER DATABASE [IDH_DWH] SET  MULTI_USER 
GO
ALTER DATABASE [IDH_DWH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IDH_DWH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IDH_DWH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IDH_DWH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IDH_DWH] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'IDH_DWH', N'ON'
GO
ALTER DATABASE [IDH_DWH] SET QUERY_STORE = OFF
GO
USE [IDH_DWH]
GO
/****** Object:  Table [dbo].[D_ACCIDENT_DETAILS]    Script Date: 2018-12-01 18:00:12 ******/
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
/****** Object:  Table [dbo].[D_ACCIDENT_SEVERITY]    Script Date: 2018-12-01 18:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_ACCIDENT_SEVERITY](
	[ACCIDENT_SEVERITY_RK] [smallint] NULL,
	[Accident_Severity] [varchar](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_REGION]    Script Date: 2018-12-01 18:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_REGION](
	[REGION_RK] [smallint] NULL,
	[Region_nm] [varchar](29) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_ROAD_TYPE]    Script Date: 2018-12-01 18:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_ROAD_TYPE](
	[ROAD_TYPE_RK] [smallint] NULL,
	[Road_Type] [varchar](28) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_SPEED_LIMIT]    Script Date: 2018-12-01 18:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_SPEED_LIMIT](
	[SPEED_LIMIT_RK] [int] IDENTITY(1,1) NOT NULL,
	[Speed_Limit] [int] NULL,
 CONSTRAINT [PK_D_SPEED_LIMIT] PRIMARY KEY CLUSTERED 
(
	[SPEED_LIMIT_RK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_TIME]    Script Date: 2018-12-01 18:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_TIME](
	[TIME_RK] [int] IDENTITY(1,1) NOT NULL,
	[Day_dt] [date] NOT NULL,
	[Day] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Season] [int] NOT NULL,
	[Week_Day] [varchar](50) NOT NULL,
	[Month_nm] [varchar](50) NOT NULL,
	[Season_nm] [varchar](50) NOT NULL,
 CONSTRAINT [PK_D_TIME] PRIMARY KEY CLUSTERED 
(
	[TIME_RK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_TIME_OF_DAY]    Script Date: 2018-12-01 18:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_TIME_OF_DAY](
	[TIME_OF_DAY_RK] [int] IDENTITY(1,1) NOT NULL,
	[Time_from] [time](3) NOT NULL,
	[Time_to] [time](3) NOT NULL,
	[Time_of_day] [varchar](max) NOT NULL,
 CONSTRAINT [PK_D_TIME_OF_DAY] PRIMARY KEY CLUSTERED 
(
	[TIME_OF_DAY_RK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_WEATHER]    Script Date: 2018-12-01 18:00:12 ******/
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
/****** Object:  Table [dbo].[F_Accidents]    Script Date: 2018-12-01 18:00:12 ******/
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
/****** Object:  Table [dbo].[F_Accidents_ST]    Script Date: 2018-12-01 18:00:12 ******/
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
/****** Object:  StoredProcedure [dbo].[proc_insert_time]    Script Date: 2018-12-01 18:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE  [dbo].[proc_insert_time]
   	
AS
BEGIN
   	-- SET NOCOUNT ON added to prevent extra result sets from
   	-- interfering with SELECT statements.
   	SET NOCOUNT ON;
 
	DECLARE @korektor INT = 0
   	DECLARE @data DATE
   	DECLARE @day varchar(50), @month varchar(50),  @season varchar(50), @season_num int
 
   	WHILE @korektor < 4017 -- 10 lat
   	BEGIN
          	SELECT @data = DATEADD(DAY, @korektor, '2005-01-01')
   	
          	IF DATEPART(MM, @data) = 1 SET @month = 'January'
          	ELSE IF DATEPART(MM, @data) = 2 SET  @month = 'February'
          	ELSE IF DATEPART(MM, @data) = 3 SET  @month= 'March'
          	ELSE IF DATEPART(MM, @data) = 4 SET  @month = 'April'
          	ELSE IF DATEPART(MM, @data) = 5 SET  @month= 'May'
          	ELSE IF DATEPART(MM, @data) = 6 SET  @month = 'June'
          	ELSE IF DATEPART(MM, @data) = 7 SET  @month= 'July'
          	ELSE IF DATEPART(MM, @data) = 8   SET  @month = 'August'
          	ELSE IF DATEPART(MM, @data) = 9 SET  @month ='September'
          	ELSE IF DATEPART(MM, @data)=10 SET  @month='October'
          	ELSE IF DATEPART(MM, @data) = 11 SET  @month='November'
          	ELSE SET  @month = 'December'
   	
          	IF DATEPART(W, @data) = 1 SET @day = 'Sunday'
          	ELSE IF DATEPART(W, @data) = 2  SET @day = 'Monday'
          	ELSE IF DATEPART(W, @data) = 3  SET @day =  'Tuesday'
          	ELSE IF DATEPART(W, @data) = 4  SET @day =  'Wednesday'
          	ELSE IF DATEPART(W, @data) = 5  SET @day = 'Thursday'
          	ELSE IF DATEPART(W, @data) = 6  SET @day =  'Friday'
          	ELSE SET @day =  'Saturday'
 
          	IF  DATEPART(MM, @data) = 1 OR  DATEPART(MM, @data) = 2 OR  DATEPART(MM, @data) = 12
          	BEGIN
                 	SET @season = 'Winter'
                 	SET @season_num = 1;
          	END
          	IF  DATEPART(MM, @data) >=3 AND  DATEPART(MM, @data) <= 5
          	BEGIN
                 	SET @season = 'Spring';
                 	SET @season_num = 2;
          	END
          	IF  DATEPART(MM, @data) >=6 AND  DATEPART(MM, @data) <= 8
          	BEGIN
                 	SET @season = 'Summer';
                 	SET @season_num = 3;
          	END
          	IF DATEPART(MM, @data) >=9 AND DATEPART(MM, @data)  <= 11
          	BEGIN
                 	SET @season = 'Autumn';
                 	SET @season_num = 4;
          	END
 
          	INSERT INTO dbo.D_TIME
                 	VALUES(@data, DATEPART(DAY, @data), DATEPART(MM, @data), DATEPART(YEAR, @data), @season_num, @day, @month, @season)
          	SET @korektor = @korektor + 1
   	END
 
END
GO
/****** Object:  StoredProcedure [dbo].[proc_insert_time_of_day]    Script Date: 2018-12-01 18:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[proc_insert_time_of_day]
AS
BEGIN
   	-- SET NOCOUNT ON added to prevent extra result sets from
   	-- interfering with SELECT statements.
   	SET NOCOUNT ON;
 
   	INSERT INTO dbo.D_TIME_OF_DAY (Time_from, Time_to,  Time_of_day)
   	VALUES ('22:00:00.000','06:00:00.000','night');
   	INSERT INTO dbo.D_TIME_OF_DAY (Time_from, Time_to,  Time_of_day)
   	VALUES ('06:00:00.000','10:00:00.000','morning');
   	INSERT INTO dbo.D_TIME_OF_DAY (Time_from, Time_to,  Time_of_day)
   	VALUES ('10:00:00.000','12:00:00.000','forenoon');
   	INSERT INTO dbo.D_TIME_OF_DAY (Time_from, Time_to,  Time_of_day)
   	VALUES ('12:00:00.000','15:00:00.000','early afternoon');
   	INSERT INTO dbo.D_TIME_OF_DAY (Time_from, Time_to,  Time_of_day)
   	VALUES ('15:00:00.000','18:00:00.000','late afternoon');
   	INSERT INTO dbo.D_TIME_OF_DAY (Time_from, Time_to,  Time_of_day)
   	VALUES ('18:00:00.000','22:00:00.000','evening');
 
 
END
GO
USE [master]
GO
ALTER DATABASE [IDH_DWH] SET  READ_WRITE 
GO
