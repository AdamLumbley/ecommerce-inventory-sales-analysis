-- =========================================
-- Query 1: Total revenue by product category
-- =========================================

SELECT
    P.Category,
    SUM(S.QuantitySold * P.Price) AS TotalRevenue
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY P.Category
ORDER BY TotalRevenue DESC;

-- =========================================
-- Query 2: Top 5 suppliers by total products sold
-- =========================================

SELECT
    Sup.SupplierName,
    SUM(S.QuantitySold) AS TotalProductsSold
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
JOIN Suppliers Sup ON P.SupplierID = Sup.SupplierID
GROUP BY Sup.SupplierName
ORDER BY TotalProductsSold DESC
LIMIT 5;

-- =========================================
-- Query 3: Products running low in inventory
-- =========================================

SELECT
    ProductName,
    Category,
    StockQty
FROM Products
WHERE StockQty < 20
ORDER BY StockQty ASC;

-- =========================================
-- Query 4: Month-over-Month Sales Trends
-- =========================================

SELECT
    DATE_FORMAT(SaleDate, '%Y-%m') AS SaleMonth,
    SUM(QuantitySold * P.Price) AS TotalRevenue,
    SUM(QuantitySold) AS TotalUnitsSold
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY DATE_FORMAT(SaleDate, '%Y-%m')
ORDER BY SaleMonth;

-- =========================================
-- Query 5: Most Popular Product per Category
-- =========================================

SELECT
    Category,
    ProductName,
    SUM(QuantitySold) AS TotalUnitsSold
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY Category, ProductName
ORDER BY Category, TotalUnitsSold DESC;


