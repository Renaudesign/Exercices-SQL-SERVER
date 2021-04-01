USE [development]

-- EXO 1 correction
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'languages')
BEGIN
SELECT
[frameworks].[name] AS [framework],
[languages].[name] AS [language]
FROM [frameworks]
RIGHT JOIN [languages] ON [frameworks].[languagesId] = [languages].[id]
END

-- EXO 1 Afficher tous les **frameworks** associés à leurs langages. Si un langage n'a pas de framework **l'afficher aussi**.
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'languages')
BEGIN
SELECT [frameworks].[name], [languages].[name]
FROM [frameworks]
FULL OUTER JOIN [languages] ON [frameworks].[languagesId] = [languages].[id]
END

-- EXO 2 Afficher tous les **frameworks** associés à leurs langages. Si un langage n'a pas de framework **ne pas l'afficher**.
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'languages')
BEGIN
SELECT [frameworks].[name], [languages].[name]
FROM [frameworks]
INNER JOIN [languages] ON [frameworks].[languagesId] = [languages].[id]
END

-- EXO 3 Afficher le nombre de **framework** qu'a un langage.
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'frameworks')
BEGIN
SELECT 
[dbo].[languages].[name], COUNT([dbo].[frameworks].[languagesId]) as [frameworks count]
FROM [languages]
	LEFT JOIN [frameworks]
	ON [languages].[id] = [frameworks].[languagesId]
GROUP BY [dbo].[languages].[name]
END

-- EXO 4 Afficher les langages ayant plus de **3** frameworks.
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'frameworks')
BEGIN
SELECT 
[lg].[name], COUNT([fw].[languagesId]) as [frameworks count]
FROM [languages] AS [lg]
	LEFT JOIN [frameworks] AS [fw]
	ON [lg].[id] = [fw].[languagesId]
GROUP BY [lg].[name]
HAVING COUNT([fw].[languagesId]) > 3
END


