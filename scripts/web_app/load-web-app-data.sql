SET GLOBAL local_infile = ON;

LOAD DATA LOCAL INFILE './anime_list_27_Jun.csv'
INTO TABLE anime
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(anime_id, url, type, episodes, status, broadcast, demographic, source, rating, title, duration_in_minutes, synopsis, premiered_season, premiered_year);

LOAD DATA LOCAL INFILE './genres_27_Jun.csv'
INTO TABLE genre
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(genre, genre_id);

LOAD DATA LOCAL INFILE './anime_genres_27_Jun.csv'
INTO TABLE anime_genre
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE './licensors_27_Jun.csv'
INTO TABLE licensor
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(licensor, licensor_id);

LOAD DATA LOCAL INFILE './anime_licensors_27_Jun.csv'
INTO TABLE anime_licensor
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE './producers_27_Jun.csv'
INTO TABLE producer
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(producer, producer_id);

LOAD DATA LOCAL INFILE './anime_producer_27_Jun.csv'
INTO TABLE anime_producer
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE './studios_27_Jun.csv'
INTO TABLE studio
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(studio, studio_id);

LOAD DATA LOCAL INFILE './anime_studios_27_Jun.csv'
INTO TABLE anime_studio
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE './themes_27_Jun.csv'
INTO TABLE theme
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(theme, theme_id);

LOAD DATA LOCAL INFILE './anime_themes_27_Jun.csv'
INTO TABLE anime_theme
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;