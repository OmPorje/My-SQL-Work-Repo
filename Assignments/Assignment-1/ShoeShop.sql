CREATE DATABASE ShoeShop;
USE ShoeShop;

-- Table 1: Customers 

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    city VARCHAR(50)
);

INSERT INTO Customers (full_name, email, phone, city) VALUES
('Arjun Malhotra', 'arjun@example.com', '9876543210', 'Delhi'),
('Sneha Reddy', 'sneha@example.com', '8765432109', 'Hyderabad'),
('Rohan Singh', 'rohan@example.com', '7654321098', 'Mumbai'),
('Meera Kapoor', 'meera@example.com', '6543210987', 'Pune'),
('Anil Desai', 'anil@example.com', '5432109876', 'Bangalore');

SELECT * FROM Customers;

-- Table 2: Products 

CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(50),
    model_name VARCHAR(100),
    size INT,
    price VARCHAR(100)
);

INSERT INTO Products (brand, model_name, size, price) VALUES
('Nike', 'Air Max', 9, 4999.99),
('Adidas', 'Ultraboost', 8, 5999.99),
('Puma', 'Ignite', 10, 4299.99),
('Reebok', 'Classic', 7, 3799.99),
('Skechers', 'Go Walk', 9, 3499.99);

SELECT * FROM Products;

-- Table 3: Orders 

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20),
    total_amount VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (customer_id, order_date, status, total_amount) VALUES
(1, '2024-03-01', 'Shipped', 4999.99),
(2, '2024-03-05', 'Delivered', 5999.99),
(3, '2024-03-10', 'Pending', 4299.99),
(4, '2024-03-12', 'Cancelled', 3799.99),
(5, '2024-03-15', 'Shipped', 3499.99);

SELECT * FROM Orders;

-- Table 4: OrderItems 
CREATE TABLE OrderItems (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    item_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO OrderItems (order_id, product_id, quantity, item_price) VALUES
(1, 1, 1, 4999.99),
(2, 2, 1, 5999.99),
(3, 3, 1, 4299.99),
(4, 4, 1, 3799.99),
(5, 5, 1, 3499.99);

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
(1, 20, 'Delhi Warehouse', '2024-03-01'),
(2, 15, 'Hyderabad Warehouse', '2024-03-05'),
(3, 10, 'Mumbai Warehouse', '2024-03-10'),
(4, 12, 'Pune Warehouse', '2024-03-12'),
(5, 18, 'Bangalore Warehouse', '2024-03-15');

SELECT * FROM Inventory;
