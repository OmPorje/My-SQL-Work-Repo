CREATE DATABASE gaming;
USE gaming;

-- 1. Players Table
CREATE TABLE players (
    player_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    level INT NOT NULL,
    join_date DATE NOT NULL
);

select * from players;

INSERT INTO players (player_id, username, email, level, join_date) VALUES
(1, 'player_one', 'player1@example.com', 5, '2023-06-10'),
(2, 'gamer_x', 'gamerx@example.com', 8, '2022-11-22'),
(3, 'shadow_hunter', 'shadow@example.com', 12, '2021-09-18'),
(4, 'elite_sniper', 'sniper@example.com', 15, '2020-01-05'),
(5, 'noob_master', 'noob@example.com', 3, '2024-02-14');


-- 2. Games Table
CREATE TABLE games (
    game_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    developer VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL
);

select * from games;

INSERT INTO games (game_id, title, genre, developer, release_date) VALUES
(1, 'Battle Arena', 'Action', 'Game Studios', '2021-08-15'),
(2, 'Speed Racer', 'Racing', 'Speed Corp', '2019-07-21'),
(3, 'Kingdom Quest', 'RPG', 'Quest Devs', '2020-05-10'),
(4, 'Zombie Land', 'Survival', 'Undead Labs', '2022-09-30'),
(5, 'Future Wars', 'Strategy', 'Future Tech', '2018-12-11');

-- 3. Scores Table
CREATE TABLE scores (
    score_id INT PRIMARY KEY,
    player_id INT NOT NULL,
    game_id INT NOT NULL,
    score INT NOT NULL,
    score_date DATE NOT NULL,
    FOREIGN KEY (player_id) REFERENCES players(player_id),
    FOREIGN KEY (game_id) REFERENCES games(game_id)
);

select * from scores;

INSERT INTO scores (score_id, player_id, game_id, score, score_date) VALUES
(1, 1, 1, 5000, '2024-03-20'),
(2, 2, 3, 7200, '2024-03-22'),
(3, 3, 2, 3500, '2024-03-18'),
(4, 4, 5, 8200, '2024-03-25'),
(5, 5, 4, 6400, '2024-03-28');

-- 4. Tournaments Table
CREATE TABLE tournaments (
    tournament_id INT PRIMARY KEY,
    game_id INT NOT NULL,
    tournament_name VARCHAR(100) NOT NULL,
    prize_pool INT NOT NULL,
    start_date DATE NOT NULL,
    FOREIGN KEY (game_id) REFERENCES games(game_id)
);

select * from tournaments;

INSERT INTO tournaments (tournament_id, game_id, tournament_name, prize_pool, start_date) VALUES
(1, 1, 'Battle Masters', 10000, '2024-05-10'),
(2, 3, 'Kingdom Wars', 5000, '2024-06-15'),
(3, 5, 'Future Domination', 8000, '2024-07-20'),
(4, 2, 'Speed Legends', 6000, '2024-08-05'),
(5, 4, 'Zombie Apocalypse', 7000, '2024-09-12');

-- 5. Friends Table
CREATE TABLE friends (
    friendship_id INT PRIMARY KEY,
    player1_id INT NOT NULL,
    player2_id INT NOT NULL,
    friendship_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (player1_id) REFERENCES players(player_id),
    FOREIGN KEY (player2_id) REFERENCES players(player_id)
);

select * from friends;

INSERT INTO friends (friendship_id, player1_id, player2_id, friendship_date, status) VALUES
(1, 1, 2, '2023-05-01', 'Accepted'),
(2, 2, 3, '2023-06-10', 'Pending'),
(3, 3, 4, '2023-07-20', 'Accepted'),
(4, 4, 5, '2023-08-30', 'Accepted'),
(5, 1, 5, '2024-02-14', 'Pending');