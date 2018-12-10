a) select count(stock_quantity) from books;      


b)  select released_year,count(*) from books group by released_year;

-- count all books from the stock
c) select sum(stock_quantity) from books;

-- find the avarage released_year for each author

d)   select author_lname,author_lname, avg(released_year) from books group by author_lname,author_fname;

-- find full name of the author who wrote the longest book 
e)  -  select concat(author_lname,'-',author_fname) as author from books where pages=(select max(pages) from books);
    -  select pages, CONCAT(author_fname,' ',author_lname) FROM books ORDER BY pages DESC limit 1; 
 

f)
    select released_year as year,
    count(*) as '# books',
    AVG(pages) as 'avg pages',
    FROM books group by released_year;
 