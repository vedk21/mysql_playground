-- Use database --
USE champions_league;

-- Left Outer join takes all the records from table A and table B on which the condition is met and also the records from table A where condition is not met too --
-- This join exclude all the records from result where condition is not met from table B but includes records from table A even if condition is not met --

-- Left Outer Join --
-- SELECT <COLUMN_NAME> FROM <NAME_OF_TABLE1> LEFT JOIN <NAME_OF_TABLE2>
-- ON <NAME_OF_TABLE1>.<COLUMN_NAME> <OPERATOR> <NAME_OF_TABLE2><COLUMN_NAME>;
SELECT team_name, country, player_name FROM teams LEFT JOIN players
ON teams.team_id = players.team_id;

-- There is a way to show NULL as a different custom value using IFNULL function --
-- SELECT <COLUMN_NAME>, IFNULL(<COLUMN_NAME_CAN_BE_NULL>, <CUSTOM_VALUE>) FROM <NAME_OF_TABLE1> LEFT JOIN <NAME_OF_TABLE2>
-- ON <NAME_OF_TABLE1>.<COLUMN_NAME> <OPERATOR> <NAME_OF_TABLE2><COLUMN_NAME>;
SELECT team_name, country, IFNULL(player_name, 'No Player Available') FROM teams LEFT JOIN players
ON teams.team_id = players.team_id;

-- NOTE: We can avoid using OUTER word in LEFT JOIN as its implied --
-- NOTE: We can still do all the group by, order by, etc things on joins --
