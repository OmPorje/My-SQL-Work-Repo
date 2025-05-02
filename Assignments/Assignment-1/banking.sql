CREATE DATABASE Banking;
USE Banking;

-- Table 1: Customers

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    address TEXT
);

INSERT INTO Customers (name, email, phone, address) VALUES
('John Doe', 'john@example.com', '1234567890', '123 Elm St, NY'),
('Mary Smith', 'mary@example.com', '2345678901', '456 Oak St, TX'),
('David Kim', 'david@example.com', '3456789012', '789 Pine St, CA'),
('Sara Lee', 'sara@example.com', '4567890123', '101 Maple St, IL'),
('Ali Khan', 'ali@example.com', '5678901234', '202 Birch St, FL');

select * from Customers;

CREATE TABLE Accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(50),
    balance DECIMAL(12,2),
    opened_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Accounts (customer_id, account_type, balance, opened_date) VALUES
(1, 'Savings', 5000.00, '2022-01-15'),
(2, 'Checking', 1200.50, '2022-03-20'),
(3, 'Savings', 850.75, '2023-07-01'),
(4, 'Business', 10000.00, '2021-11-05'),
(5, 'Savings', 700.00, '2023-02-10');

select * from Accounts;

CREATE TABLE Transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    amount DECIMAL(12,2),
    transaction_type VARCHAR(50),
    transaction_date DATETIME,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

INSERT INTO Transactions (account_id, amount, transaction_type, transaction_date) VALUES
(1, 1000.00, 'Deposit', '2024-01-01 10:00:00'),
(1, 500.00, 'Withdrawal', '2024-01-10 14:30:00'),
(2, 300.00, 'Deposit', '2024-02-05 09:45:00'),
(3, 150.00, 'Withdrawal', '2024-02-10 11:20:00'),
(4, 2000.00, 'Deposit', '2024-03-01 16:00:00');

select * from Transactions;

CREATE TABLE Loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    loan_type VARCHAR(50),
    loan_amount DECIMAL(12,2),
    loan_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Loans (customer_id, loan_type, loan_amount, loan_date) VALUES
(1, 'Home Loan', 200000.00, '2022-06-15'),
(2, 'Car Loan', 15000.00, '2023-03-10'),
(3, 'Personal Loan', 5000.00, '2024-01-20'),
(4, 'Business Loan', 50000.00, '2021-12-01'),
(5, 'Education Loan', 10000.00, '2023-09-05');

select * from Loans;

CREATE TABLE Branches (
    branch_id INT AUTO_INCREMENT PRIMARY KEY,
    branch_name VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    phone VARCHAR(20)
);

INSERT INTO Branches (branch_name, city, state, phone) VALUES
('Downtown Branch', 'New York', 'NY', '2120001111'),
('Westside Branch', 'Dallas', 'TX', '2140002222'),
('Beachside Branch', 'Los Angeles', 'CA', '3100003333'),
('Lakeside Branch', 'Chicago', 'IL', '3120004444'),
('Sunrise Branch', 'Miami', 'FL', '3050005555');

select * from Branches;





