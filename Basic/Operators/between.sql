-- Use database --
USE champions_league;

-- Selection based on range of inputs --
-- SELECT <COLUMN_NAME> FROM <NAME_OF_TABLE> WHERE <COLUMN_NAME1> BETWEEN <VALUE1> AND <VALUE2>
SELECT team_name FROM teams WHERE won_the_competition BETWEEN 2 AND 5;

-- Values are inclusive on both ends --

-- Also there is NOT BETWEEN --
SELECT team_name FROM teams WHERE won_the_competition NOT BETWEEN 2 AND 5;

-- NOTE: While working with dates - we can CAST value to proper data type (recommended: DATETIME)
-- SELECT <COLUMN_NAME> FROM <NAME_OF_TABLE> WHERE <COLUMN_NAME> BETWEEN CAST('YYYY-MM-DD', DATETIME) AND CAST('YYYY-MM-DD', DATETIME)