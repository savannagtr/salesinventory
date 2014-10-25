
--1.
CREATE VIEW 
[clothes] AS
SELECT ProductID, ColorID, CategoryID, ProductName, Price
FROM dbo.Products

--execute

SELECT * FROM [clothes]

--2.
CREATE VIEW 
prods AS
  SELECT Category.CategoryID, Products.ProductName, Products.Price
  FROM Category
  INNER JOIN Products
  ON Category.CategoryID = Products.CategoryID
  WHERE Category.CategoryName = 'Tshirt';

  --execute
SELECT * FROM prods
 
--3.
CREATE VIEW trans
AS
SELECT TaxRate.TaxID , Sales.SalesID, Sales.DateSold
FROM TaxRate
INNER JOIN Sales
ON TaxRate.TaxID = Sales.TaxID
WHERE TaxRate.TaxType = 'Senior'; 

--execute
select * FROM trans

--4. 
CREATE VIEW supp
AS
SELECT Suppliers.SupplierID, Products.ProductID, Products.ProductName
FROM Suppliers
INNER JOIN Products
ON Suppliers.SupplierID = Products.SupplierID
WHERE Suppliers.SupplierName = 'Hannah Lat';

--execute
select * FROM supp

--5.
CREATE VIEW retn
AS 
SELECT Returns.ProductID, Products.CategoryID, Products.SupplierID, Products.Price
FROM Returns
INNER JOIN Products
ON Returns.ProductID= Products.ProductID
WHERE Returns.ReturnID = '';

--execute 
select * FROM retn