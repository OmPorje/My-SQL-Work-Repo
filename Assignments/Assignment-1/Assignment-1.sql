-- Create and use database hospital_management
CREATE DATABASE hospital_management;
USE hospital_management;

-- Create table patients
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10)
);

-- Insert 10 records into patients
INSERT INTO patients VALUES
(1, 'Sample_first_name_1', 'Sample_last_name_1', 21, 'Sample_gender_1'),
(2, 'Sample_first_name_2', 'Sample_last_name_2', 22, 'Sample_gender_2'),
(3, 'Sample_first_name_3', 'Sample_last_name_3', 23, 'Sample_gender_3'),
(4, 'Sample_first_name_4', 'Sample_last_name_4', 24, 'Sample_gender_4'),
(5, 'Sample_first_name_5', 'Sample_last_name_5', 25, 'Sample_gender_5'),
(6, 'Sample_first_name_6', 'Sample_last_name_6', 26, 'Sample_gender_6'),
(7, 'Sample_first_name_7', 'Sample_last_name_7', 27, 'Sample_gender_7'),
(8, 'Sample_first_name_8', 'Sample_last_name_8', 28, 'Sample_gender_8'),
(9, 'Sample_first_name_9', 'Sample_last_name_9', 29, 'Sample_gender_9'),
(10, 'Sample_first_name_10', 'Sample_last_name_10', 30, 'Sample_gender_10');

-- Select all records from patients
SELECT * FROM patients;

-- Drop table patients
DROP TABLE patients;

-- Create table doctors
CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialty VARCHAR(50),
    experience_years INT,
    contact_number VARCHAR(15)
);

-- Insert 10 records into doctors
INSERT INTO doctors VALUES
(1, 'Sample_name_1', 'Sample_specialty_1', 21, 'Sample_contact_number_1'),
(2, 'Sample_name_2', 'Sample_specialty_2', 22, 'Sample_contact_number_2'),
(3, 'Sample_name_3', 'Sample_specialty_3', 23, 'Sample_contact_number_3'),
(4, 'Sample_name_4', 'Sample_specialty_4', 24, 'Sample_contact_number_4'),
(5, 'Sample_name_5', 'Sample_specialty_5', 25, 'Sample_contact_number_5'),
(6, 'Sample_name_6', 'Sample_specialty_6', 26, 'Sample_contact_number_6'),
(7, 'Sample_name_7', 'Sample_specialty_7', 27, 'Sample_contact_number_7'),
(8, 'Sample_name_8', 'Sample_specialty_8', 28, 'Sample_contact_number_8'),
(9, 'Sample_name_9', 'Sample_specialty_9', 29, 'Sample_contact_number_9'),
(10, 'Sample_name_10', 'Sample_specialty_10', 30, 'Sample_contact_number_10');

-- Select all records from doctors
SELECT * FROM doctors;

-- Drop table doctors
DROP TABLE doctors;

-- Create table appointments
CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20)
);

-- Insert 10 records into appointments
INSERT INTO appointments VALUES
(1, 21, 21, '2025-05-01', 'Sample_status_1'),
(2, 22, 22, '2025-05-02', 'Sample_status_2'),
(3, 23, 23, '2025-05-03', 'Sample_status_3'),
(4, 24, 24, '2025-05-04', 'Sample_status_4'),
(5, 25, 25, '2025-05-05', 'Sample_status_5'),
(6, 26, 26, '2025-05-06', 'Sample_status_6'),
(7, 27, 27, '2025-05-07', 'Sample_status_7'),
(8, 28, 28, '2025-05-08', 'Sample_status_8'),
(9, 29, 29, '2025-05-09', 'Sample_status_9'),
(10, 30, 30, '2025-05-10', 'Sample_status_10');

-- Select all records from appointments
SELECT * FROM appointments;

-- Drop table appointments
DROP TABLE appointments;

-- Create table medications
CREATE TABLE medications (
    med_id INT PRIMARY KEY,
    patient_id INT,
    medicine_name VARCHAR(100),
    dosage VARCHAR(50),
    start_date DATE
);

-- Insert 10 records into medications
INSERT INTO medications VALUES
(1, 21, 'Sample_medicine_name_1', 'Sample_dosage_1', '2025-05-01'),
(2, 22, 'Sample_medicine_name_2', 'Sample_dosage_2', '2025-05-02'),
(3, 23, 'Sample_medicine_name_3', 'Sample_dosage_3', '2025-05-03'),
(4, 24, 'Sample_medicine_name_4', 'Sample_dosage_4', '2025-05-04'),
(5, 25, 'Sample_medicine_name_5', 'Sample_dosage_5', '2025-05-05'),
(6, 26, 'Sample_medicine_name_6', 'Sample_dosage_6', '2025-05-06'),
(7, 27, 'Sample_medicine_name_7', 'Sample_dosage_7', '2025-05-07'),
(8, 28, 'Sample_medicine_name_8', 'Sample_dosage_8', '2025-05-08'),
(9, 29, 'Sample_medicine_name_9', 'Sample_dosage_9', '2025-05-09'),
(10, 30, 'Sample_medicine_name_10', 'Sample_dosage_10', '2025-05-10');

-- Select all records from medications
SELECT * FROM medications;

-- Drop table medications
DROP TABLE medications;

-- Create table rooms
CREATE TABLE rooms (
    room_id INT PRIMARY KEY,
    room_number VARCHAR(10),
    type VARCHAR(20),
    occupied BOOLEAN,
    floor INT
);

-- Insert 10 records into rooms
INSERT INTO rooms VALUES
(1, 'Sample_room_number_1', 'Sample_type_1', FALSE, 21),
(2, 'Sample_room_number_2', 'Sample_type_2', TRUE, 22),
(3, 'Sample_room_number_3', 'Sample_type_3', FALSE, 23),
(4, 'Sample_room_number_4', 'Sample_type_4', TRUE, 24),
(5, 'Sample_room_number_5', 'Sample_type_5', FALSE, 25),
(6, 'Sample_room_number_6', 'Sample_type_6', TRUE, 26),
(7, 'Sample_room_number_7', 'Sample_type_7', FALSE, 27),
(8, 'Sample_room_number_8', 'Sample_type_8', TRUE, 28),
(9, 'Sample_room_number_9', 'Sample_type_9', FALSE, 29),
(10, 'Sample_room_number_10', 'Sample_type_10', TRUE, 30);

-- Select all records from rooms
SELECT * FROM rooms;

-- Drop table rooms
DROP TABLE rooms;



-- Create and use database school_management
CREATE DATABASE school_management;
USE school_management;

-- Create table students
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    grade INT,
    gender VARCHAR(10)
);

-- Insert 10 records into students
INSERT INTO students VALUES
(1, 'Sample_first_name_1', 'Sample_last_name_1', 21, 'Sample_gender_1'),
(2, 'Sample_first_name_2', 'Sample_last_name_2', 22, 'Sample_gender_2'),
(3, 'Sample_first_name_3', 'Sample_last_name_3', 23, 'Sample_gender_3'),
(4, 'Sample_first_name_4', 'Sample_last_name_4', 24, 'Sample_gender_4'),
(5, 'Sample_first_name_5', 'Sample_last_name_5', 25, 'Sample_gender_5'),
(6, 'Sample_first_name_6', 'Sample_last_name_6', 26, 'Sample_gender_6'),
(7, 'Sample_first_name_7', 'Sample_last_name_7', 27, 'Sample_gender_7'),
(8, 'Sample_first_name_8', 'Sample_last_name_8', 28, 'Sample_gender_8'),
(9, 'Sample_first_name_9', 'Sample_last_name_9', 29, 'Sample_gender_9'),
(10, 'Sample_first_name_10', 'Sample_last_name_10', 30, 'Sample_gender_10');

-- Select all records from students
SELECT * FROM students;

-- Drop table students
DROP TABLE students;

-- Create table teachers
CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(100),
    subject VARCHAR(50),
    experience INT,
    email VARCHAR(100)
);

-- Insert 10 records into teachers
INSERT INTO teachers VALUES
(1, 'Sample_name_1', 'Sample_subject_1', 21, 'Sample_email_1'),
(2, 'Sample_name_2', 'Sample_subject_2', 22, 'Sample_email_2'),
(3, 'Sample_name_3', 'Sample_subject_3', 23, 'Sample_email_3'),
(4, 'Sample_name_4', 'Sample_subject_4', 24, 'Sample_email_4'),
(5, 'Sample_name_5', 'Sample_subject_5', 25, 'Sample_email_5'),
(6, 'Sample_name_6', 'Sample_subject_6', 26, 'Sample_email_6'),
(7, 'Sample_name_7', 'Sample_subject_7', 27, 'Sample_email_7'),
(8, 'Sample_name_8', 'Sample_subject_8', 28, 'Sample_email_8'),
(9, 'Sample_name_9', 'Sample_subject_9', 29, 'Sample_email_9'),
(10, 'Sample_name_10', 'Sample_subject_10', 30, 'Sample_email_10');

-- Select all records from teachers
SELECT * FROM teachers;

-- Drop table teachers
DROP TABLE teachers;

-- Create table classes
CREATE TABLE classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(50),
    room_number VARCHAR(10),
    teacher_id INT,
    schedule VARCHAR(50)
);

-- Insert 10 records into classes
INSERT INTO classes VALUES
(1, 'Sample_class_name_1', 'Sample_room_number_1', 21, 'Sample_schedule_1'),
(2, 'Sample_class_name_2', 'Sample_room_number_2', 22, 'Sample_schedule_2'),
(3, 'Sample_class_name_3', 'Sample_room_number_3', 23, 'Sample_schedule_3'),
(4, 'Sample_class_name_4', 'Sample_room_number_4', 24, 'Sample_schedule_4'),
(5, 'Sample_class_name_5', 'Sample_room_number_5', 25, 'Sample_schedule_5'),
(6, 'Sample_class_name_6', 'Sample_room_number_6', 26, 'Sample_schedule_6'),
(7, 'Sample_class_name_7', 'Sample_room_number_7', 27, 'Sample_schedule_7'),
(8, 'Sample_class_name_8', 'Sample_room_number_8', 28, 'Sample_schedule_8'),
(9, 'Sample_class_name_9', 'Sample_room_number_9', 29, 'Sample_schedule_9'),
(10, 'Sample_class_name_10', 'Sample_room_number_10', 30, 'Sample_schedule_10');

-- Select all records from classes
SELECT * FROM classes;

-- Drop table classes
DROP TABLE classes;

-- Create table subjects
CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    name VARCHAR(50),
    description TEXT,
    credits INT,
    department VARCHAR(50)
);

-- Insert 10 records into subjects
INSERT INTO subjects VALUES
(1, 'Sample_name_1', 'Sample text 1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample text 2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample text 3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample text 4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample text 5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample text 6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample text 7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample text 8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample text 9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample text 10', 30, 'Sample_department_10');

-- Select all records from subjects
SELECT * FROM subjects;

-- Drop table subjects
DROP TABLE subjects;

-- Create table exams
CREATE TABLE exams (
    exam_id INT PRIMARY KEY,
    subject_id INT,
    date DATE,
    duration INT,
    location VARCHAR(50)
);

-- Insert 10 records into exams
INSERT INTO exams VALUES
(1, 21, '2025-05-01', 21, 'Sample_location_1'),
(2, 22, '2025-05-02', 22, 'Sample_location_2'),
(3, 23, '2025-05-03', 23, 'Sample_location_3'),
(4, 24, '2025-05-04', 24, 'Sample_location_4'),
(5, 25, '2025-05-05', 25, 'Sample_location_5'),
(6, 26, '2025-05-06', 26, 'Sample_location_6'),
(7, 27, '2025-05-07', 27, 'Sample_location_7'),
(8, 28, '2025-05-08', 28, 'Sample_location_8'),
(9, 29, '2025-05-09', 29, 'Sample_location_9'),
(10, 30, '2025-05-10', 30, 'Sample_location_10');

-- Select all records from exams
SELECT * FROM exams;

-- Drop table exams
DROP TABLE exams;



-- Create and use database library_system
CREATE DATABASE library_system;
USE library_system;

-- Create table books
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    published_year INT,
    genre VARCHAR(50)
);

-- Insert 10 records into books
INSERT INTO books VALUES
(1, 'Sample_title_1', 'Sample_author_1', 21, 'Sample_genre_1'),
(2, 'Sample_title_2', 'Sample_author_2', 22, 'Sample_genre_2'),
(3, 'Sample_title_3', 'Sample_author_3', 23, 'Sample_genre_3'),
(4, 'Sample_title_4', 'Sample_author_4', 24, 'Sample_genre_4'),
(5, 'Sample_title_5', 'Sample_author_5', 25, 'Sample_genre_5'),
(6, 'Sample_title_6', 'Sample_author_6', 26, 'Sample_genre_6'),
(7, 'Sample_title_7', 'Sample_author_7', 27, 'Sample_genre_7'),
(8, 'Sample_title_8', 'Sample_author_8', 28, 'Sample_genre_8'),
(9, 'Sample_title_9', 'Sample_author_9', 29, 'Sample_genre_9'),
(10, 'Sample_title_10', 'Sample_author_10', 30, 'Sample_genre_10');

-- Select all records from books
SELECT * FROM books;

-- Drop table books
DROP TABLE books;

-- Create table members
CREATE TABLE members (
    member_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    join_date DATE,
    email VARCHAR(100)
);

-- Insert 10 records into members
INSERT INTO members VALUES
(1, 'Sample_first_name_1', 'Sample_last_name_1', '2025-05-01', 'Sample_email_1'),
(2, 'Sample_first_name_2', 'Sample_last_name_2', '2025-05-02', 'Sample_email_2'),
(3, 'Sample_first_name_3', 'Sample_last_name_3', '2025-05-03', 'Sample_email_3'),
(4, 'Sample_first_name_4', 'Sample_last_name_4', '2025-05-04', 'Sample_email_4'),
(5, 'Sample_first_name_5', 'Sample_last_name_5', '2025-05-05', 'Sample_email_5'),
(6, 'Sample_first_name_6', 'Sample_last_name_6', '2025-05-06', 'Sample_email_6'),
(7, 'Sample_first_name_7', 'Sample_last_name_7', '2025-05-07', 'Sample_email_7'),
(8, 'Sample_first_name_8', 'Sample_last_name_8', '2025-05-08', 'Sample_email_8'),
(9, 'Sample_first_name_9', 'Sample_last_name_9', '2025-05-09', 'Sample_email_9'),
(10, 'Sample_first_name_10', 'Sample_last_name_10', '2025-05-10', 'Sample_email_10');

-- Select all records from members
SELECT * FROM members;

-- Drop table members
DROP TABLE members;

-- Create table loans
CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    loan_date DATE,
    return_date DATE
);

-- Insert 10 records into loans
INSERT INTO loans VALUES
(1, 21, 21, '2025-05-01', '2025-05-01'),
(2, 22, 22, '2025-05-02', '2025-05-02'),
(3, 23, 23, '2025-05-03', '2025-05-03'),
(4, 24, 24, '2025-05-04', '2025-05-04'),
(5, 25, 25, '2025-05-05', '2025-05-05'),
(6, 26, 26, '2025-05-06', '2025-05-06'),
(7, 27, 27, '2025-05-07', '2025-05-07'),
(8, 28, 28, '2025-05-08', '2025-05-08'),
(9, 29, 29, '2025-05-09', '2025-05-09'),
(10, 30, 30, '2025-05-10', '2025-05-10');

-- Select all records from loans
SELECT * FROM loans;

-- Drop table loans
DROP TABLE loans;

-- Create table authors
CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(100),
    birth_year INT,
    nationality VARCHAR(50),
    bio TEXT
);

-- Insert 10 records into authors
INSERT INTO authors VALUES
(1, 'Sample_name_1', 21, 'Sample_nationality_1', 'Sample text 1'),
(2, 'Sample_name_2', 22, 'Sample_nationality_2', 'Sample text 2'),
(3, 'Sample_name_3', 23, 'Sample_nationality_3', 'Sample text 3'),
(4, 'Sample_name_4', 24, 'Sample_nationality_4', 'Sample text 4'),
(5, 'Sample_name_5', 25, 'Sample_nationality_5', 'Sample text 5'),
(6, 'Sample_name_6', 26, 'Sample_nationality_6', 'Sample text 6'),
(7, 'Sample_name_7', 27, 'Sample_nationality_7', 'Sample text 7'),
(8, 'Sample_name_8', 28, 'Sample_nationality_8', 'Sample text 8'),
(9, 'Sample_name_9', 29, 'Sample_nationality_9', 'Sample text 9'),
(10, 'Sample_name_10', 30, 'Sample_nationality_10', 'Sample text 10');

-- Select all records from authors
SELECT * FROM authors;

-- Drop table authors
DROP TABLE authors;

-- Create table publishers
CREATE TABLE publishers (
    publisher_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(50),
    founded_year INT,
    contact_email VARCHAR(100)
);

-- Insert 10 records into publishers
INSERT INTO publishers VALUES
(1, 'Sample_name_1', 'Sample_country_1', 21, 'Sample_contact_email_1'),
(2, 'Sample_name_2', 'Sample_country_2', 22, 'Sample_contact_email_2'),
(3, 'Sample_name_3', 'Sample_country_3', 23, 'Sample_contact_email_3'),
(4, 'Sample_name_4', 'Sample_country_4', 24, 'Sample_contact_email_4'),
(5, 'Sample_name_5', 'Sample_country_5', 25, 'Sample_contact_email_5'),
(6, 'Sample_name_6', 'Sample_country_6', 26, 'Sample_contact_email_6'),
(7, 'Sample_name_7', 'Sample_country_7', 27, 'Sample_contact_email_7'),
(8, 'Sample_name_8', 'Sample_country_8', 28, 'Sample_contact_email_8'),
(9, 'Sample_name_9', 'Sample_country_9', 29, 'Sample_contact_email_9'),
(10, 'Sample_name_10', 'Sample_country_10', 30, 'Sample_contact_email_10');

-- Select all records from publishers
SELECT * FROM publishers;

-- Drop table publishers
DROP TABLE publishers;



-- Create and use database business_system_04
CREATE DATABASE business_system_04;
USE business_system_04;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_05
CREATE DATABASE business_system_05;
USE business_system_05;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_06
CREATE DATABASE business_system_06;
USE business_system_06;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_07
CREATE DATABASE business_system_07;
USE business_system_07;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_08
CREATE DATABASE business_system_08;
USE business_system_08;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_09
CREATE DATABASE business_system_09;
USE business_system_09;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_10
CREATE DATABASE business_system_10;
USE business_system_10;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_11
CREATE DATABASE business_system_11;
USE business_system_11;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_12
CREATE DATABASE business_system_12;
USE business_system_12;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_13
CREATE DATABASE business_system_13;
USE business_system_13;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_14
CREATE DATABASE business_system_14;
USE business_system_14;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_15
CREATE DATABASE business_system_15;
USE business_system_15;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_16
CREATE DATABASE business_system_16;
USE business_system_16;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_17
CREATE DATABASE business_system_17;
USE business_system_17;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_18
CREATE DATABASE business_system_18;
USE business_system_18;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_19
CREATE DATABASE business_system_19;
USE business_system_19;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_20
CREATE DATABASE business_system_20;
USE business_system_20;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_21
CREATE DATABASE business_system_21;
USE business_system_21;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_22
CREATE DATABASE business_system_22;
USE business_system_22;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_23
CREATE DATABASE business_system_23;
USE business_system_23;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_24
CREATE DATABASE business_system_24;
USE business_system_24;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_25
CREATE DATABASE business_system_25;
USE business_system_25;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_26
CREATE DATABASE business_system_26;
USE business_system_26;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_27
CREATE DATABASE business_system_27;
USE business_system_27;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_28
CREATE DATABASE business_system_28;
USE business_system_28;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_29
CREATE DATABASE business_system_29;
USE business_system_29;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



-- Create and use database business_system_30
CREATE DATABASE business_system_30;
USE business_system_30;

-- Create table employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert 10 records into employees
INSERT INTO employees VALUES
(1, 'Sample_name_1', 'Sample_position_1', 21, 'Sample_department_1'),
(2, 'Sample_name_2', 'Sample_position_2', 22, 'Sample_department_2'),
(3, 'Sample_name_3', 'Sample_position_3', 23, 'Sample_department_3'),
(4, 'Sample_name_4', 'Sample_position_4', 24, 'Sample_department_4'),
(5, 'Sample_name_5', 'Sample_position_5', 25, 'Sample_department_5'),
(6, 'Sample_name_6', 'Sample_position_6', 26, 'Sample_department_6'),
(7, 'Sample_name_7', 'Sample_position_7', 27, 'Sample_department_7'),
(8, 'Sample_name_8', 'Sample_position_8', 28, 'Sample_department_8'),
(9, 'Sample_name_9', 'Sample_position_9', 29, 'Sample_department_9'),
(10, 'Sample_name_10', 'Sample_position_10', 30, 'Sample_department_10');

-- Select all records from employees
SELECT * FROM employees;

-- Drop table employees
DROP TABLE employees;

-- Create table departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_id INT,
    location VARCHAR(50),
    budget INT
);

-- Insert 10 records into departments
INSERT INTO departments VALUES
(1, 'Sample_dept_name_1', 21, 'Sample_location_1', 21),
(2, 'Sample_dept_name_2', 22, 'Sample_location_2', 22),
(3, 'Sample_dept_name_3', 23, 'Sample_location_3', 23),
(4, 'Sample_dept_name_4', 24, 'Sample_location_4', 24),
(5, 'Sample_dept_name_5', 25, 'Sample_location_5', 25),
(6, 'Sample_dept_name_6', 26, 'Sample_location_6', 26),
(7, 'Sample_dept_name_7', 27, 'Sample_location_7', 27),
(8, 'Sample_dept_name_8', 28, 'Sample_location_8', 28),
(9, 'Sample_dept_name_9', 29, 'Sample_location_9', 29),
(10, 'Sample_dept_name_10', 30, 'Sample_location_10', 30);

-- Select all records from departments
SELECT * FROM departments;

-- Drop table departments
DROP TABLE departments;

-- Create table projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT
);

-- Insert 10 records into projects
INSERT INTO projects VALUES
(1, 'Sample_project_name_1', '2025-05-01', '2025-05-01', 21),
(2, 'Sample_project_name_2', '2025-05-02', '2025-05-02', 22),
(3, 'Sample_project_name_3', '2025-05-03', '2025-05-03', 23),
(4, 'Sample_project_name_4', '2025-05-04', '2025-05-04', 24),
(5, 'Sample_project_name_5', '2025-05-05', '2025-05-05', 25),
(6, 'Sample_project_name_6', '2025-05-06', '2025-05-06', 26),
(7, 'Sample_project_name_7', '2025-05-07', '2025-05-07', 27),
(8, 'Sample_project_name_8', '2025-05-08', '2025-05-08', 28),
(9, 'Sample_project_name_9', '2025-05-09', '2025-05-09', 29),
(10, 'Sample_project_name_10', '2025-05-10', '2025-05-10', 30);

-- Select all records from projects
SELECT * FROM projects;

-- Drop table projects
DROP TABLE projects;

-- Create table clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert 10 records into clients
INSERT INTO clients VALUES
(1, 'Sample_name_1', 'Sample_contact_person_1', 'Sample_email_1', 'Sample_phone_1'),
(2, 'Sample_name_2', 'Sample_contact_person_2', 'Sample_email_2', 'Sample_phone_2'),
(3, 'Sample_name_3', 'Sample_contact_person_3', 'Sample_email_3', 'Sample_phone_3'),
(4, 'Sample_name_4', 'Sample_contact_person_4', 'Sample_email_4', 'Sample_phone_4'),
(5, 'Sample_name_5', 'Sample_contact_person_5', 'Sample_email_5', 'Sample_phone_5'),
(6, 'Sample_name_6', 'Sample_contact_person_6', 'Sample_email_6', 'Sample_phone_6'),
(7, 'Sample_name_7', 'Sample_contact_person_7', 'Sample_email_7', 'Sample_phone_7'),
(8, 'Sample_name_8', 'Sample_contact_person_8', 'Sample_email_8', 'Sample_phone_8'),
(9, 'Sample_name_9', 'Sample_contact_person_9', 'Sample_email_9', 'Sample_phone_9'),
(10, 'Sample_name_10', 'Sample_contact_person_10', 'Sample_email_10', 'Sample_phone_10');

-- Select all records from clients
SELECT * FROM clients;

-- Drop table clients
DROP TABLE clients;

-- Create table invoices
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10,2),
    issue_date DATE,
    due_date DATE
);

-- Insert 10 records into invoices
INSERT INTO invoices VALUES
(1, 21, 1010.00, '2025-05-01', '2025-05-01'),
(2, 22, 1020.00, '2025-05-02', '2025-05-02'),
(3, 23, 1030.00, '2025-05-03', '2025-05-03'),
(4, 24, 1040.00, '2025-05-04', '2025-05-04'),
(5, 25, 1050.00, '2025-05-05', '2025-05-05'),
(6, 26, 1060.00, '2025-05-06', '2025-05-06'),
(7, 27, 1070.00, '2025-05-07', '2025-05-07'),
(8, 28, 1080.00, '2025-05-08', '2025-05-08'),
(9, 29, 1090.00, '2025-05-09', '2025-05-09'),
(10, 30, 1100.00, '2025-05-10', '2025-05-10');

-- Select all records from invoices
SELECT * FROM invoices;

-- Drop table invoices
DROP TABLE invoices;



