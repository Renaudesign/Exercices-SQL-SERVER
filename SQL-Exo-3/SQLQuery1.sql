ALTER TABLE [dbo].[languages] 
ADD [versions] NVARCHAR(10)
GO

EXEC SP_RENAME'languages.versions','version','COLUMN'
GO

ALTER TABLE dbo.[frameworks]
ALTER COLUMN [version] NCHAR(10)
GO

USE Codex

ALTER TABLE dbo.clients
DROP COLUMN secondphonenumber
EXEC sp_RENAME 'clients.firstphonenumber','phonenumber','COLUMN'
GO

ALTER TABLE dbo.clients
ALTER COLUMN phonenumber NCHAR(10)
GO

ALTER TABLE dbo.clients
ADD zipcode NCHAR(10), city NCHAR(10)
GO
