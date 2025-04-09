CREATE DATABASE HotelBooking;
USE HotelBooking;

-- Tabel 1: Guests

CREATE TABLE Guests (
    guest_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    address TEXT
);

INSERT INTO Guests (full_name, email, phone, address) VALUES
('Alice Johnson', 'alice@gmail.com', '9876543210', '123 Hill Rd'),
('Bob Smith', 'bob@gmail.com', '8765432109', '456 Lake Ave'),
('Clara Wilson', 'clara@gmail.com', '7654321098', '789 Forest St'),
('Daniel Lee', 'daniel@gmail.com', '6543210987', '101 Ocean Blvd'),
('Eva Patel', 'eva@gmail.com', '5432109876', '202 Sunset Ln');

select * from Guests;

-- Tabel 2: Rooms

CREATE TABLE Rooms (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_number VARCHAR(10),
    room_type VARCHAR(50),
    price_per_night VARCHAR(50),
    availability VARCHAR(50) not null
);

INSERT INTO Rooms (room_number, room_type, price_per_night, availability) VALUES
('101', 'Deluxe', 150.00, TRUE),
('102', 'Standard', 100.00, TRUE),
('201', 'Suite', 250.00, TRUE),
('202', 'Standard', 100.00, TRUE),
('301', 'Deluxe', 150.00, TRUE);


select * from Rooms;

-- Tabel 3: Bookings

CREATE TABLE Bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    guest_id INT,
    room_id INT,
    check_in_date DATE,
    check_out_date DATE,
    FOREIGN KEY (guest_id) REFERENCES Guests(guest_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);

INSERT INTO Bookings (guest_id, room_id, check_in_date, check_out_date) VALUES
(1, 1, '2024-04-01', '2024-04-05'),
(2, 2, '2024-04-03', '2024-04-07'),
(3, 3, '2024-04-10', '2024-04-15'),
(4, 4, '2024-04-12', '2024-04-14'),
(5, 5, '2024-04-18', '2024-04-20');

select * from Bookings;

-- Tabel 4: Payments

CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT,
    payment_date DATE,
    amount VARCHAR(50),
    payment_method VARCHAR(50),
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);

INSERT INTO Payments (booking_id, payment_date, amount, payment_method) VALUES
(1, '2024-04-01', 600.00, 'Credit Card'),
(2, '2024-04-03', 400.00, 'Cash'),
(3, '2024-04-10', 1250.00, 'Credit Card'),
(4, '2024-04-12', 200.00, 'UPI'),
(5, '2024-04-18', 300.00, 'Debit Card');

select * from Payments;

-- Tabel 5: Services

CREATE TABLE Services (
    service_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT,
    service_name VARCHAR(100),
    service_date DATE,
    cost DECIMAL(10,2),
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);

INSERT INTO Services (booking_id, service_name, service_date, cost) VALUES
(1, 'Spa', '2024-04-02', 50.00),
(1, 'Room Service', '2024-04-03', 30.00),
(2, 'Laundry', '2024-04-04', 20.00),
(3, 'Spa', '2024-04-12', 50.00),
(5, 'Breakfast Buffet', '2024-04-19', 15.00);

select * from Services;
