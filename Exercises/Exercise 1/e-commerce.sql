CREATE database ecommerce;
use ecommerce;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE,
    address TEXT
);

select * FROM Customers;

INSERT INTO Customers (customer_id, name, email, phone, address) VALUES
(1,'Alice Johnson', 'alice@example.com', '1234567890', '123 Main St, NY'),
(2,'Bob Smith', 'bob@example.com', '0987654321', '456 Elm St, CA'),
(3,'Charlie Brown', 'charlie@example.com', '1112223333', '789 Pine St, TX'),
(4,'David Williams', 'david@example.com', '4445556666', '321 Maple St, FL'),
(5,'Emma Watson', 'emma@example.com', '7778889999', '654 Oak St, IL');

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price VARCHAR(1000) NOT NULL,
    stock_quantity INT NOT NULL
);

select * FROM Products;

INSERT INTO Products (product_id, name, description, price, stock_quantity) VALUES
(1,'Laptop', 'High-performance laptop', 999.99, 10),
(2,'Smartphone', 'Latest model smartphone', 799.99, 15),
(3,'Headphones', 'Noise-cancelling headphones', 199.99, 25),
(4,'Smartwatch', 'Waterproof smartwatch', 149.99, 30),
(5,'Tablet', '10-inch display tablet', 499.99, 20);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME,
    total_amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(50) DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

select * FROM Orders;
drop table Orders;
INSERT INTO Orders (customer_id, total_amount, status) VALUES
(1, 1199.98, 'Shipped'),
(2, 799.99, 'Delivered'),
(3, 199.99, 'Pending'),
(4, 649.98, 'Processing'),
(5, 149.99, 'Pending');

CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    subtotal VARCHAR(1000) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

select * FROM Order_Items;

INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, subtotal) VALUES
(1,1, 1, 1, '999.99'),
(2,1, 3, 1, '199.99'),
(3,2, 2, 1, '799.99'),
(4,3, 3, 1, '199.99'),
(5,4, 4, 2, '299.98'),
(6,4, 5, 1, '499.99'),
(7,5, 4, 1, '149.99');

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATETIME ,
    amount_paid VARCHAR(1000) NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

select * from Payments;

INSERT INTO Payments (payment_id, order_id, amount_paid, payment_method) VALUES
(1,1, 1199.98, 'Credit Card'),
(2,2, 799.99, 'PayPal'),
(3,3, 199.99, 'Debit Card'),
(4,4, 649.98, 'Credit Card'),
(5,5, 149.99, 'UPI');
