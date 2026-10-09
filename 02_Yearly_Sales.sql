
USE AdventureWorks2022;
GO

SELECT
    YEAR(OrderDate) AS SalesYear,
    COUNT(*) AS TotalOrders,
    ROUND(SUM(TotalDue), 2) AS TotalRevenue
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY SalesYear;
