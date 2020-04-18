-- Use database --
USE champions_league;

-- Inner join takes all the records from table A and table B on which the condition is met --
-- These join exclude all the records from result where condition is not met --

-- Implicit Inner Join --
-- SELECT <COLUMN_NAME> FROM <NAME_OF_TABLE1>, <NAME_OF_TABLE2>
-- WHERE <NAME_OF_TABLE1>.<COLUMN_NAME> <OPERATOR> <NAME_OF_TABLE2><COLUMN_NAME>;
SELECT team_name, country, player_name FROM teams, players
WHERE teams.team_id = players.team_id;

-- Explicit Inner Join --
-- SELECT <COLUMN_NAME> FROM <NAME_OF_TABLE1> JOIN <NAME_OF_TABLE2>
-- ON <NAME_OF_TABLE1>.<COLUMN_NAME> <OPERATOR> <NAME_OF_TABLE2><COLUMN_NAME>;
SELECT team_name, country, player_name FROM teams JOIN players
ON teams.team_id = players.team_id;

-- NOTE: JOIN = INNER JOIN --
-- If we are only specifying JOIN then it already means its INNER JOIN --
