/*
  Find the most used hashtags on photos of instagram (top 5)
*/

USE instagram_use_case;

-- Solution --

SELECT
  tag_name,
  COUNT(*) AS total FROM tags
INNER JOIN photo_tags
  ON tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER BY total DESC
LIMIT 5;
