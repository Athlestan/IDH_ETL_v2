CREATE TABLE [dbo].[D_SPEED_LIMIT](
   	[SPEED_LIMIT_RK] [int] IDENTITY(1,1) NOT NULL,
   	[Speed_Limit] [int] NULL,
 CONSTRAINT [PK_D_SPEED_LIMIT] PRIMARY KEY CLUSTERED
(
   	[SPEED_LIMIT_RK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
