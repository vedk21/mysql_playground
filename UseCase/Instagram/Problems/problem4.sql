/*
  Find the photo which has the most likes on instagram
*/

USE instagram_use_case;

-- Solution --

SELECT
  users.username AS user,
  photos.image_url,
  COUNT(*) AS no_of_likes FROM photos
INNER JOIN likes
  ON photos.id = likes.photo_id
INNER JOIN users
  ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY no_of_likes DESC
LIMIT 1;
