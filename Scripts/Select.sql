SELECT Product.Name AS [ProductName], Category.Name AS [CategoryName] FROM ProductCategory
RIGHT JOIN Product ON ProductCategory.ProductId = Product.Id
LEFT JOIN Category ON ProductCategory.CategoryId = Category.Id
