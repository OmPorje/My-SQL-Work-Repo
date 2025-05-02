CREATE DATABASE Spotify;
USE Spotify;

-- Table 1: Users 
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    join_date DATE,
    subscription_type VARCHAR(20)
);

INSERT INTO Users (username, email, join_date, subscription_type) VALUES
('melodyfan', 'melody@example.com', '2024-01-15', 'Premium'),
('beatdrop', 'beat@example.com', '2024-02-10', 'Free'),
('tunelover', 'tune@example.com', '2024-03-01', 'Premium'),
('audiophile', 'audio@example.com', '2024-03-20', 'Free'),
('vibesonly', 'vibe@example.com', '2024-04-01', 'Premium');

SELECT * FROM Users;

-- Table 2: Artists 
CREATE TABLE Artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(100),
    genre VARCHAR(50),
    country VARCHAR(50),
    debut_year INT
);

INSERT INTO Artists (artist_name, genre, country, debut_year) VALUES
('The Echoes', 'Rock', 'USA', 2010),
('DJ Wave', 'EDM', 'Netherlands', 2015),
('Lyrica', 'Pop', 'UK', 2012),
('Rhythm Kings', 'Jazz', 'France', 2008),
('SoundStorm', 'Hip-Hop', 'Canada', 2016);

SELECT * FROM Artists;

-- Table 3: Songs 
CREATE TABLE Songs (
    song_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    artist_id INT,
    release_date DATE,
    duration_seconds INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

INSERT INTO Songs (title, artist_id, release_date, duration_seconds) VALUES
('Echo in the Night', 1, '2022-05-01', 210),
('Waves of Sound', 2, '2023-06-15', 180),
('Pop Vibes', 3, '2021-08-20', 200),
('Smooth Jazz Flow', 4, '2020-11-30', 240),
('Storm Beats', 5, '2023-01-10', 230);

SELECT * FROM Songs;

-- Table 4: Playlists 

CREATE TABLE Playlists (
    playlist_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    name VARCHAR(100),
    creation_date DATE,
    is_public VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Playlists (user_id, name, creation_date, is_public) VALUES
(1, 'Chill Rock', '2024-03-01', 'TRUE'),
(2, 'EDM Party', '2024-03-05', 'FALSE'),
(3, 'Pop Hits', '2024-03-10', 'TRUE'),
(4, 'Jazz Evenings', '2024-03-15', 'TRUE'),
(5, 'Hip-Hop Vibes', '2024-04-01', 'FALSE');

SELECT * FROM Playlists;

-- Table 5: PlaylistSongs table
CREATE TABLE PlaylistSongs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    playlist_id INT,
    song_id INT,
    added_date DATE,
    FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);

INSERT INTO PlaylistSongs (playlist_id, song_id, added_date) VALUES
(1, 1, '2024-03-02'),
(2, 2, '2024-03-06'),
(3, 3, '2024-03-11'),
(4, 4, '2024-03-16'),
(5, 5, '2024-04-02');

SELECT * FROM PlaylistSongs;
