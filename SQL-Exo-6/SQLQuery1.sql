USE [webDevelopment]

--EXO 1
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'Frameworks')
BEGIN
SELECT *
FROM [dbo].[frameworks]
WHERE [version] LIKE '2.%'
OR [version] = '2';
END

--EXO 2
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'Frameworks')
BEGIN
SELECT *
FROM [dbo].[frameworks]
WHERE [id] IN (1,3);
END

--EXO 3
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'ide')
BEGIN
SELECT [name], [version], FORMAT([date], 'dd/MM/yyyy') AS [Année]
FROM [dbo].[ide]
WHERE [date] BETWEEN '2010-01-01' AND '2011-12-31'
ORDER BY [date]
END