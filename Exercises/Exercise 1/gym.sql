CREATE DATABASE Gym;
USE Gym;

-- Table 1: Members
CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    join_date DATE
);

INSERT INTO Members (full_name, email, phone, join_date) VALUES
('John Carter', 'johnc@gmail.com', '9876543210', '2024-01-10'),
('Lily Adams', 'lilya@gmail.com', '8765432109', '2024-02-12'),
('Mohit Verma', 'mohitv@gmail.com', '7654321098', '2024-03-05'),
('Nina Gomez', 'ninag@gmail.com', '6543210987', '2024-01-25'),
('Chris Evans', 'chrise@gmail.com', '5432109876', '2024-02-18');


SELECT * FROM Members;

-- Table 2: Subscriptions

CREATE TABLE Subscriptions (
    subscription_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    plan_type VARCHAR(50),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

INSERT INTO Subscriptions (member_id, plan_type, start_date, end_date) VALUES
(1, 'Monthly', '2024-03-01', '2024-03-31'),
(2, 'Quarterly', '2024-02-15', '2024-05-15'),
(3, 'Monthly', '2024-03-10', '2024-04-10'),
(4, 'Yearly', '2024-01-25', '2025-01-24'),
(5, 'Monthly', '2024-02-20', '2024-03-20');


SELECT * FROM Subscriptions;

-- Table 3: Trainers

CREATE TABLE Trainers (
    trainer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    specialty VARCHAR(50),
    phone VARCHAR(20),
    hire_date DATE
);

INSERT INTO Trainers (name, specialty, phone, hire_date) VALUES
('Alice Brown', 'Yoga', '9123456780', '2023-01-10'),
('Mike Singh', 'Strength Training', '9234567891', '2022-12-05'),
('Sara Lee', 'Cardio', '9345678912', '2023-03-15'),
('Ravi Kumar', 'CrossFit', '9456789123', '2023-06-20'),
('Lana White', 'Zumba', '9567891234', '2022-11-01');


SELECT * FROM Trainers;

-- Table 4: Classes

CREATE TABLE Classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    trainer_id INT,
    class_name VARCHAR(100),
    schedule_time DATETIME,
    capacity INT,
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id)
);

INSERT INTO Classes (trainer_id, class_name, schedule_time, capacity) VALUES
(1, 'Morning Yoga', '2024-04-05 07:00:00', 20),
(2, 'Weight Lifting', '2024-04-06 09:00:00', 15),
(3, 'HIIT Cardio', '2024-04-07 18:00:00', 25),
(4, 'CrossFit Blast', '2024-04-08 17:00:00', 20),
(5, 'Zumba Dance', '2024-04-09 10:00:00', 30);


SELECT * FROM Classes;

-- Table 5: Attendance

CREATE TABLE Attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    class_id INT,
    attendance_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

INSERT INTO Attendance (member_id, class_id, attendance_date, status) VALUES
(1, 1, '2024-04-05', 'Present'),
(2, 2, '2024-04-06', 'Present'),
(3, 3, '2024-04-07', 'Absent'),
(4, 4, '2024-04-08', 'Present'),
(5, 5, '2024-04-09', 'Present');

SELECT * FROM Attendance;
