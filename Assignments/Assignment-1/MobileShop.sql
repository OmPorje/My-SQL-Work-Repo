CREATE DATABASE MobileShop;
USE MobileShop;

-- Table 1: Customers
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    city VARCHAR(100)
);

INSERT INTO Customers (name, phone, email, city) VALUES
('Aman Verma', '9876543210', 'aman@example.com', 'Delhi'),
('Nikita Desai', '8765432109', 'nikita@example.com', 'Mumbai'),
('Rajiv Sharma', '7654321098', 'rajiv@example.com', 'Bangalore'),
('Megha Rathi', '6543210987', 'megha@example.com', 'Hyderabad'),
('Tarun Khanna', '5432109876', 'tarun@example.com', 'Pune');

SELECT * FROM Customers;

-- Table 2: MobilePhones
CREATE TABLE MobilePhones (
    mobile_id INT AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(50),
    model VARCHAR(100),
    price VARCHAR(100),
    stock_quantity INT
);

INSERT INTO MobilePhones (brand, model, price, stock_quantity) VALUES
('Apple', 'iPhone 14', 79999.00, 10),
('Samsung', 'Galaxy S22', 69999.00, 15),
('Xiaomi', 'Redmi Note 12', 18999.00, 20),
('OnePlus', 'OnePlus 11', 59999.00, 12),
('Realme', 'Realme 10 Pro', 20999.00, 18);

SELECT * FROM MobilePhones;

-- Table 3: Orders
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME,
    total_amount VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2024-04-01 10:00:00', 79999.00),
(2, '2024-04-02 12:30:00', 69999.00),
(3, '2024-04-03 14:00:00', 18999.00),
(4, '2024-04-04 16:15:00', 59999.00),
(5, '2024-04-05 17:45:00', 20999.00);

SELECT * FROM Orders;

-- Table 4: OrderItems
CREATE TABLE OrderItems (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    mobile_id INT,
    quantity INT,
    item_price VARCHAR(100),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (mobile_id) REFERENCES MobilePhones(mobile_id)
);

INSERT INTO OrderItems (order_id, mobile_id, quantity, item_price) VALUES
(1, 1, 1, 79999.00),
(2, 2, 1, 69999.00),
(3, 3, 1, 18999.00),
(4, 4, 1, 59999.00),
(5, 5, 1, 20999.00);

SELECT * FROM OrderItems;

-- Table 5: Suppliers
CREATE TABLE Suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    contact_number VARCHAR(15),
    email VARCHAR(100) unique,
    city VARCHAR(100)
);

INSERT INTO Suppliers (name, contact_number, email, city) VALUES
('GadgetWorld Ltd', '9876543211', 'support@gadgetworld.com', 'Delhi'),
('SmartTech Pvt Ltd', '8765432100', 'sales@smarttech.com', 'Mumbai'),
('MobileDistributors Inc', '7654321001', 'info@mobiledist.com', 'Bangalore'),
('PhonePlanet', '6543210999', 'contact@phoneplanet.com', 'Hyderabad'),
('ElectroSupply', '5432109888', 'orders@electrosupply.com', 'Pune');

SELECT * FROM Suppliers;