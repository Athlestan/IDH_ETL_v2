

CREATE PROCEDURE dbo.proc_insert_time_of_day
AS
BEGIN
   	-- SET NOCOUNT ON added to prevent extra result sets from
   	-- interfering with SELECT statements.
   	SET NOCOUNT ON;
 
   	INSERT INTO dbo.D_TIME_OF_DAY (Time_from, Time_to,  Time_of_day)
   	VALUES ('22:00:00.000','05:59:59.000','night');
   	INSERT INTO dbo.D_TIME_OF_DAY (Time_from, Time_to,  Time_of_day)
   	VALUES ('06:00:00.000','09:59:59.000','morning');
   	INSERT INTO dbo.D_TIME_OF_DAY (Time_from, Time_to,  Time_of_day)
   	VALUES ('10:00:00.000','11:59:59.000','forenoon');
   	INSERT INTO dbo.D_TIME_OF_DAY (Time_from, Time_to,  Time_of_day)
   	VALUES ('12:00:00.000','14:59:59.000','early afternoon');
   	INSERT INTO dbo.D_TIME_OF_DAY (Time_from, Time_to,  Time_of_day)
   	VALUES ('15:00:00.000','17:59:59.000','late afternoon');
   	INSERT INTO dbo.D_TIME_OF_DAY (Time_from, Time_to,  Time_of_day)
   	VALUES ('18:00:00.000','21:59:59.000','evening');
 
 
END
GO
