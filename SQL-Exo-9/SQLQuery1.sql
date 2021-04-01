USE [france]

-- EXO 1
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'regions')
BEGIN
SELECT *
FROM [regions]
END

-- EXO 2
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'departements')
BEGIN
SELECT [departements].[region], [departements].[cheflieu], [departements].[dep], [departements].[nom_dep]
FROM [departements]
ORDER BY [dep]
END

-- EXO 3
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'villes')
BEGIN
SELECT [villes].[ville], [villes].[cp], [villes].[dep], [villes].[region]
FROM [villes]
WHERE [dep] = '60'
ORDER BY [cp]
END

-- EXO 4
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'villes')
BEGIN
SELECT TOP 3 [villes].[ville], [villes].[cp], [villes].[dep], [villes].[region]
FROM [villes]
WHERE [cp] = '60400'
ORDER BY [ville]
END

-- EXO 5
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'villes')
BEGIN
SELECT [villes].[ville], [villes].[cp], [villes].[dep], [villes].[region]
FROM [villes]
WHERE [ville] LIKE '%saint%'
END

-- EXO 6
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'departements')
BEGIN
SELECT [departements].[nom_dep], COUNT([villes].[id]) as [nombre villes]
FROM [departements]
	LEFT JOIN [villes]
	ON [departements].[dep] = [villes].[dep]
GROUP BY [departements].[nom_dep]
END

-- EXO 7
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'villes')
BEGIN
SELECT [villes].[ville], [regions].[nom_region]
FROM [villes]
INNER JOIN [regions] 
ON  [villes].[region] =  [regions].[region]
WHERE  [regions].[nom_region] = 'Picardie'
END

-- EXO 8
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'departements')
BEGIN
SELECT
	[regions].[nom_region],
	COUNT([villes].[dep]) as [nombre villes Dep],
	[departements].[nom_dep],
	COUNT([villes].[region]) as [nombre ville Region]
FROM [regions]
	RIGHT JOIN [villes]
	ON [regions].[region] = [villes].[region]
	RIGHT JOIN [departements]
	ON [departements].[dep] = [villes].[dep]
GROUP BY [regions].[nom_region], [departements].[nom_dep]
END

-- EXO 8 TEST
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'departements')
BEGIN
SELECT
	[departements].[nom_dep],
	COUNT([villes].[region]) as [nb villes dep]
FROM [departements]
	RIGHT JOIN [villes]
	ON [departements].[dep] = [villes].[dep]
GROUP BY [departements].[nom_dep]
END

-- EXO 8 TEST 2
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'departements')
BEGIN
SELECT
	[regions].[nom_region],
	COUNT([villes].[region]) as [nb villes region]
FROM [regions]
	RIGHT JOIN [villes]
	ON [regions].[region] = [villes].[region]
GROUP BY [regions].[nom_region]
END

-- EXO 8 TEST UNION ALL
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'departements')
BEGIN
SELECT
	[departements].[nom_dep],
	COUNT([villes].[region]) as [nb villes dep]
FROM [departements]
	RIGHT JOIN [villes]
	ON [departements].[dep] = [villes].[dep]
GROUP BY [departements].[nom_dep]
UNION ALL
SELECT
	[regions].[nom_region],
	COUNT([villes].[region]) as [nb villes region]
FROM [regions]
	RIGHT JOIN [villes]
	ON [regions].[region] = [villes].[region]
GROUP BY [regions].[nom_region]
END

SELECT
[regions].[nom_region], [departements].[nom_dep],
COUNT([villes].[id]) AS nombrevilles
FROM [departements]
LEFT JOIN [regions] ON [regions].[region] = [departements].[region]
LEFT JOIN [villes] ON [departements].[dep] = [villes].[dep]
GROUP BY [regions].[nom_region], [departements].[nom_dep]
WITH ROLLUP