/*
  Find the inactive users who has never posted any photo
*/

USE instagram_use_case;

-- Solution --

SELECT username FROM users
LEFT JOIN photos
ON users.id = photos.user_id
WHERE image_url IS NULL;
