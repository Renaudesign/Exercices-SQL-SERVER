--EXO 1
USE [webDevelopment]
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'languages')
BEGIN
SELECT *
FROM [dbo].[languages]
END

--EXO 2
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'languages')
BEGIN
SELECT [version]
FROM [dbo].[languages]
WHERE [language] = 'PHP';
END

--EXO 3
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'languages')
BEGIN
SELECT *
FROM [dbo].[languages]
WHERE [language] = 'PHP' OR language = 'JavaScript';
END

--EXO 4
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'languages')
BEGIN
SELECT *
FROM [dbo].[languages]
WHERE id IN(3,5,7);
END

--EXO 5
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'languages')
BEGIN
SELECT TOP(2) id, [language], version
FROM [dbo].[languages]
WHERE [language] = 'JavaScript';
END

--EXO 6
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'languages')
BEGIN
SELECT *
FROM [dbo].[languages]
WHERE [language] != 'PHP';
END

--EXO 7
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'languages')
BEGIN
SELECT *
FROM [dbo].[languages]
ORDER BY [language]
END