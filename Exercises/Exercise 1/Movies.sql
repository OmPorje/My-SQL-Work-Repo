CREATE DATABASE Movies;
USE Movies;

-- Table 1: Movies
CREATE TABLE Movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50),
    release_year INT,
    rating VARCHAR(50)
);

INSERT INTO Movies (title, genre, release_year, rating) VALUES
('Inception', 'Sci-Fi', 2010, 8.8),
('The Dark Knight', 'Action', 2008, 9.0),
('Interstellar', 'Sci-Fi', 2014, 8.6),
('Parasite', 'Thriller', 2019, 8.6),
('La La Land', 'Romance', 2016, 8.0);

SELECT * FROM Movies;

-- Table 2: Actors
CREATE TABLE Actors (
    actor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    birth_year INT,
    nationality VARCHAR(50),
    gender VARCHAR(10)
);

INSERT INTO Actors (name, birth_year, nationality, gender) VALUES
('Leonardo DiCaprio', 1974, 'American', 'Male'),
('Christian Bale', 1974, 'British', 'Male'),
('Anne Hathaway', 1982, 'American', 'Female'),
('Song Kang-ho', 1967, 'South Korean', 'Male'),
('Emma Stone', 1988, 'American', 'Female');

SELECT * FROM Actors;

-- Table 3: Directors
CREATE TABLE Directors (
    director_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    nationality VARCHAR(50),
    birth_year INT,
    awards_count INT
);

INSERT INTO Directors (name, nationality, birth_year, awards_count) VALUES
('Christopher Nolan', 'British-American', 1970, 12),
('Bong Joon-ho', 'South Korean', 1969, 10),
('Damien Chazelle', 'American', 1985, 6),
('Steven Spielberg', 'American', 1946, 20),
('Greta Gerwig', 'American', 1983, 5);

SELECT * FROM Directors;

-- Table 4: MovieActors
CREATE TABLE MovieActors (
    movie_actor_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    actor_id INT,
    role VARCHAR(100),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES Actors(actor_id)
);

INSERT INTO MovieActors (movie_id, actor_id, role) VALUES
(1, 1, 'Dom Cobb'),
(2, 2, 'Bruce Wayne'),
(3, 3, 'Brand'),
(4, 4, 'Kim Ki-taek'),
(5, 5, 'Mia Dolan');

SELECT * FROM MovieActors;

-- Table 5: MovieDirectors
CREATE TABLE MovieDirectors (
    movie_director_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    director_id INT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (director_id) REFERENCES Directors(director_id)
);

INSERT INTO MovieDirectors (movie_id, director_id) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 3);

SELECT * FROM MovieDirectors;