SELECT (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS avg; 
            257                                 100


SELECT
   COUNT(DISTINCT photos.id) / COUNT(DISTINCT users.id) AS avg_posts_per_user
FROM users
LEFT JOIN photos
ON users.id = photos.user_id;

            
SELECT
  users.id, username, photos.id, image_url
FROM users
LEFT JOIN photos
ON users.id = photos.user_id;
--283

SELECT
  COUNT(DISTINCT photos.id)
FROM users
LEFT JOIN photos
ON users.id = photos.user_id;
257