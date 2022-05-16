DROP DATABASE MySQL_challenges;

CREATE DATABASE IF NOT EXISTS MySQL_challenges;

USE MySQL_challenges;

CREATE TABLE rating (
    id INT,
    app_name VARCHAR(255),
    app_size BIGINT,
    price DECIMAL(5,2),
    total_ratings DECIMAL(2,1),
    genre VARCHAR(50)
);
INSERT INTO rating (id, app_name, app_size, price, total_ratings, genre) VALUES (281656475,"PAC-MAN Premium",100788224,3.99,4.5,"Games");

INSERT INTO rating (id, app_name, app_size, price, total_ratings, genre) VALUES (32165,"Centipede",99632342,5.99,3.7,"Games");
 
INSERT INTO rating (id, app_name, app_size, price, total_ratings, genre) VALUES (6549873,"Dracula",10243,1.99,4.9,"Books");

SELECT * FROM rating;

SELECT sum(price) AS Suma FROM rating;
SELECT max(total_ratings) AS Máximo FROM rating;
SELECT genre AS Género, avg(price) AS Media  FROM rating GROUP BY genre;