SELECT * FROM books WHERE author_fname  LIKE 'dav%';


SELECT author_lname, AVG(released_year) 'avg year' FROM books GROUP BY author_lname;
AVG IGNORES NULL

SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

SELECT author_fname, author_lname FROM books ORDER BY author_lname, author_fname;