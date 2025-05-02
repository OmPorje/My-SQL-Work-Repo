CREATE DATABASE Zomato;
USE Zomato;

-- Table 1: Customers
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(200)
);

INSERT INTO Customers (name, email, phone, address) VALUES
('Amit Sharma', 'amit@example.com', '9876543210', '123 Street, Delhi'),
('Priya Patel', 'priya@example.com', '8765432109', '45 Block, Mumbai'),
('Ravi Mehta', 'ravi@example.com', '7654321098', '78 Lane, Bangalore'),
('Sneha Roy', 'sneha@example.com', '6543210987', '12 Road, Kolkata'),
('Vikas Deshmukh', 'vikas@example.com', '5432109876', 'Apt 7, Pune');

SELECT * FROM Customers;

-- Table 2: Restaurants
CREATE TABLE Restaurants (
    restaurant_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    cuisine_type VARCHAR(50),
    rating DECIMAL(2,1)
);

INSERT INTO Restaurants (name, location, cuisine_type, rating) VALUES
('Pizza Planet', 'Delhi', 'Italian', 4.5),
('Biryani House', 'Mumbai', 'Indian', 4.2),
('Taco Fiesta', 'Bangalore', 'Mexican', 4.3),
('Wok Express', 'Kolkata', 'Chinese', 4.0),
('Sushi Zen', 'Pune', 'Japanese', 4.6);

SELECT * FROM Restaurants;

-- Table 3: MenuItems
CREATE TABLE MenuItems (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    restaurant_id INT,
    item_name VARCHAR(100),
    price DECIMAL(6,2),
    category VARCHAR(50),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
);

INSERT INTO MenuItems (restaurant_id, item_name, price, category) VALUES
(1, 'Margherita Pizza', 299.00, 'Pizza'),
(2, 'Hyderabadi Biryani', 249.00, 'Main Course'),
(3, 'Chicken Tacos', 199.00, 'Snacks'),
(4, 'Veg Noodles', 150.00, 'Main Course'),
(5, 'Salmon Sushi', 399.00, 'Sushi');

SELECT * FROM MenuItems;

-- Table 4: Orders
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    restaurant_id INT,
    order_date DATETIME,
    total_amount DECIMAL(8,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
);

INSERT INTO Orders (customer_id, restaurant_id, order_date, total_amount) VALUES
(1, 1, '2024-04-01 12:00:00', 299.00),
(2, 2, '2024-04-02 13:30:00', 249.00),
(3, 3, '2024-04-03 19:45:00', 199.00),
(4, 4, '2024-04-04 20:15:00', 150.00),
(5, 5, '2024-04-05 18:10:00', 399.00);

SELECT * FROM Orders;

-- Table 5: OrderItems
CREATE TABLE OrderItems (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    item_id INT,
    quantity INT,
    item_price DECIMAL(6,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (item_id) REFERENCES MenuItems(item_id)
);

INSERT INTO OrderItems (order_id, item_id, quantity, item_price) VALUES
(1, 1, 1, 299.00),
(2, 2, 1, 249.00),
(3, 3, 1, 199.00),
(4, 4, 1, 150.00),
(5, 5, 1, 399.00);

SELECT * FROM OrderItems;
