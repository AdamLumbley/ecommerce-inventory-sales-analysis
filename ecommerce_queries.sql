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
