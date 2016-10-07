USE [master]
GO
CREATE DATABASE [ApressFinancial] ON 
( FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\ApressFinancial.mdf' ),
( FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\ApressFinancial_log.ldf' )
 FOR ATTACH
GO
if not exists (select name from master.sys.databases sd where name = N'ApressFinancial' and SUSER_SNAME(sd.owner_sid) = SUSER_SNAME() ) EXEC [ApressFinancial].dbo.sp_changedbowner @loginame=N'XP-PRO\rdewson', @map=false
GO
