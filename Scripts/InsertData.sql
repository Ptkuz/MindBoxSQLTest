DECLARE @ProductIdOne uniqueidentifier = NEWID();
DECLARE @ProductIdTwo uniqueidentifier = NEWID();
DECLARE @ProductIdThree uniqueidentifier = NEWID();
DECLARE @ProductIdFour uniqueidentifier = NEWID();
DECLARE @ProductIdFive uniqueidentifier = NEWID();

INSERT INTO Product(Id, Name)
VALUES 
(@ProductIdOne, 'Товар первый'),
(@ProductIdTwo, 'Товар второй'),
(@ProductIdThree, 'Товар третий'),
(@ProductIdFour, 'Товар четвертый'),
(@ProductIdFive, 'Товар пятый')

DECLARE @CategoryIdOne uniqueidentifier = NEWID();
DECLARE @CategoryIdTwo uniqueidentifier = NEWID();
DECLARE @CategoryIdThree uniqueidentifier = NEWID();
DECLARE @CategoryIdFour uniqueidentifier = NEWID();

INSERT INTO Category(Id, [Name])
VALUES 
(@CategoryIdOne, 'Категория первая'),
(@CategoryIdTwo, 'Категория вторая'),
(@CategoryIdThree, 'Категория третья'),
(@CategoryIdFour, 'Категория четвертая')

INSERT INTO ProductCategory([ProductId], [CategoryId])
VALUES
(@ProductIdOne, @CategoryIdOne),
(@ProductIdOne, @CategoryIdTwo),
(@ProductIdOne, @CategoryIdThree),
(@ProductIdTwo, @CategoryIdTwo),
(@ProductIdTwo, @CategoryIdThree),
(@ProductIdThree, @CategoryIdThree),
(@ProductIdFour, @CategoryIdFour),
(@ProductIdFour, @CategoryIdOne)