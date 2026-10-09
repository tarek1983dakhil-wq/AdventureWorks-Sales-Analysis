
USE AdventureWorks2022;
GO

SELECT TOP 10
    p.Name AS ProductName,
    SUM(d.OrderQty) AS TotalQuantitySold,
    ROUND(SUM(d.LineTotal), 2) AS TotalSales
FROM Sales.SalesOrderDetail AS d
JOIN Production.Product AS p
    ON d.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY TotalSales DESC;
