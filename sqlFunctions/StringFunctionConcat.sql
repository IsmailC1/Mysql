-- // let first type mysql string function into the goolge browser and see a lot of fuction that sql posses.One of them is Concat funciton so let see how it works;
select concat('Hello','','World');

-- But when we deal with big files the concat function does not know which thing to combine with another thing ... so we have to tell it
-- in the books examle It is asked to combine author's first name with its last name;
Select 
   concat(author_fname,' ',author_lname)
from books; 

-- Let do it in three separate columns
select author_fname as first, author_lname as last,
concat(author_fname,' ',author_lname) As full
from books;


-- /// there is another function CONCAT_WS which works similarly as CONCAT except it includes separation between the items.
--  instead of typing this line
SELECT CONCAT(title, '-', author_fname, '-', author_lname) FROM books;
--  it can be done like this;
Select 
    CONCAT_WS(' - ',title, author_fname,author_lname)
From books;

