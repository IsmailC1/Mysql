-- // this is the code for deleting the item;

DELETE FROM cats WHERE name = 'Egg';

-- // in our table run these codes sequently to see what will happen at the end(the table will be deleted);
DELETE FROM cats WHERE name='Egg';
 
SELECT * FROM cats;
 
SELECT * FROM cats WHERE name='egg';
 
DELETE FROM cats WHERE name='egg';
 
SELECT * FROM cats;
 
DELETE FROM cats;