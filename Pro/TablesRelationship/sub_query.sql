-- Use database --
USE champions_league;

-- Use sub-queries to aggregate two tables results --
-- SELECT <COLUMN_NAME> FROM <NAME_OF_TABLE1> WHERE <COLUMN_NAME> <OPERATOR> (SELECT <> FROM <NAME_OF_TABLE2> WHERE <COLUMN_NAME> <OPERATOR> <VALUE>)
SELECT player_name, nationality FROM players WHERE team_id IN
(
  SELECT team_id FROM teams WHERE country = 'GERMANY'
);
