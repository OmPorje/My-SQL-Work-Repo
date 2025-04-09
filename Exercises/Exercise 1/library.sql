CREATE DATABASE Library;
USE Library;

-- Table 1: Books

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author_id INT,
    category_id INT,
    published_year INT
);

SELECT * FROM Books;

INSERT INTO Books (book_id, title, author_id, category_id, published_year) VALUES
(1,'Harry Potter and the Sorcerer\'s Stone', 1, 5, 1997),
(2,'1984', 2, 1, 1949),
(3,'Pride and Prejudice', 3, 1, 1813),
(4,'The Adventures of Tom Sawyer', 4, 1, 1876),
(5,'Things Fall Apart', 5, 1, 1958);

-- Table 2: Authors

CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50),
    birth_year INT,
    death_year INT
);

SELECT * FROM Authors;

INSERT INTO Authors (author_id, name, nationality, birth_year, death_year) VALUES
(1,'J.K. Rowling', 'British', 1965, NULL),
(2,'George Orwell', 'British', 1903, 1950),
(3,'Jane Austen', 'British', 1775, 1817),
(4,'Mark Twain', 'American', 1835, 1910),
(5,'Chinua Achebe', 'Nigerian', 1930, 2013);

-- Table 3: Members

CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    membership_date DATE
);

SELECT * FROM Members;

INSERT INTO Members (member_id, name, email, phone, membership_date) VALUES
(1,'Alice Green', 'alice@example.com', '1112223333', '2023-01-10'),
(2,'Bob Stone', 'bob@example.com', '2223334444', '2023-02-15'),
(3,'Carla Black', 'carla@example.com', '3334445555', '2023-03-20'),
(4,'Dan White', 'dan@example.com', '4445556666', '2023-04-25'),
(5,'Eva Brown', 'eva@example.com', '5556667777', '2023-05-30');

-- Table 4: Borrow_Record

CREATE TABLE Borrow_Records (
    record_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE
);

SELECT * FROM Borrow_Records;

INSERT INTO Borrow_Records (record_id, member_id, book_id, borrow_date, return_date) VALUES
(1,1, 1, '2024-01-05', '2024-01-15'),
(2,2, 2, '2024-01-10', '2024-01-22'),
(3,3, 3, '2024-02-01', NULL),
(4,4, 4, '2024-03-15', NULL),
(5,5, 5, '2024-03-20', '2024-03-30');


-- Table 5: Categories

CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL,
    shelf_location VARCHAR(20),
    description TEXT,
    popularity_rank INT
);
 
 SELECT * FROM Categories;

INSERT INTO Categories (category_id, category_name, shelf_location, description, popularity_rank) VALUES
(1,'Fiction', 'A1', 'Imaginative or made-up stories', 1),
(2,'Science', 'B2', 'Books about scientific topics', 3),
(3,'History', 'C3', 'Historical records and accounts', 4),
(4,'Biography', 'D4', 'Life stories of real people', 5),
(5,'Fantasy', 'A2', 'Magical or otherworldly themes', 2);
