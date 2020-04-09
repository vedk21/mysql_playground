-- Use database --
USE champions_league;

-- Get substring from string using SUBSTRING or SUBSTR --
-- SELECT SUBSTRING(<string>, <start>, <end>) FROM <NAME_OF_TABLE>;
SELECT SUBSTRING(team_name, 1, 5) FROM teams;

-- SHORTCUT FOR SUBSTRING is SUBSTR
-- SELECT SUBSTR(<string>, <start>, <end>) FROM <NAME_OF_TABLE>;
SELECT SUBSTR(team_name, 1, 5) FROM teams;
