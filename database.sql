DROP DATABASE IF EXISTS video_club;
CREATE DATABASE video_club;
USE video_club;

DROP TABLE IF EXISTS movies;
CREATE TABLE movies(
  `id` VARCHAR(50) NOT NULL PRIMARY KEY,
  `title` VARCHAR(255) NOT NULL,
  `year` INT NOT NULL,
  `rating` FLOAT NOT NULL,
  `rated` VARCHAR(50) NOT NULL,
  `released_date` DATE NOT NULL,
  `duration` VARCHAR(10) NOT NULL,
  `genres` JSON NOT NULL,
  `directors` JSON NOT NULL,
  `writers` JSON NOT NULL,
  `actors` JSON NOT NULL,
  `plot` MEDIUMTEXT NOT NULL,
  `languages` JSON NOT NULL,
  `awards` JSON NOT NULL,
  `poster` VARCHAR(255) NOT NULL,
  `ratings` JSON NOT NULL
);

CREATE INDEX index_title ON movies (`title`);