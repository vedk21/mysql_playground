-- Use database --
USE champions_league;

-- Get substring from string using SUBSTRING or SUBSTR --
-- SELECT SUBSTRING(<string>, <start>, <end>) FROM <NAME_OF_TABLE>;
SELECT SUBSTRING(team_name, 1, 5) FROM teams;

-- SHORTCUT FOR SUBSTRING is SUBSTR
-- SELECT SUBSTR(<string>, <start>, <end>) FROM <NAME_OF_TABLE>;
SELECT SUBSTR(team_name, 1, 5) FROM teams;

-- We can only pass starting point also, hence end will be by default end of the string
-- SELECT SUBSTR(<string>, <start>) FROM <NAME_OF_TABLE>;
SELECT SUBSTR(team_name, 3) FROM teams;

-- We can only pass negative number as well, where -1 represents last char, -2 second last char and so on
-- SELECT SUBSTR(<string>, [-<start>]) FROM <NAME_OF_TABLE>;
SELECT SUBSTR(team_name, -3) FROM teams;
