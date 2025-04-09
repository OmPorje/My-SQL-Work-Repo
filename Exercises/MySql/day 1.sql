-- Single Comment

create database knt_school;

use knt_school;

create table student(
id int primary key,
name varchar(50) not null,
course varchar(50) not null,
contact varchar(10) not null unique,
city varchar(50) not null
);

select * from student;

-- to remove complete data from table
truncate table student;

-- to delete complete attributes and records
drop table student;

-- inserting single values
insert into student(id, name, course, contact, city)
values(1, 'Om', 'Data Science', 9321639401, 'Kalyan');

-- inserting multiple values
insert into student(id, name, course, contact, city)
values(2, 'Om', 'Data Science', 9321639402, 'Kalyan'),
(3, 'Atharva','Data Science', 1234567890, 'Ambernath')
;

create table teacher(
id int primary key,
name varchar(50) not null,
course varchar(50) not null,
contact varchar(10) not null unique,
city varchar(50) not null
);

select * from teacher;

insert into teacher(id, name, course, contact, city)
values(1, 'Shalini Mam', 'SQL', 1234567890, 'Mumbai');

insert into teacher(id, name, course, contact, city)
values(2, ' Mam', 'SQL', 1234567891, 'Mumbai'),
(3, ' Sir', 'Data Science', 1234567892, 'Mumbai');

insert into teacher
values(4, 'Shalini Mam', 'SQL', 1234567893, 'Mumbai');

create table subject(
id int primary key,
name varchar(50) not null,
cost int(10) not null,
duration varchar(50) not null)
;

select * from subject;

insert into subject(id, name, cost, duration)
values(1, 'Data Science', 80000, '10 months');

insert into subject
values(2, 'Full Stack Development', 50000, '1 year'),
(3, 'Cloud Engineering', 90000, '6 months')
;

create table fees(
id int primary key,
course_name varchar(50) not null unique,
course_fee varchar(50) not null,
installments int(10) not null
);

select * from fees;

insert into fees
values(1, 'Data Science', '80k', 4),
(2, 'Full Stack Development', '50k', 2),
(3, 'Cloud Engineering', '95k', 5);

create table activities(
id int primary key,
activity_name varchar(100) not null unique,
scheduled_date varchar(100) not null unique,
no_of_days varchar(50) not null
);

select * from activities;

insert into activities
values(1, 'Sports', '12/12/25', '4 days'),
(2, 'Dance Competition', '10/11/25', '1 day'),
(3, 'Flag Hoisting', '15/08/25', '1 day')
;




