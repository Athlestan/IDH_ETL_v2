CREATE PROCEDURE  proc_insert_time
   	
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
