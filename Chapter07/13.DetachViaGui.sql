USE [master]
GO
EXEC master.dbo.sp_detach_db @dbname = N'ApressFinancial', @keepfulltextindexfile=N'true'
GO
