-- =========================================
-- sample_data.sql
-- E-Commerce Inventory & Sales Analysis
-- =========================================

-- ----------------------
-- Suppliers
-- ----------------------
INSERT INTO Suppliers (SupplierID, SupplierName, Country) VALUES
(1, 'Global Tech Supplies', 'USA'),
(2, 'Digital Goods Co', 'Canada'),
(3, 'Home & More', 'UK');

-- ----------------------
-- Products
-- ----------------------
INSERT INTO Products (ProductID, ProductName, Category, SupplierID, Price, StockQty) VALUES
(1, 'Wireless Mouse', 'Electronics', 1, 25.99, 50),
(2, 'Mechanical Keyboard', 'Electronics', 1, 79.99, 30),
(3, 'Laptop Stand', 'Office', 2, 35.50, 20),
(4, 'Water Bottle', 'Home', 3, 15.00, 100),
(5, 'Desk Lamp', 'Office', 2, 45.75, 25),
(6, 'HD Webcam', 'Electronics', 1, 65.00, 15),
(7, 'Notebook Set', 'Office', 3, 12.00, 60),
(8, 'Bluetooth Speaker', 'Electronics', 2, 55.00, 40);

-- ----------------------
-- Customers
-- ----------------------
INSERT INTO Customers (CustomerID, Name, Email, Country) VALUES
(1, 'Alice Johnson', 'alice.j@example.com', 'USA'),
(2, 'Bob Smith', 'bob.s@example.com', 'Canada'),
(3, 'Carol Lee', 'carol.lee@example.com', 'UK'),
(4, 'David Kim', 'david.kim@example.com', 'USA'),
(5, 'Eve Torres', 'eve.torres@example.com', 'Canada');

-- ----------------------
-- Sales
-- ----------------------
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, QuantitySold) VALUES
(1, 1, 1, '2026-01-05', 2),
(2, 2, 1, '2026-01-07', 1),
(3, 3, 2, '2026-01-10', 1),
(4, 4, 3, '2026-01-15', 3),
(5, 5, 4, '2026-01-20', 1),
(6, 6, 5, '2026-01-22', 1),
(7, 7, 2, '2026-01-25', 2),
(8, 8, 3, '2026-01-28', 1),
(9, 1, 4, '2026-02-01', 1),
(10, 2, 5, '2026-02-03', 2),
(11, 3, 1, '2026-02-05', 1),
(12, 4, 2, '2026-02-07', 2);
