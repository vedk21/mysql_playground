-- Use database --
USE champions_league;

-- Right Outer join takes all the records from table A and table B on which the condition is met and also the records from table B where condition is not met too --
-- This join exclude all the records from result where condition is not met from table A but includes records from table B even if condition is not met --

-- Right Outer Join --
-- SELECT <COLUMN_NAME> FROM <NAME_OF_TABLE1> RIGHT JOIN <NAME_OF_TABLE2>
-- ON <NAME_OF_TABLE1>.<COLUMN_NAME> <OPERATOR> <NAME_OF_TABLE2><COLUMN_NAME>;
SELECT team_name, country, player_name FROM teams RIGHT JOIN players
ON teams.team_id = players.team_id;

-- NOTE: We can avoid using OUTER word in RIGHT JOIN as its implied --
-- NOTE: We can still do all the group by, order by, etc things on joins --
