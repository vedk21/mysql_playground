/*
  Find the bots in pur instagram platform (user who has liked every photo)
*/

USE instagram_use_case;

-- Solution --

SELECT
  username FROM users
INNER JOIN likes
  ON users.id = likes.user_id
GROUP BY users.id
HAVING COUNT(*) = (SELECT COUNT(*) FROM photos);
