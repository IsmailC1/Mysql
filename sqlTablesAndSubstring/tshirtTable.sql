SELECT database();
-- // Firstly, we will create a new database
Create database shirts_db;
-- after that, we will run the code below to select the database that we will work with
use shirts_db;
-- now create the table of a shirt property
Create table shirts(
shirt_id int  not null AUTO_INCREMENT,
article varchar(100),
color varchar(255),
shirt_size varchar(255),
last_worn INT,
primary key(shirt_id)
); 
-- look what it looks like
DESC shirts;
-- insert new items into the shirts talbe
insert into shirts(article,color,shirt_size,last_worn)
values 
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);
-- control the table 
select * from shirts;
-- add a new shirt ( PURPLE polo shirt, size M  last worn 50 days ago)
insert into shirts(color,article,shirt_size,last_worn)
values('purple','polo shirt','M',50);
-- control the new item 
SELECT * FROM shirts;


-- reading data
-- but only Print Out Article and Color
Select article, color from shirts;

--  print all midium shirts
SELECT * FROM shirts WHERE shirt_size='M';

-- //print out everything But shirt_id
SELECT article, color, shirt_size, last_worn From shirts where shirt_size='M';


-- update datas
-- //before updating select the items that should be updated
SELECT * FROM shirts WHERE article = 'polo shirt';
--  update polo shirts set all shirt sizes to be  L  
UPDATE shirts SET shirt_size='L' WHERE article='polo shirt';
-- update all white shirts,change the size to 'XS' and color to 'off white'
select * from shirts where color='white';
UPDATE shirts set color='off white', shirt_size='XS' WHERE color='white';


-- delete all old shirts, last worn 200 days ago--
SELECT * from shirts where last_worn=200;
DELETE from shirts WHERE last_worn=200;
 
--  delete all tank tops 
 SELECT * FROM shirts WHERE article='tank top';
 DELETE FROM   shirts WHERE article='tank top';
 

--  delete all the shirts;
DELETE FROM shirts;


-- drop the entire shirts table
DROP table shirts;