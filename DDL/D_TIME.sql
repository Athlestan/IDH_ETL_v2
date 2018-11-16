use IDH_DWH;
CREATE TABLE [dbo].[D_TIME](
   	[TIME_RK] [int] IDENTITY(1,1) NOT NULL,
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


