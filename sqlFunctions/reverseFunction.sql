-- the reverse function is used for reversing text. It could be done in a such way.. 
SELECT REVERSE('Hello World');
-- using two Deferent function in one line; 
SELECT CONCAT('woof', REVERSE('woof'));
-- apply it in the book database;
SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;
