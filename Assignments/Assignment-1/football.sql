create database football;

use football;

create table players
(id int primary key,
name varchar(50) not null,
country varchar(50) not null,
dominant_foot varchar(10) not null,
goals int not null
);

select * from players;

insert into players
values(1, 'Cristiano Ronaldo', 'Portugal', 'Right-foot',950),
(2, 'Lionel Messi', 'Argentina', 'Left-foot',800),
(3, 'Neymar Jr', 'Brazil', 'Right-foot',400),
(4, 'Kylian Mbappe', 'France', 'Right-foot',250),
(5, 'Lamine Yamal', 'Spain', 'Left-foot',50);

create table teams
(id int primary key,
name varchar(50) not null,
manager varchar(50) not null,
home_stadium varchar(100) not null,
worldcups_won int not null
);

select * from teams;

insert into teams
values(1, 'Portugal', 'Roberto Martínez', 'Estádio Nacional',0),
(2, 'Argentina', 'Lionel Scaloni', 'Estadio Monumental',3),
(3, 'Brazil', 'Dorival Júnior', 'Maracanã Stadium',5),
(4, 'France', 'Didier Deschamps', 'Stade de France',2),
(5, 'Spain', 'Luis de la Fuente', 'Santiago Bernabéu Stadium',1);

create table 
(id int primary key,
name varchar(50) not null,
manager varchar(50) not null,
home_stadium varchar(100) not null,
worldcups_won int not null
);

select * from teams;

insert into teams
values(1, 'Portugal', 'Roberto Martínez', 'Estádio Nacional',0),
(2, 'Argentina', 'Lionel Scaloni', 'Estadio Monumental',3),
(3, 'Brazil', 'Dorival Júnior', 'Maracanã Stadium',5),
(4, 'France', 'Didier Deschamps', 'Stade de France',2),
(5, 'Spain', 'Luis de la Fuente', 'Santiago Bernabéu Stadium',1);

create table matches(
id int primary key,
hometeam varchar(50) not null,
awayteam varchar(50) not null,
stadium varchar(100) not null,
date varchar(100) not null
);

select * from matches;

insert into matches
values (201, 101, 102,'National Stadium', '2025-04-03'),
(202, 103, 104,'National Stadium', '2025-05-03'),
(203, 101, 106,'National Stadium', '2025-06-03'),
(204, 104, 102,'National Stadium', '2025-07-03'),
(205, 101, 103,'National Stadium', '2025-08-03');

create table goals(
id int primary key,
player_name varchar(100) not null,
match_id varchar(100) not null,
goal_type varchar(100) not null,
time varchar(50) not null
);

select * from goals;

insert into goals
values (1, 'Ronaldo', '102','Volley', '65:30'),
(2, 'Messi', '103','Volley', '66:30'),
(3, 'Ronaldo', '104','Volley', '67:30'),
(4, 'Ronaldo', '105','Volley', '68:30'),
(5, 'Ronaldo', '106','Volley', '69:30');

create table stats(
id int primary key,
player_name varchar(100) not null,
matches_played varchar(100) not null,
goals varchar(100) not null,
assists varchar(50) not null

);

select * from stats;

insert into stats
values(1, 'Ronaldo', '102','900', '65'),
(2, 'Messi', '103','800', '66'),
(3, 'Ronaldo', '104','700', '67'),
(4, 'Ronaldo', '105','600', '68'),
(5, 'Ronaldo', '106','500', '69');
