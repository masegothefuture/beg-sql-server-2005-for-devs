RESTORE DATABASE [ApressFinancial] FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Backup\ApressFinancial.bak' WITH  FILE = 2,  NORECOVERY,  NOUNLOAD,  REPLACE,  STATS = 10
GO
RESTORE DATABASE [ApressFinancial] FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Backup\ApressFinancial.bak' WITH  FILE = 3,  NORECOVERY,  NOUNLOAD,  REPLACE,  STATS = 10
GO
RESTORE LOG [ApressFinancial] FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Backup\ApressFinancial.bak' WITH  FILE = 4,  NOUNLOAD,  STATS = 10
GO
