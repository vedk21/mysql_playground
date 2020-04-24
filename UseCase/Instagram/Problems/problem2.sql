/*
  What day of the week most of the users registered on instagram
*/

USE instagram_use_case;

-- Solution --

SELECT DAYOFWEEK(created_at) as 'Day Of Week', COUNT(*) as Users FROM users
GROUP BY DAYOFWEEK(created_at)
ORDER BY Users DESC
LIMIT 1;
