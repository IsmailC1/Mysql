    -- TV Joins Challenge 1 SOLUTION
        select title,rating from series
    join reviews
    on series.id = reviews.series_id;
    -- TV Joins Challenge 2 SOLUTION
    
    select 
    title,
    avg(rating) as rating
    from series
    join reviews
    on series.id = reviews.series_id
    group by series_id 
    order by rating;
    
    -- TV Joins Challenge 3 SOLUTION
    
    SELECT
    first_name,
    last_name,
    rating
FROM reviewers
INNER JOIN reviews
    ON reviewers.id = reviews.reviewer_id;
    

SELECT
    first_name,
    last_name,
    rating
FROM reviews
INNER JOIN reviewers
    ON review
    
     -- TV Joins Challenge 4 SOLUTION
     
SELECT title 
FROM series 
LEFT JOIN  reviews
ON series.id = series_id
WHERE rating is NULL; 

   -- TV Joins Challenge 5 SOLUTION

     
SELECT genre, 
    round(avg(rating),2) as avg_rating
FROM series 
LEFT JOIN  reviews
ON series.id = series_id
group by genre;


-- CHALLENGE 6 - Reviewer Stats 

SELECT first_name, 
       last_name, 
       Count(rating)                               AS COUNT, 
       Ifnull(Min(rating), 0)                      AS MIN, 
       Ifnull(Max(rating), 0)                      AS MAX, 
       Round(Ifnull(Avg(rating), 0), 2)            AS AVG, 
       IF(Count(rating) > 0, 'ACTIVE', 'INACTIVE') AS STATUS 
FROM   reviewers 
       LEFT JOIN reviews 
              ON reviewers.id = reviews.reviewer_id 
GROUP  BY reviewers.id; 
-- CHALLENGE 6 - Reviewer Stats With POWER USERS 

SELECT first_name, 
       last_name, 
       Count(rating)                    AS COUNT, 
       Ifnull(Min(rating), 0)           AS MIN, 
       Ifnull(Max(rating), 0)           AS MAX, 
       Round(Ifnull(Avg(rating), 0), 2) AS AVG, 
       CASE 
         WHEN Count(rating) >= 10 THEN 'POWER USER' 
         WHEN Count(rating) > 0 THEN 'ACTIVE' 
         ELSE 'INACTIVE' 
       end                              AS STATUS 
FROM   reviewers 
       LEFT JOIN reviews 
              ON reviewers.id = reviews.reviewer_id 
GROUP  BY reviewers.id; 

-- CHALLENGE 7 - 3 TABLES!

SELECT 
    title,
    rating,
    CONCAT(first_name,' ', last_name) AS reviewer
FROM reviewers
INNER JOIN reviews 
    ON reviewers.id = reviews.reviewer_id
INNER JOIN series
    ON series.id = reviews.series_id
ORDER BY title;




