DROP PROCEDURE AddRecipe;
DROP TABLE Recipes;
DROP TABLE Categories;
DROP TABLE Cuisines;

CREATE TABLE Categories
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Name] NCHAR(20) UNIQUE NOT NULL
);

INSERT INTO Categories(Name)
	VALUES('Breakfast')
;
INSERT INTO Categories(Name)
	VALUES('Dessert')
;
INSERT INTO Categories(Name)
	VALUES('Vegeterian')
;
INSERT INTO Categories(Name)
	VALUES('Drink')
;
INSERT INTO Categories(Name)
	VALUES('Main Dish')
;
INSERT INTO Categories(Name)
	VALUES('Salad')
;
INSERT INTO Categories(Name)
	VALUES('Sea Food')
;
INSERT INTO Categories(Name)
	VALUES('Soup')
;


CREATE TABLE Cuisines
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Name] NCHAR(20) UNIQUE NOT NULL
);

INSERT INTO Cuisines(Name) VALUES('East Asian');
INSERT INTO Cuisines(Name) VALUES('African');
INSERT INTO Cuisines(Name) VALUES('Italina');
INSERT INTO Cuisines(Name) VALUES('Canadian');
INSERT INTO Cuisines(Name) VALUES('Middle Eastern');
INSERT INTO Cuisines(Name) VALUES('Indian');
INSERT INTO Cuisines(Name) VALUES('Mexican');


CREATE TABLE [dbo].[Recipes]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Name] NCHAR(20) NOT NULL,
	[Author] NCHAR(50) NOT NULL,
	[CategoryId] INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Categories](Id),
	[CookingTime] TIME,
	[CuisineId] INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Cuisines](Id),
	[IsPrivate] BIT NULL DEFAULT 0,
	[Description] NTEXT NOT NULL
);


CREATE PROCEDURE AddRecipe (
	@name NCHAR(20),
	@author NCHAR(50),
	@category NCHAR(20),
	@cookingTime TIME,
	@cuisineId INT,
	@isPrivate BIT,
	@description NTEXT
)
AS
BEGIN
	declare @catId AS INT;
	SELECT @catId = Id 
		FROM Categories 
		WHERE UPPER(@category) = UPPER(Name);
	IF (@catId IS NULL)
	BEGIN
		INSERT INTO Categories(Name) VALUES(@category);
		SELECT @catId = Id 
			FROM Categories 
			WHERE UPPER(@category) = UPPER(Name);
	END
	INSERT INTO Recipes(Name, Author, CategoryId, CookingTime, CuisineId, IsPrivate, Description)
		VALUES(@name, @author, @catId, @cookingTime, @cuisineId, @isPrivate, @description);
END
