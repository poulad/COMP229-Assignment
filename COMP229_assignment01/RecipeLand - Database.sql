DROP PROCEDURE AddRecipe;
DROP TABLE Recipes;
DROP TABLE Cuisines;
DROP TABLE Categories;

CREATE TABLE Categories
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Name] NCHAR(50) UNIQUE NOT NULL
);

INSERT INTO Categories(Name) VALUES('Breakfast');
INSERT INTO Categories(Name) VALUES('Dessert');
INSERT INTO Categories(Name) VALUES('Vegeterian');
INSERT INTO Categories(Name) VALUES('Drink');
INSERT INTO Categories(Name) VALUES('Main Dish');
INSERT INTO Categories(Name) VALUES('Salad');
INSERT INTO Categories(Name) VALUES('Sea Food');
INSERT INTO Categories(Name) VALUES('Soup');


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
	[Name] NCHAR(60) NOT NULL,
	[User_Id] UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES [dbo].[aspnet_Users](UserId),
	[CategoryId] INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Categories](Id),
	[CookingTime] INT,
	[Image_File] CHAR(20),
	[CuisineId] INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Cuisines](Id),
	[IsPrivate] BIT NOT NULL DEFAULT 0,
	[Description] NTEXT NOT NULL
);

/*
CREATE PROCEDURE AddRecipe (
	@name NCHAR(60),
	@author NCHAR(100),
	@category NCHAR(50),
	@cookingTime INT,
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
*/
