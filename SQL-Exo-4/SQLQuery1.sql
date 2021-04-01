USE [webDevelopment]
IF EXISTS 
(SELECT * FROM sys.objects WHERE NAME = 'Languages')
BEGIN
INSERT INTO [Languages]([language],[version]) VALUES 
('JavaScript','5'),
('PHP', '5.2'),
('PHP', '5.4'),
('HTML', '5.1'),
('JavaScript', '6'),
('JavaScript', '7'),
('JavaScript', '8'),
('PHP', '7');
END