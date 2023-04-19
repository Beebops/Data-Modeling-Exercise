-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE songs
(
id SERIAL PRIMARY KEY,
title TEXT NOT NULL,
duration_in_seconds INTEGER NOT NULL,
release_date DATE NOT NULL,
album_id INTEGER NOT NULL,
producers TEXT[] NOT NULL
);

CREATE TABLE albums
(
id SERIAL PRIMARY KEY,
title TEXT NOT NULL,
release_date DATE NOT NULL,
artist_id INTEGER NOT NULL
);

CREATE TABLE artists
(
id SERIAL PRIMARY KEY,
name TEXT NOT NULL
);

CREATE TABLE song_artists
(
song_id INTEGER NOT NULL,
artist_id INTEGER NOT NULL
);

CREATE TABLE album_artists
(
album_id INTEGER NOT NULL,
artist_id INTEGER NOT NULL
);

CREATE TABLE producers
(
id SERIAL PRIMARY KEY,
name TEXT NOT NULL
);

CREATE TABLE song_producers
(
song_id INTEGER NOT NULL,
producer_id INTEGER NOT NULL
);

INSERT INTO artists (name)
VALUES
('Hanson'),
('Queen'),
('Mariah Carey'),
('Boyz II Men'),
('Lady Gaga'),
('Bradley Cooper'),
('Nickelback'),
('Jay Z'),
('Alicia Keys'),
('Katy Perry'),
('Juicy J'),
('Maroon 5'),
('Christina Aguilera'),
('Avril Lavigne'),
('Destiny''s Child');

INSERT INTO albums (title, release_date, artist_id)
VALUES
('Middle of Nowhere', '05-06-1997', 1),
('A Night at the Opera', '11-21-1975', 2),
('Daydream', '10-03-1995', 3),
('A Star Is Born', '10-05-2018', 4),
('Silver Side Up', '09-11-2001', 7),
('The Blueprint 3', '09-08-2009', 8),
('Prism', '10-18-2013', 10),
('Hands All Over', '09-21-2010', 12),
('Let Go', '06-04-2002', 14),
('The Writing''s on the Wall', '07-27-1999', 15);

INSERT INTO song_artists (song_id, artist_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(3, 4),
(4, 5),
(4, 6),
(5, 7),
(6, 8),
(6, 9),
(7, 10),
(7, 11),
(8, 12),
(8, 13),
(9, 14),
(10, 15);

INSERT INTO producers (name)
VALUES
('Dust Brothers'),
('Stephen Lironi'),
('Roy Thomas Baker'),
('Walter Afanasieff'),
('Benjamin Rice'),
('Rick Parashar'),
('Al Shux'),
('Max Martin'),
('Cirkut'),
('Shellback'),
('Benny Blanco'),
('Darkchild');

INSERT INTO song_producers (song_id, producer_id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(7, 9),
(8, 7),
(9, 7),
(10, 8),
(11, 8),
(12, 10)
