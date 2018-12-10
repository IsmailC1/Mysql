-- in the first item three first leeter has to be removed (second item) and replaced by (third item); 
select replace('hello World','hell','$%*&');
-- another example
select 
    replace('cheese bread coffee milk', ' ', ' and ');
    
    
    -- an exapmle of using two function in the same line
    SELECT 
       SUBSTRING(REPLACE(title,'e','3') AS 'weird string',1,10)
    FROM books;