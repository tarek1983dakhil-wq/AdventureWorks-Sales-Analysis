
USE AdventureWorks2022;
GO

SELECT
    COUNT(*) AS TotalOrders,
    ROUND(SUM(TotalDue), 2) AS TotalRevenue,
    ROUND(AVG(TotalDue), 2) AS AverageOrderValue
FROM Sales.SalesOrderHeader;
