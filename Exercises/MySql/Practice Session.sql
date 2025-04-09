-- Create database and use it
create database CharityOrganization;
use CharityOrganization;

-- Table 1: Categories

CREATE TABLE Categories(
ID INT PRIMARY KEY,
Name VARCHAR(100) not null,
Location VARCHAR(100) not null,
Field VARCHAR(100) not null,
Owner_name VARCHAR(100) not null
);

INSERT INTO Categories(ID, Name, Location, Field, Owner_name)
VALUES(1, 'Sports Organization', 'Mumbai', 'Sports', 'ABC' ),
(2, 'HealthCare Centre', 'Nashik', 'Health', 'Vishal Nikam' ),
(3, 'Education for All', 'Bengaluru', 'Education', 'Kunal Arora' ),
(4, 'Organization for Animals & Birds', 'Mumbai', 'Animal Protection', 'Vikram Rao' ),
(5, 'Social Org', 'Thane', 'Awareness', 'ABC' );

SELECT * FROM Categories;
drop table Categories;
truncate table Categories; 

-- Table 2: Employees

CREATE TABLE Employees(
ID INT PRIMARY KEY,
Name VARCHAR(100) not null,
Roles VARCHAR(100) not null,
Salary VARCHAR(100) not null,
Email VARCHAR(100) not null
);

INSERT INTO Employees(ID, Name, Roles, Salary, Email)
VALUES(1,'Amit Sharma','Event Organiser', '30000','amit@example.com'),
(2,'Priya Patel', 'Receiptionist' ,'25000','priya@example.com'),
(3,'Ravi Mehta', 'Technical','23400','ravi@example.com'),
(4,'Sneha Roy','Resource Manager' ,'27000','sneha@example.com'),
(5,'Vikas Deshmukh','Cleaner','22000', 'vikas@example.com');

SELECT * FROM Employees;
drop table Employees;
truncate table Employees; 

-- Table 3: Doners

CREATE TABLE Doners(
DonerID INT PRIMARY KEY,
Name VARCHAR(100) not null,
Type VARCHAR(100) not null,
Amount VARCHAR(100) not null,
Email VARCHAR(100) not null
);

INSERT INTO Doners(DonerID, Name, Type, Amount, Email)
VALUES(1, 'Arun Verma', 'Individual', '5000','arun@example.com'),
(2, 'Meena Joshi', 'Corporate', '15000','meena@example.com'),
(3, 'Vikram Rao', 'Individual', '500','vikram@example.com'),
(4, 'Sunita Nair', 'Buisness','50000', 'sunita@example.com'),
(5, 'Ramesh Desai', 'Buisness', '150','ramesh@example.com');

SELECT * FROM Doners;
drop table Doners;
truncate table Doners; 

-- Table 4: Donation Type

CREATE TABLE DonationType(
DonationID INT PRIMARY KEY,
Name VARCHAR(100) not null,
Type VARCHAR(100) not null,
Quantity VARCHAR(100) not null,
Email VARCHAR(100) not null
);

INSERT INTO DonationType(DonationID, Name, Type, Quantity, Email)
VALUES(1, 'Arun Verma', 'Cloths', '5000','arun@example.com'),
(2, 'Meena Joshi', 'Sports Equipment', '15000','meena@example.com'),
(3, 'Vikram Rao', 'Edauctional goods', '500','vikram@example.com'),
(4, 'Sunita Nair', 'Money','50000', 'sunita@example.com'),
(5, 'Ramesh Desai', 'Food', '150','ramesh@example.com');

SELECT * FROM DonationType;
drop table DonationType;
truncate table DonationType;

-- Table 5: Payments

CREATE TABLE Payments(
PaymentId INT PRIMARY KEY,
Amount VARCHAR(100) not null,
Method VARCHAR(100) not null,
TransactionId VARCHAR(100) unique not null,
Date DATE
);

INSERT INTO Payments(PaymentId, Amount, Method, TransactionId, Date)
VALUES(1, '2000','Cash', 'advvn234asc', '1-04-25'),
(2, '4000','Credit Card', 'advef234asc', '2-04-25'),
(3, '5000','Debit Card', 'advvn24asc', '1-04-25'),
(4, '67000','Money Order', 'advv4asc', '3-04-25'),
(5, '22000','Cash', 'advvn23sc', '5-04-25');

SELECT * FROM Payments;
drop table Payments;
truncate table Payments;

-- Table 6: Events

CREATE TABLE Events(
EventId INT PRIMARY KEY,
Name VARCHAR(100) not null,
Description VARCHAR(100) not null,
Location VARCHAR(100) not null,
EventType VARCHAR(100) not null
);

INSERT INTO Events(EventId, Name, Description, Location, EventType)
VALUES(101, 'Free Food Disrtibution', 'Distributing food in slum areas', 'Mumbai', 'Food Distribution'),
(102, 'Health Checkups', 'Free basic health checkups', 'Thane', 'Health Service'),
(103, 'Social Awareness', 'Creating awareness about social problems', 'Kalyan', 'Awareness Program'),
(104, 'Books Distribution', 'Distributing books', 'Mumbai', 'Books Distribution'),
(105, 'Sports Awareness', 'Creating awareness about sports ', 'Mumbai', 'Awareness Program');

SELECT * FROM Events;
drop table Events;
truncate table Events;

-- Table 7: CharityReceivers

CREATE TABLE CharityReceivers(
ID INT PRIMARY KEY,
Name VARCHAR(100) not null,
Received VARCHAR(100) not null,
Donater VARCHAR(100) not null,
Location VARCHAR(100) not null
);

INSERT INTO CharityReceivers(ID, Name, Received, Donater, Location)
VALUES(1, 'Om', 'Money', 'Rajesh', 'Kalyan'),
(2, 'Abc', 'Cloths', 'Vikram', 'Kalyan'),
(3, 'Yash', 'Books', 'Raj', 'Kalyan'),
(4, 'Atharva', 'Medical Services', 'Rajesh', 'Kalyan'),
(5, 'Prem', 'Money', 'Rajesh', 'Kalyan');

SELECT * FROM CharityReceivers;
drop table CharityReceivers;
truncate table CharityReceivers;

-- Table 8: Volunteers

CREATE TABLE Volunteers(
VolunteerID INT PRIMARY KEY,
Name VARCHAR(100) not null,
Job VARCHAR(100) not null,
Contact VARCHAR(100) not null,
Email VARCHAR(100) not null unique
);

INSERT INTO Volunteers()
VALUES(201, 'Arun Verma', 'Event Manager','9876543210', 'arun@example.com'),
(202,'Meena Joshi', 'Distributor','8765432109', 'meena@example.com'),
(203,'Vikram Rao', 'Cleaner','7654321098', 'vikram@example.com'),
(204,'Sunita Nair', 'Supplier','6543210987', 'sunita@example.com'),
(205,'Ramesh Desai', 'Manager','5432109876', 'ramesh@example.com');

SELECT * FROM Volunteers;
drop table Volunteers;
truncate table Volunteers;

-- Table 9: Top Donaters

CREATE TABLE TopDonaters(
ID INT PRIMARY KEY,
DonerId INT,
Name VARCHAR(100) not null,
AmountDonated VARCHAR(100) not null,
Type VARCHAR(100) not null,
No_of_donations VARCHAR(100) not null
);

INSERT INTO TopDonaters()
VALUES(1, 1, 'OM', '100000', 'Buisness', '20'),
(2, 2, 'Atharva', '30000', 'Corporate', '20'),
(3, 3, 'raj', '30000', 'Individual', '20'),
(4, 4, 'yash', '40000', 'Buisness', '20'),
(5, 5, 'Manish', '34000', 'Buisness', '20');

SELECT * FROM TopDonaters;
drop table TopDonaters;
truncate table TopDonaters;

-- Table 10: Donations

CREATE TABLE Donations(
DonationID INT PRIMARY KEY,
DonerName VARCHAR(100) not null,
Amount VARCHAR(100) not null,
Method VARCHAR(100) not null,
Date Date
);

INSERT INTO Donations()
VALUES(1, 'Om', '100', 'Cash', '01-01-2025'),
(2, 'Atharva', '2300', 'Credit Card', '02-01-2025'),
(3, 'YAsh', '1003', 'Cash', '01-01-2025'),
(4, 'Raj', '1002', 'Debit Card', '01-01-2025'),
(5, 'Prem', '1001', 'UPi', '01-01-2025');

SELECT * FROM Donation;
drop table Donation;
truncate table Donation;

