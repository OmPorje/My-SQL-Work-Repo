create database cricket;

use cricket;

create table player_names(
id int primary key,
name varchar(50) not null,
dob varchar(50) not null,
country varchar(50) not null,
no_of_matches int(10) not null
);

select * from player_names;

insert into player_names
values(1, 'Sachin Tendulkar', 'April 24, 1973','India', 664),
(2, 'Ricky Ponting', 'December 19, 1974', 'Australia', 560),
(3, 'Viv Richards', 'March 7, 1952', 'West Indies', 308),
(4, 'Virat Kohli', 'November 5, 1988', 'India', 550),
(5, 'Rohit Sharma', 'April 30, 1987', 'India', 499);

create table stadiums
(id int primary key, 
name varchar(100) not null, 
country varchar(100) not null, 
city varchar(100) not null,
seating_capacity varchar(1000) not null);

select * from stadiums;

insert into stadiums
values(1, 'Narendra Modi Stadium', 'India', 'Ahmedabad', '132,000'),
(2, 'Melbourne Cricket Ground (MCG)', 'Australia', 'Melbourne', '100,024'),
(3, 'Eden Gardens', 'India', 'Kolkata', '66,000'),
(4, 'Lords Cricket Ground', 'England', 'London', '31,100'),
(5, 'Newlands Cricket Ground', 'South Africa', 'Cape Town', '25,000');

create table umpires
(id int primary key,
name varchar(100) not null, 
country varchar(100) not null, 
apperances int(10) not null, 
ex_cricketer varchar(10) not null);

select * from umpires;

insert into umpires
values(1, 'Simon Taufel', 'Australia', 282, 'Yes'),
(2, 'Aleem Dar', 'Pakistan', 435, 'Yes'),
(3, 'Dickie Bird', 'England', 135, 'Yes'),
(4, 'Steve Bucknor', 'England', 328, 'No'),
(5, 'Kumar Dharmasena', 'Sri Lanka', 186, 'Yes');

create table Most_runs(id int primary key, 
name varchar(100) not null, 
country varchar(100) not null, 
runs int(100) not null, 
average int(100) not null);

select * from Most_runs;

insert into Most_runs
values(1, 'Sachin Tendulkar','India', 34357, 48.52 ),
(2, 'Kumar Sangakara', 'Sri Lanka', 28016, 46.77),
(3, 'Virat Kohli', 'India', 27599 , 52.27),
(4, 'Ricky Ponting', 'Australia', 27483, 45.95),
(5, 'Mahela Jayawardene', 'Sri Lanka', 25957 ,39.15);

create table most_wickets
(id int primary key, 
name varchar(100) not null, 
country varchar(100) not null, 
wickets int(100) not null, 
economy varchar(100) not null);

select * from most_wickets;

drop table most_wickets;
insert into most_wickets
values(1, 'Muttiah Muralitharan','Sri Lanka', 1347, 2.92),
(2, 'Shane Warne', 'Australia', 1001, 2.98),
(3, 'Anil Kumble', 'India', 956 , 3.11),
(4, 'Glenn McGrath', 'Australia', 949, 2.93),
(5, 'Wasim Akram', 'Pakistan', 916 ,3.89);


