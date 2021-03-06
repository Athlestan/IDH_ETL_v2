USE [IDH_DWH]
GO
/****** Object:  StoredProcedure [dbo].[proc_insert_time_of_day]    Script Date: 2018-12-01 17:58:53 ******/
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
