DROP DATABASE IF EXISTS web_app;
CREATE DATABASE web_app;
USE web_app;

CREATE TABLE IF NOT EXISTS anime
(
    anime_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    synopsis TEXT NOT NULL,
    url VARCHAR(255),
    type ENUM('TV', 'Movie'),
    episodes SMALLINT UNSIGNED NOT NULL,
    status ENUM('Finished Airing', 'Currently Airing'),
    broadcast VARCHAR(40),
    demographic ENUM('Unknown', 'Shounen', 'Josei', 'Seinen', 'Shoujo', 'Kids'),
    source ENUM('Original', 'Manga', 'Light novel', 'Game', 'Visual novel',
       '4-koma manga', 'Novel', 'Other', 'Picture book', 'Unknown',
       'Web manga', 'Radio', 'Book', 'Mixed media', 'Card game', 'Music'),
	rating ENUM('R - 17+ (violence & profanity)', 'PG-13 - Teens 13 or older',
       'PG - Children', 'R+ - Mild Nudity', 'G - All Ages', 'Unknown',
       'Rx - Hentai'),
	title VARCHAR(300) NOT NULL,
    premiered_season ENUM('Winter', 'Spring', 'Summer', 'Fall'),
    premiered_year CHAR(4) NOT NULL,
    duration_in_minutes TINYINT UNSIGNED NOT NULL
);

CREATE TABLE IF NOT EXISTS genre
(
	genre_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    genre VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS licensor
(
	licensor_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    licensor VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS producer
(
	producer_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    producer VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS studio
(
	studio_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    studio VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS theme
(
	theme_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    theme VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS anime_genre
(
	anime_id INT UNSIGNED NOT NULL,
    genre_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (anime_id, genre_id),
	FOREIGN KEY (anime_id) REFERENCES anime(anime_id),
    FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);

CREATE TABLE IF NOT EXISTS anime_licensor
(
	anime_id INT UNSIGNED NOT NULL,
    licensor_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (anime_id, licensor_id),
	FOREIGN KEY (anime_id) REFERENCES anime(anime_id),
    FOREIGN KEY (licensor_id) REFERENCES licensor(licensor_id)
);

CREATE TABLE IF NOT EXISTS anime_producer
(
	anime_id INT UNSIGNED NOT NULL,
    producer_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (anime_id, producer_id),
	FOREIGN KEY (anime_id) REFERENCES anime(anime_id),
    FOREIGN KEY (producer_id) REFERENCES producer(producer_id)
);

CREATE TABLE IF NOT EXISTS anime_studio
(
	anime_id INT UNSIGNED NOT NULL,
    studio_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (anime_id, studio_id),
	FOREIGN KEY (anime_id) REFERENCES anime(anime_id),
    FOREIGN KEY (studio_id) REFERENCES studio(studio_id)
);

CREATE TABLE IF NOT EXISTS anime_theme
(
	anime_id INT UNSIGNED NOT NULL,
    theme_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (anime_id, theme_id),
	FOREIGN KEY (anime_id) REFERENCES anime(anime_id),
    FOREIGN KEY (theme_id) REFERENCES theme(theme_id)
);

CREATE TABLE IF NOT EXISTS user
(
	user_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS rating
(
	user_id INT UNSIGNED NOT NULL,
    anime_id INT UNSIGNED NOT NULL,
    rating TINYINT UNSIGNED NOT NULL,
    PRIMARY KEY(anime_id, user_id),
    FOREIGN KEY (anime_id) REFERENCES anime(anime_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);
