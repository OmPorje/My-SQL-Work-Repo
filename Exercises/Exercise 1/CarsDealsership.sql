-- Create and use the database for Car Dealership
CREATE DATABASE CarDealershipDB;
USE CarDealershipDB;

-- Table 1: Cars
CREATE TABLE Cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(50),
    model VARCHAR(100),
    year INT,
    price DECIMAL(10,2)
);

INSERT INTO Cars (brand, model, year, price) VALUES
('Toyota', 'Camry', 2022, 25000.00),
('Honda', 'Civic', 2021, 22000.00),
('Tesla', 'Model 3', 2023, 40000.00),
('Ford', 'Mustang', 2022, 35000.00),
('Hyundai', 'Elantra', 2021, 20000.00);

SELECT * FROM Cars;

-- Table 2: Customers
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    city VARCHAR(100)
);

INSERT INTO Customers (name, phone, email, city) VALUES
('Rahul Mehta', '9876543210', 'rahul@example.com', 'Delhi'),
('Sneha Kapoor', '8765432109', 'sneha@example.com', 'Mumbai'),
('Aarav Nair', '7654321098', 'aarav@example.com', 'Bangalore'),
('Kriti Verma', '6543210987', 'kriti@example.com', 'Hyderabad'),
('Dev Khanna', '5432109876', 'dev@example.com', 'Pune');

SELECT * FROM Customers;

-- Table 3: Sales
CREATE TABLE Sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    car_id INT,
    customer_id INT,
    sale_date DATE,
    sale_price VARCHAR(100),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Sales (car_id, customer_id, sale_date, sale_price) VALUES
(1, 1, '2024-04-01', 25000.00),
(2, 2, '2024-04-02', 22000.00),
(3, 3, '2024-04-03', 40000.00),
(4, 4, '2024-04-04', 35000.00),
(5, 5, '2024-04-05', 20000.00);

SELECT * FROM Sales;

-- Table 4: Dealers
CREATE TABLE Dealers (
    dealer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    contact_number VARCHAR(15),
    city VARCHAR(100),
    rating VARCHAR(100)
);

INSERT INTO Dealers (name, contact_number, city, rating) VALUES
('AutoWorld', '9876543211', 'Delhi', 4.5),
('SpeedMotors', '8765432100', 'Mumbai', 4.3),
('EcoRides', '7654321001', 'Bangalore', 4.7),
('DriveNow', '6543210999', 'Hyderabad', 4.6),
('EliteCars', '5432109888', 'Pune', 4.4);

SELECT * FROM Dealers;

-- Table 5: Inventory
CREATE TABLE Inventory (
    inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    dealer_id INT,
    car_id INT,
    quantity INT,
    last_updated DATE,
    FOREIGN KEY (dealer_id) REFERENCES Dealers(dealer_id),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id)
);

INSERT INTO Inventory (dealer_id, car_id, quantity, last_updated) VALUES
(1, 1, 5, '2024-03-28'),
(2, 2, 4, '2024-03-29'),
(3, 3, 6, '2024-03-30'),
(4, 4, 3, '2024-03-31'),
(5, 5, 7, '2024-04-01');

SELECT * FROM Inventory;