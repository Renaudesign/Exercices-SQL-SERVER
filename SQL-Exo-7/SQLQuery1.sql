USE [webDevelopment]

--EXO 1
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'Languages')
BEGIN
DELETE
FROM dbo.Languages
WHERE [language] = 'HTML';
END

--EXO 2
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'Frameworks')
BEGIN
UPDATE [frameworks]
SET
	[framework] = 'Symfony2'
WHERE
    [framework] = 'Symfony' 
END

--EXO 3
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'Languages')
BEGIN
ALTER TABLE dbo.[languages]
ALTER COLUMN [version] NUMERIC(3,1);
UPDATE [languages]
SET
	[version] = 5.1
WHERE
    [language] = 'JavaScript' AND [version] = 5
END