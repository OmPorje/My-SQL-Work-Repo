-- Create and use the database
CREATE DATABASE MedicalStore;
USE MedicalStore;

-- Table 1: Customers
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(200)
);

INSERT INTO Customers (name, phone, email, address) VALUES
('Arun Verma', '9876543210', 'arun@example.com', 'Sector 21, Delhi'),
('Meena Joshi', '8765432109', 'meena@example.com', 'MG Road, Mumbai'),
('Vikram Rao', '7654321098', 'vikram@example.com', 'Koramangala, Bangalore'),
('Sunita Nair', '6543210987', 'sunita@example.com', 'Salt Lake, Kolkata'),
('Ramesh Desai', '5432109876', 'ramesh@example.com', 'Viman Nagar, Pune');

SELECT * FROM Customers;

-- Table 2: Medicines
CREATE TABLE Medicines (
    medicine_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(6,2),
    stock INT
);

INSERT INTO Medicines (name, category, price, stock) VALUES
('Paracetamol', 'Tablet', 20.00, 100),
('Amoxicillin', 'Antibiotic', 50.00, 80),
('Cough Syrup', 'Syrup', 75.00, 60),
('Insulin', 'Injection', 120.00, 40),
('Vitamin D3', 'Supplement', 30.00, 70);

SELECT * FROM Medicines;

-- Table 3: Orders
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME,
    total_amount DECIMAL(8,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2024-04-01 10:00:00', 95.00),
(2, '2024-04-02 11:30:00', 50.00),
(3, '2024-04-03 16:45:00', 120.00),
(4, '2024-04-04 09:20:00', 30.00),
(5, '2024-04-05 18:10:00', 75.00);

SELECT * FROM Orders;

-- Table 4: OrderItems
CREATE TABLE OrderItems (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    medicine_id INT,
    quantity INT,
    item_price DECIMAL(6,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (medicine_id) REFERENCES Medicines(medicine_id)
);

INSERT INTO OrderItems (order_id, medicine_id, quantity, item_price) VALUES
(1, 1, 2, 40.00),
(1, 2, 1, 50.00),
(2, 2, 1, 50.00),
(3, 4, 1, 120.00),
(4, 5, 1, 30.00);

SELECT * FROM OrderItems;

-- Table 5: Suppliers
CREATE TABLE Suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    contact_number VARCHAR(15),
    email VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO Suppliers (name, contact_number, email, city) VALUES
('HealthCare Ltd.', '9870001234', 'contact@healthcare.com', 'Delhi'),
('PharmaPlus', '9861002345', 'support@pharmaplus.com', 'Mumbai'),
('MediWorld', '9852003456', 'info@mediworld.com', 'Bangalore'),
('BioMeds', '9843004567', 'sales@biomeds.com', 'Kolkata'),
('VitalDrugs', '9834005678', 'hello@vitaldrugs.com', 'Pune');

SELECT * FROM Suppliers;