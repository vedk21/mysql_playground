/*
  Reward the users who have been around the longest (min 3 years or more)
*/

USE instagram_use_case;

-- Solution --

SELECT username FROM users WHERE DATEDIFF(NOW(), created_at) > 1095;

-- 1095 = 365 * 3 (meaning number of days in 3 years span) --
