-- Create and use the database
CREATE DATABASE ClothStoreDB;
USE ClothStoreDB;

-- Table 1: Customers
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    city VARCHAR(50)
);

INSERT INTO Customers (full_name, email, phone, city) VALUES
('Kunal Arora', 'kunal@example.com', '9876543210', 'Delhi'),
('Riya Shah', 'riya@example.com', '8765432109', 'Mumbai'),
('Manav Joshi', 'manav@example.com', '7654321098', 'Bangalore'),
('Neha Singh', 'neha@example.com', '6543210987', 'Kolkata'),
('Ankit Desai', 'ankit@example.com', '5432109876', 'Ahmedabad');

SELECT * FROM Customers;

-- Table 2: Products
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    size VARCHAR(10),
    price DECIMAL(10,2)
);

INSERT INTO Products (product_name, category, size, price) VALUES
('Denim Jeans', 'Bottomwear', 'M', 1299.99),
('T-Shirt', 'Topwear', 'L', 699.99),
('Kurti', 'Ethnic', 'S', 899.99),
('Jacket', 'Outerwear', 'XL', 1999.99),
('Formal Shirt', 'Topwear', 'M', 1099.99);

SELECT * FROM Products;

-- Table 3: Orders
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20),
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (customer_id, order_date, status, total_amount) VALUES
(1, '2024-04-01', 'Shipped', 1999.99),
(2, '2024-04-02', 'Delivered', 699.99),
(3, '2024-04-03', 'Pending', 1099.99),
(4, '2024-04-04', 'Cancelled', 899.99),
(5, '2024-04-05', 'Shipped', 1299.99);

SELECT * FROM Orders;

-- Table 4: OrderItems
CREATE TABLE OrderItems (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    item_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO OrderItems (order_id, product_id, quantity, item_price) VALUES
(1, 4, 1, 1999.99),
(2, 2, 1, 699.99),
(3, 5, 1, 1099.99),
(4, 3, 1, 899.99),
(5, 1, 1, 1299.99);

SELECT * FROM OrderItems;

-- Table 5: Inventory
CREATE TABLE Inventory (
    inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    stock_quantity INT,
    location VARCHAR(100),
    last_updated DATE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Inventory (product_id, stock_quantity, location, last_updated) VALUES
(1, 30, 'Delhi Warehouse', '2024-04-01'),
(2, 50, 'Mumbai Warehouse', '2024-04-02'),
(3, 20, 'Bangalore Warehouse', '2024-04-03'),
(4, 15, 'Kolkata Warehouse', '2024-04-04'),
(5, 40, 'Ahmedabad Warehouse', '2024-04-05');

SELECT * FROM Inventory;