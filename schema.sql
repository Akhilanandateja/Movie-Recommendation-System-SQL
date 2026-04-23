CREATE DATABASE movie_db;
USE movie_db;

CREATE TABLE users(user_id INT PRIMARY KEY, name VARCHAR(50),age INT);

CREATE TABLE movies(movie_id INT PRIMARY KEY,title VARCHAR(100),genre VARCHAR(50));

CREATE TABLE ratings(user_id INT,movie_id INT,rating INT,
FOREIGN KEY(user_id) REFERENCES users(user_id),
FOREIGN KEY(movie_id) REFERENCES movies(movie_id));

CREATE TABLE watch_history(user_id INT,movie_id INT,watch_date DATE,
FOREIGN KEY(user_id) REFERENCES users(user_id),
FOREIGN KEY(movie_id) REFERENCES movies(movie_id));