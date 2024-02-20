CREATE DATABASE MindBoxTest
GO
USE [MindBoxTest]
GO
CREATE TABLE Product
(
	[Id] uniqueidentifier PRIMARY KEY,
	[Name] nvarchar(max) NOT NULL
)
GO
CREATE TABLE Category 
(
	[Id] uniqueidentifier PRIMARY KEY,
	[Name] nvarchar(max) NOT NULL
)
GO
CREATE TABLE ProductCategory
(
	ProductId uniqueidentifier FOREIGN KEY REFERENCES Product(Id),
	CategoryId uniqueidentifier FOREIGN KEY REFERENCES Category(Id)
	PRIMARY KEY(ProductId, CategoryId)
)






