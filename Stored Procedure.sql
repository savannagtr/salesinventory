--1.
CREATE PROCEDURE availablecolors
AS
SELECT * FROM dbo.Colors
GO
--execute the procedure; list the colors available
EXEC availablecolors

--2.
CREATE PROCEDURE suppl
AS
SELECT * FROM dbo.Suppliers
GO
--execute the procedure; list the suppliers
EXEC suppl

3.
CREATE PROCEDURE wrhouse
AS
SELECT * FROM dbo.Warehouse
GO
--execute the procedure; list the warehouse/s available
EXEC wrhouse

--4. 
CREATE PROCEDURE CatFinder
AS
SELECT * FROM Products as P 
JOIN Category as C 
ON P.CategoryID = C.CategoryID
 WHERE CategoryName = 'TShirt'
GO
--execute
EXEC CatFinder