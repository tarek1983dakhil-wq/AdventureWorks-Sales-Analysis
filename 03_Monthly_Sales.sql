
USE AdventureWorks2022;
GO

SELECT
    YEAR(OrderDate) AS SalesYear,
    MONTH(OrderDate) AS SalesMonth,
    COUNT(*) AS TotalOrders,
    ROUND(SUM(TotalDue), 2) AS TotalRevenue
FROM Sales.SalesOrderHeader
GROUP BY
    YEAR(OrderDate),
    MONTH(OrderDate)
ORDER BY
    SalesYear,
    SalesMonth;
