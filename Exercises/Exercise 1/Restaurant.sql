CREATE DATABASE RestaurantDB;
USE RestaurantDB;

-- Table 1: Customers 
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    city VARCHAR(50)
);

INSERT INTO Customers (name, email, phone, city) VALUES
('Rahul Mehra', 'rahul@example.com', '9876543210', 'Delhi'),
('Anjali Sharma', 'anjali@example.com', '8765432109', 'Mumbai'),
('Vikram Rao', 'vikram@example.com', '7654321098', 'Bangalore'),
('Neha Kapoor', 'neha@example.com', '6543210987', 'Chennai'),
('Amit Patel', 'amit@example.com', '5432109876', 'Ahmedabad');

SELECT * FROM Customers;

-- Table 2: Menu 
CREATE TABLE Menu (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    is_available BOOLEAN
);

INSERT INTO Menu (name, category, price, is_available) VALUES
('Paneer Tikka', 'Starter', 250.00, TRUE),
('Veg Biryani', 'Main Course', 300.00, TRUE),
('Butter Naan', 'Bread', 40.00, TRUE),
('Gulab Jamun', 'Dessert', 80.00, TRUE),
('Masala Dosa', 'South Indian', 120.00, FALSE);

SELECT * FROM Menu;

-- Table 3: Orders 
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount VARCHAR(20),
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (customer_id, order_date, total_amount, status) VALUES
(1, '2024-04-01', 370.00, 'Completed'),
(2, '2024-04-02', 420.00, 'Pending'),
(3, '2024-04-03', 80.00, 'Completed'),
(4, '2024-04-04', 120.00, 'Cancelled'),
(5, '2024-04-05', 300.00, 'Completed');

SELECT * FROM Orders;

-- Table 4: OrderItems 
CREATE TABLE OrderItems (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    item_id INT,
    quantity INT,
    item_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (item_id) REFERENCES Menu(item_id)
);

INSERT INTO OrderItems (order_id, item_id, quantity, item_price) VALUES
(1, 1, 1, 250.00),
(1, 3, 3, 120.00),
(2, 2, 1, 300.00),
(2, 4, 1, 80.00),
(3, 4, 1, 80.00);

SELECT * FROM OrderItems;

-- Table 5: Staff 
CREATE TABLE Staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE
);

INSERT INTO Staff (name, role, salary, joining_date) VALUES
('Kiran Joshi', 'Chef', 35000.00, '2023-01-15'),
('Ravi Kumar', 'Waiter', 15000.00, '2023-02-10'),
('Preeti Sinha', 'Manager', 45000.00, '2022-11-01'),
('Asha Mehta', 'Cleaner', 10000.00, '2024-01-05'),
('Rajeev Nair', 'Cashier', 20000.00, '2023-05-20');

SELECT * FROM Staff;