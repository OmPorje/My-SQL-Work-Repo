-- Single line comment

/* 
Multi line comment
*/

## This is also a single line comment

/* 
Usage of Comments

1.Documentation: Comments can be used to document the purpose of a SQL query or the logic behind complex operations.
2.Debugging: You can temporarily disable part of your SQL by commenting them out, which is useful for debugging.
3.Collaboration: When working in teams, comments help communicate the intent and functionality of the code to other developers.
*/

-- Database Queries--

-- create a school database
create database MVM;

-- to work on this database we need to use it(to execute ctrl+enter)
use MVM;

----- Table Queries -------

-- Table 1: Students

CREATE TABLE Students (
id INT PRIMARY KEY, -- primary key = unique + not null
Name VARCHAR(50),
Age INT,
Gender VARCHAR(10),
Email VARCHAR(100)
);

INSERT INTO Students (id, Name, Age, Gender, Email) VALUES
(1, 'Aarav Sharma ', 20, 'M', 'aarav@gmail.com'),
(2, 'Atharva ', 20, 'M', 'atharv@gmail.com'),
(3, 'Om ', 21, 'M', 'om@gmail.com'),
(4, 'ABC ',20, 'M', 'abc@gmail.com'),
(5, 'Aarav  ', 20, 'M', 'Aaarav@gmail.com');

select * FROM Students;
drop table Students;
truncate table Students;

-- Table 2: Teacher

CREATE TABLE Teacher (
Teacher_id INT PRIMARY KEY, -- primary key = unique + not null
Name VARCHAR(50),
Subject VARCHAR(50),
Experience VARCHAR(10),
Email VARCHAR(100)
);

INSERT INTO Teacher(Teacher_id, Name, Subject, Experience, Email) VALUES
(1, 'Shalini Mam', 'SQl', '10 years', 'shalini@gmail.com'),
(2, 'Tejas ', 'Java', '12 years', 'tejas@gmail.com'),
(3, 'Neehit', 'Linux', '5 years', 'neehit@gmail.com'),
(4, 'Damini', 'HTML', '9 years', 'damini@gmail.com'),
(5, 'Abhishek', 'IT', '15 years', 'abhi@gmail.com');

select * FROM Teacher;
drop table Students;
truncate table Students;

-- Table 3: Classes

CREATE TABLE Classes(
ClassId INT PRIMARY KEY,
ClassName VARCHAR(50),
Section CHAR(1),
TotalStudents INT,
Teacher_id INT,
FOREIGN KEY(Teacher_id) REFERENCES Teacher(Teacher_id)
);

INSERT INTO Classes(ClassId, ClassName, Section, TotalStudents, Teacher_id) VALUES
(1, '10th', 'A', 30, 1),
(2, '9th', 'B', 25, 2),
(3, '11th', 'C', 20, 3),
(4, '8th', 'A', 15, 4),
(5, '12th', 'B', 10, 5);

SELECT * FROM Classes;
drop table Students;
truncate table Students;

-- Table 4 : Subjects

CREATE TABLE Subjects(
SubjectId INT PRIMARY KEY,
SubjectName VARCHAR(50),
Credits CHAR(1),
ClassId INT,
FOREIGN KEY(ClassId) REFERENCES Classes(ClassId)
);

INSERT INTO Subjects(SubjectId, SubjectName, Credits, ClassId) VALUES
(1, 'Mathematics', 4, 1),
(2, 'Science', 4, 2),
(3, 'English', 3, 3),
(4, 'History', 3, 4),
(5, 'Geography', 3, 5);

SELECT * FROM Subjects;
drop table Students;
truncate table Students;

-- Table 5: Exams

CREATE TABLE Exams(
ExamId INT PRIMARY KEY,
ExamName VARCHAR(50),
Date DATE,
TotalMarks INT,
ClassId INT,
FOREIGN KEY(ClassId) REFERENCES Classes(ClassId)
);

INSERT INTO Exams(ExamId, ExamName, Date, TotalMarks, ClassId) VALUES
(1, 'Mid Term Exam', '2023-10-15', 100, 1),
(2, 'Final Exam', '2023-12-20', 100, 2),
(3, 'Unit Test ', '2023-11-10', 50, 3),
(4, 'Quarterly Exam', '2023-09-25', 75, 4),
(5, 'Annual Exam', '2023-03-15', 100, 5);


SELECT * FROM Exams;
drop table Students;
truncate table Students;

-- Table 6: Attendance

CREATE TABLE Attendance(
AttendanceID INT PRIMARY KEY,
id INT,
ClassId INT,
Date DATE,
Status ENUM('Present','Absent'),
FOREIGN KEY(ClassId) REFERENCES Classes(ClassId),
FOREIGN KEY(id) REFERENCES Students(id)
);


INSERT INTO Attendance(AttendanceID, id, ClassId, Date, Status) VALUES
(1, 1, 1,'2023-10-01','Present'),
(2, 2, 2,'2023-10-01','Absent'),
(3, 3, 3,'2023-10-01','Present'),
(4, 4, 4,'2023-10-01','Present'),
(5, 5, 5,'2023-10-01','Absent');

SELECT * FROM Attendance;
drop table Students;
truncate table Students;

-- Table 7: Grades

CREATE TABLE Grades(
GradeID INT PRIMARY KEY,
id INT,
SubjectId INT,
Marks INT,
FOREIGN KEY(SubjectID) REFERENCES Subjects(SubjectId),
FOREIGN KEY(id) REFERENCES Students(id)
);

INSERT INTO Grades(GradeID, id, SubjectId, Marks) VALUES
(1, 1, 1, 85),
(2, 2, 2, 78),
(3, 3, 3, 90),
(4, 4, 4, 88),
(5, 5, 5, 92);

SELECT * FROM Grades;
drop table Students;
truncate table Students;

-- Table 8: Library

CREATE TABLE Library(
BookID INT PRIMARY KEY,
Title VARCHAR(100),
Author VARCHAR(100),
ISBN VARCHAR(100),
AvailableCopies INT
);

INSERT INTO Library(BookID, Title, Author, ISBN, AvailableCopies) VALUES
(1, 'The Alchemist', 'Paul Coelho', 1234567890, 5),
(2, 'To Kill A Mockingbird', 'Harper Lee', 1234567891, 3),
(3, '1984', 'George Orwell', 1234567892, 4),
(4, 'Pride and Predjudice', 'Jane Austen', 1234567893, 2),
(5, 'The Great Gatsby', 'Fitzgerald', 1234567894, 6);

SELECT * FROM Library;
drop table Library;
truncate table Library;

-- Table 9: Extra-Curricular Activities

Create Table ExtracurricularActivities(
ActivityID INT PRIMARY KEY,
ActivityName VARCHAR(100),
Description TEXT,
ClassID INT,
FOREIGN KEY (ClassId) references Classes(ClassId)
);

INSERT INTO ExtracurricularActivities(ActivityID, ActivityName, Description, ClassID) VALUES
(1, 'BasketBall', 'Team sport played on court', 1),
(2, 'Debate Club', 'A club for debating current issues', 2),
(3, 'Science Club', 'A club for science enthusiasts', 3),
(4, 'Drama Club', 'A club for aspiring actors', 4),
(5, 'Art Club', 'A club for artists', 5);

SELECT * FROM ExtracurricularActivities;
drop table ExtracurricularActivities;
truncate table ExtracurricularActivities;

-- Table 10 : ParentDetails

Create table ParentDetails(
ParentID INT PRIMARY KEY,
id INT,
ParentName VARCHAR(100),
Relationship VARCHAR(50),
ContactNumber VARCHAR(10),
FOREIGN KEY(id) REFERENCES Students(id)
);

INSERT INTO ParentDetails(ParentID, id, ParentName, Relationship, ContactNumber) VALUES
(1, 1, 'Mr. Anil Sharma', 'Father', '1234567890'),
(2, 2, 'Mrs. Sunita Patel', 'Mother', '1234567891'),
(3, 3, 'Mr. Raj Sharma', 'Father', '1234567892'),
(4, 4, 'Mrs. Kavita Sharma', 'Mother', '1234567893'),
(5, 5, 'Mr. Vikrma Sharma', 'Father', '1234567894');

SELECT * FROM ParentDetails;
drop table ParentDetails;
truncate table ParentDetails;

-- HOMEWORK

CREATE TABLE Students1 (
StudentId INT PRIMARY KEY, -- primary key = unique + not null
Name VARCHAR(50),
Age INT,
Gender VARCHAR(10),
Email VARCHAR(100)
);

INSERT INTO Students1 (StudentId, Name, Age, Gender, Email) VALUES
(1, 'Aarav Sharma ', 20, 'M', 'aarav@gmail.com'),
(2, 'Atharva ', 20, 'M', 'atharv@gmail.com'),
(3, 'Om ', 21, 'M', 'om@gmail.com'),
(4, 'ABC ',20, 'M', 'abc@gmail.com'),
(5, 'Aarav  ', 20, 'M', 'Aaarav@gmail.com');

select * FROM Students1;

CREATE TABLE Teacher1 (
Teacher_id INT PRIMARY KEY, -- primary key = unique + not null
Name VARCHAR(50),
Subject VARCHAR(50),
Experience VARCHAR(10),
Email VARCHAR(100)
);

INSERT INTO Teacher1(Teacher_id, Name, Subject, Experience, Email) VALUES
(1, 'Shalini Mam', 'SQl', '10 years', 'shalini@gmail.com'),
(2, 'Tejas ', 'Java', '12 years', 'tejas@gmail.com'),
(3, 'Neehit', 'Linux', '5 years', 'neehit@gmail.com'),
(4, 'Damini', 'HTML', '9 years', 'damini@gmail.com'),
(5, 'Abhishek', 'IT', '15 years', 'abhi@gmail.com');

select * FROM Teacher1;

Create Table ExtracurricularActivities1(
ActivityID INT PRIMARY KEY,
ActivityName VARCHAR(100),
Description TEXT,
StudentId INT,
Teacher_id INT,
FOREIGN KEY (StudentId) references Students1(StudentId),
FOREIGN KEY (Teacher_id) references Teacher1(Teacher_id)
);

INSERT INTO ExtracurricularActivities1(ActivityID, ActivityName, Description, StudentId, Teacher_id) VALUES
(1, 'BasketBall', 'Team sport played on court', 1,1),
(2, 'Debate Club', 'A club for debating current issues', 2,2),
(3, 'Science Club', 'A club for science enthusiasts', 3,3),
(4, 'Drama Club', 'A club for aspiring actors', 4,4),
(5, 'Art Club', 'A club for artists', 5,5);

SELECT * FROM ExtracurricularActivities1;
