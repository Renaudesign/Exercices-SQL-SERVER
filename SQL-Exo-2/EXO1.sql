USE [webDevelopment]
IF NOT EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'languages')
BEGIN
CREATE TABLE [languages]
(
[id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
[language] NVARCHAR(50)
)
END

IF NOT EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'tools')
BEGIN
CREATE TABLE [tools]
(
id int not null identity(1,1) PRIMARY KEY,
tool NVARCHAR(50),
)
END

IF NOT EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'frameworks')
BEGIN
CREATE TABLE [frameworks]
(
id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
name NVARCHAR(50),
)
END

IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'tools')
BEGIN
DROP TABLE tools;
END

IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'libraries')
BEGIN
DROP TABLE [libraries];
END