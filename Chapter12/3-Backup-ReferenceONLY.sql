No need to run as its for reference only


DECLARE @BackupSet AS INT
SELECT @BackupSet = position 
  FROM msdb..backupset 
 WHERE database_name='ApressFinancial' 
   AND backup_set_id=
                       (SELECT MAX(backup_set_id) 
                       FROM msdb..backupset s
                       WHERE database_name='ApressFinancial')
IF @BackupSet IS NULL 
BEGIN 
    RAISERROR('Verify failed. Backup information for database 
        ''ApressFinancial'' not found.', 16, 1) 
END
RESTORE VERIFYONLY 
FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Backup\
ApressFinancial\ApressFinancial_backup_200508061136.bak' 
WITH FILE = @BackupSet,  
NOUNLOAD,  
NOREWIND
