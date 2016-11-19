CREATE TABLE [dbo].[Recipes]
(
	[Id] INT NOT NULL PRIMARY KEY, 
	[Name] NCHAR(20) NOT NULL, 
	[Cuisine] NCHAR(15) NOT NULL, 
	[Category] NCHAR(10) NOT NULL, 
	[Descriptions] NTEXT NULL, 
	[IsPrivate] BIT NULL
)