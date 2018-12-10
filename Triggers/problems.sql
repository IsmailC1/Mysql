SELECT CONCAT(author_fname, ' ', author_lname) AS name, count(*) as 'books written' FROM books GROUP BY author_lname;  


Min
Max
Count
Sum
Avg
SELECT released_year as year, Count(*) as '# books', AVG(pages) as 'avg pages' FROM books GROUP BY released_year

Count all books in database
Count all books in db grouped by released year

Find author full name CONCATed of longest book

Find total stock of all books
Find avg released year for each author

CREATE TABLE employees (
    id INT NOT NULL AUTO_INCREMENT,
    last_name VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INTEGER NOT NULL,
    status VARCHAR(100) NOT NULL DEFAULT 'employed',
    PRIMARY KEY (id)
);

INSERT INTO employees (last_name, first_name, age) VALUES
('smith', 'joe', 23);

CREATE TABLE employees2 (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INTEGER NOT NULL,
    current_status VARCHAR(100) NOT NULL DEFAULT 'employed'
);


SELECT database();

CREATE DATABASE shirts_db;

use shirts_db;

SELECT database();

CREATE TABLE shirts
  (
    shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(100),
    color VARCHAR(100),
    shirt_size VARCHAR(100),
    last_worn INT,
    PRIMARY KEY(shirt_id)
  );

DESC shirts;

INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

SELECT * FROM shirts;

INSERT INTO shirts(color, article, shirt_size, last_worn) 
VALUES('purple', 'polo shirt', 'medium', 50);

SELECT * FROM shirts;

