  
  a) select title from books where title like '%stories%';
  
  b) SELECT title, pages
      FROM books limit 6,1;    
      
  c)select Concat(title,'  -  ',released_year) as summary from books order by released_year desc limit 3;
  
  d) select title,author_lname from books where author_lname like '%\ %';
  
  e)select title,released_year, stock_quantity from books where 3 order by 3 limit 3;
  
  f)select title, author_lname from books order by 2,1;
  
  g)select CONCAT('MY FAVORITE AUTHOR IS ',author_lname, '!') as yell from books order by 1;