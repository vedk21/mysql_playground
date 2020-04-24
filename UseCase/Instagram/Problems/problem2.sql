/*
  What day of the week most of the users registered on instagram
*/

USE instagram_use_case;

-- Solution --

SELECT DAYNAME(created_at) AS Day_Of_Week, COUNT(*) AS Users FROM users
GROUP BY Day_Of_Week
ORDER BY Users DESC
LIMIT 1;
