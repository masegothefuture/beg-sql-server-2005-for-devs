USE [ApressFinancial]
GO
/****** Object:  Table [CustomerDetails].[Customers]    Script Date: 11/14/2005 21:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CustomerDetails].[Customers](
	[CustomerId] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerTitleId] [int] NOT NULL,
	[CustomerFirstName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CustomerOtherInitials] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CustomerLastName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AddressId] [bigint] NOT NULL,
	[AccountNumber] [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AccountTypeId] [int] NOT NULL,
	[ClearedBalance] [money] NOT NULL,
	[UnclearedBalance] [money] NOT NULL,
	[DateAddedd] [datetime] NULL
) ON [PRIMARY]

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table will hold the details of customers' ,@level0type=N'SCHEMA', @level0name=N'CustomerDetails', @level1type=N'TABLE', @level1name=N'Customers'
