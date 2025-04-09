CREATE DATABASE GroceryStore;
USE GroceryStore;

-- Table 1: Customers
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    city VARCHAR(100)
);

INSERT INTO Customers (name, phone, email, city) VALUES
('Ravi Patel', '9876543210', 'ravi@example.com', 'Delhi'),
('Priya Sharma', '8765432109', 'priya@example.com', 'Mumbai'),
('Amit Sinha', '7654321098', 'amit@example.com', 'Kolkata'),
('Sunita Reddy', '6543210987', 'sunita@example.com', 'Hyderabad'),
('Vikas Jain', '5432109876', 'vikas@example.com', 'Chennai');

SELECT * FROM Customers;

-- Table 2: Products
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(6,2),
    stock_quantity INT
);

INSERT INTO Products (name, category, price, stock_quantity) VALUES
('Basmati Rice', 'Grains', 60.00, 100),
('Milk 1L', 'Dairy', 50.00, 200),
('Bread', 'Bakery', 30.00, 150),
('Apples 1kg', 'Fruits', 90.00, 80),
('Tomatoes 1kg', 'Vegetables', 40.00, 100);

SELECT * FROM Products;

-- Table 3: Orders
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME,
    total_amount DECIMAL(8,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2024-04-01 08:30:00', 110.00),
(2, '2024-04-02 09:45:00', 130.00),
(3, '2024-04-03 10:15:00', 90.00),
(4, '2024-04-04 11:20:00', 140.00),
(5, '2024-04-05 12:50:00', 100.00);

SELECT * FROM Orders;

-- Table 4: OrderItems
CREATE TABLE OrderItems (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    item_price DECIMAL(6,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO OrderItems (order_id, product_id, quantity, item_price) VALUES
(1, 1, 1, 60.00),
(2, 2, 2, 50.00),
(3, 3, 3, 30.00),
(4, 4, 4, 90.00),
(5, 5, 5, 40.00);

SELECT * FROM OrderItems;

-- Table 5: Suppliers
CREATE TABLE Suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO Suppliers (name, phone, city, email) VALUES
('FreshFarm Distributors', '9876543211', 'Delhi', 'freshfarm@suppliers.com'),
('DailyDairy Pvt Ltd', '8765432100', 'Mumbai', 'dairy@daily.com'),
('BakeMart', '7654321001', 'Kolkata', 'support@bakemart.com'),
('FruitBasket Co.', '6543210999', 'Hyderabad', 'contact@fruitbasket.com'),
('VeggieSupply', '5432109888', 'Chennai', 'sales@veggiesupply.com');

SELECT * FROM Suppliers;
