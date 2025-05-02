CREATE DATABASE TravelAgency;
USE TravelAgency;

-- Table 1: Customers

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    city VARCHAR(50)
);

INSERT INTO Customers (full_name, email, phone, city) VALUES
('Amit Sharma', 'amit@example.com', '9876543210', 'Delhi'),
('Priya Mehra', 'priya@example.com', '8765432109', 'Mumbai'),
('Ravi Patel', 'ravi@example.com', '7654321098', 'Ahmedabad'),
('Sara Khan', 'sara@example.com', '6543210987', 'Bangalore'),
('Rahul Jain', 'rahul@example.com', '5432109876', 'Chennai');

SELECT * FROM Customers;

-- Table 2: Destinations 
CREATE TABLE Destinations (
    destination_id INT AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(50),
    city VARCHAR(50),
    attraction VARCHAR(100),
    average_cost VARCHAR(100)
);

INSERT INTO Destinations (country, city, attraction, average_cost) VALUES
('France', 'Paris', 'Eiffel Tower', 1500.00),
('UAE', 'Dubai', 'Burj Khalifa', 1200.00),
('USA', 'New York', 'Statue of Liberty', 1800.00),
('Thailand', 'Bangkok', 'Grand Palace', 900.00),
('Australia', 'Sydney', 'Opera House', 1700.00);

SELECT * FROM Destinations;

-- Table 3: Packages

CREATE TABLE Packages (
    package_id INT AUTO_INCREMENT PRIMARY KEY,
    destination_id INT,
    package_name VARCHAR(100),
    duration_days INT,
    price VARCHAR(100),
    FOREIGN KEY (destination_id) REFERENCES Destinations(destination_id)
);

INSERT INTO Packages (destination_id, package_name, duration_days, price) VALUES
(1, 'Paris Explorer', 5, 1550.00),
(2, 'Dubai Delight', 4, 1250.00),
(3, 'NYC Adventure', 6, 1850.00),
(4, 'Bangkok Bliss', 3, 950.00),
(5, 'Sydney Special', 7, 1750.00);


SELECT * FROM Packages;

-- Table 4: Bookings

CREATE TABLE Bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    package_id INT,
    booking_date DATE,
    travel_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (package_id) REFERENCES Packages(package_id)
);

INSERT INTO Bookings (customer_id, package_id, booking_date, travel_date) VALUES
(1, 1, '2024-03-01', '2024-04-10'),
(2, 2, '2024-03-05', '2024-04-15'),
(3, 3, '2024-03-10', '2024-04-20'),
(4, 4, '2024-03-12', '2024-04-25'),
(5, 5, '2024-03-15', '2024-04-30');

SELECT * FROM Bookings;

-- Create Payments table
CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT,
    amount_paid DECIMAL(10,2),
    payment_date DATE,
    method VARCHAR(50),
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);

INSERT INTO Payments (booking_id, amount_paid, payment_date, method) VALUES
(1, 1550.00, '2024-03-02', 'Credit Card'),
(2, 1250.00, '2024-03-06', 'UPI'),
(3, 1850.00, '2024-03-11', 'Debit Card'),
(4, 950.00, '2024-03-13', 'Net Banking'),
(5, 1750.00, '2024-03-16', 'Credit Card');

SELECT * FROM Payments;
