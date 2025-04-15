-- Create ECommerceDB
CREATE DATABASE ECommerceDB;

-- Use the database
USE ECommerceDB;

-- Create Products table
CREATE TABLE Products (
    Product_id INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    Type VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Status ENUM('In Stock', 'Out Of Stock') NOT NULL
);

-- Insert into Products
INSERT INTO Products VALUES
(1, 'Wireless Mouse', 'Electronics', 25.99, 'In Stock'),
(2, 'Leather Wallet', 'Accessories', 45.50, 'Out Of Stock'),
(3, 'Running Shoes', 'Apparel', 79.99, 'In Stock'),
(4, 'Smart Watch', 'Electronics', 199.99, 'In Stock'),
(5, 'Coffee Maker', 'Appliances', 89.99, 'Out Of Stock');

SELECT * FROM Products;

-- Create Customer table 
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL,
    ProductID INT,
    Email VARCHAR(100) UNIQUE NOT NULL,
	Contact VARCHAR(10) UNIQUE NOT NULL,
    
    FOREIGN KEY (ProductID) REFERENCES Products(Product_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

-- Insert into Customer
INSERT INTO Customer()
VALUES
(1, 'Aarav Sharma', 1, 'aarav.sharma@example.com','9321639401'),
(2, 'Vivaan Patel', 2, 'vivaan.patel@example.com','9321639402'),
(3, 'Aditya Verma', 3, 'aditya.verma@example.com','9321639403'),
(4, 'Anaya Iyer', 4, 'anaya.iyer@example.com','9321639404'),
(5, 'Diya Reddy', 5, 'diya.reddy@example.com','9321639405');

SELECT * FROM Customer;

-- Update Query
Update Products SET Product_id = 20 WHERE Product_id = 2;

-- Delete Query 
DELETE FROM Products WHERE Product_id = 1;

-- Create Orders table
CREATE TABLE Orders (
    Order_id INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    ShippingAddress VARCHAR(50) NOT NULL,
    OrderDate DATE NOT NULL,

    FOREIGN KEY (ProductID) REFERENCES Products(Product_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

-- Insert into Orders
INSERT INTO Orders VALUES
(101, 1, 1, 'Mumbai, India', '2025-04-01'),
(102, 2, 2, 'Delhi, India', '2025-04-02'),
(103, 3, 3, 'Bangalore, India', '2025-04-03'),
(104, 4, 4, 'Chennai, India', '2025-04-04'),
(105, 5, 5, 'Hyderabad, India', '2025-04-05');

SELECT * FROM Orders;

-- Update Query
Update Products SET Product_id = 10 WHERE Product_id = 1;

-- Delete Query 
DELETE FROM Products WHERE Product_id = 2;

-- Create Payments table
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    TransactionID VARCHAR(50) UNIQUE NOT NULL,
    OrderID INT,
    AmountPaid DECIMAL(10,2) NOT NULL,
    Method VARCHAR(50) NOT NULL,

    FOREIGN KEY (OrderID) REFERENCES Orders(Order_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

-- Insert into Payments table
INSERT INTO Payments (PaymentID, TransactionID, OrderID, AmountPaid, Method) VALUES
(1, 'TXN101ABC', 101, 25.99, 'Credit Card'),
(2, 'TXN102DEF', 102, 45.50, 'UPI'),
(3, 'TXN103GHI', 103, 79.99, 'Net Banking'),
(4, 'TXN104JKL', 104, 199.99, 'Debit Card'),
(5, 'TXN105MNO', 105, 89.99, 'Cash on Delivery');

SELECT * FROM Payments;

-- Update Query
Update Products SET Product_id = 30 WHERE Product_id = 3;

-- Delete Query 
DELETE FROM Orders WHERE Order_id = 103;

-- 8. Create Warehouse table
CREATE TABLE Warehouse (
    WarehouseID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Location VARCHAR(50) NOT NULL,
    no_of_employess INT,

    FOREIGN KEY (OrderID) REFERENCES Orders(Order_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    FOREIGN KEY (ProductID) REFERENCES Products(Product_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

-- Insert into Warehouse
INSERT INTO Warehouse VALUES
(1, 101, 1, 'Mumbai', 25),
(2, 102, 2, 'Delhi', 40),
(3, 103, 3, 'Bangalore', 30),
(4, 104, 4, 'Chennai', 20),
(5, 105, 5, 'Hyderabad', 35);

SELECT * FROM Warehouse;

-- Update Query
Update Orders SET Order_id = 10 WHERE Order_id = 102;

-- Delete Query 
DELETE FROM Products WHERE Product_id = 5;