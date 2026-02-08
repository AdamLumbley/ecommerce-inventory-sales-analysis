-- =========================================
-- schema.sql
-- E-Commerce Inventory & Sales Analysis
-- =========================================

-- ----------------------
-- Table: Suppliers
-- ----------------------
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100) NOT NULL,
    Country VARCHAR(50)
);

-- ----------------------
-- Table: Products
-- ----------------------
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    SupplierID INT,
    Price DECIMAL(10,2),
    StockQty INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

-- ----------------------
-- Table: Customers
-- ----------------------
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Country VARCHAR(50)
);

-- ----------------------
-- Table: Sales
-- ----------------------
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    SaleDate DATE,
    QuantitySold INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
