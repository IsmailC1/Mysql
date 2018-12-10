-- The function will count the number of element written inside the parentheses; 
SELECT CHAR_LENGTH('HELLO WORLD');

SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;

-- use the code below to see how many characters has each author name in books table;
SELECT 
   CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long')
FROM books;

-- words could be converted to upparcase and lowercase words. Examples: 

SELECT UPPER('Hello World');
 
SELECT LOWER('Hello World');
 
SELECT UPPER(title) FROM books;
 
SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;
 
SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;