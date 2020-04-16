-- Use database --
USE champions_league;

-- Not like operator - selecting everything expect something --
-- SELECT <COLUMN_NAME> FROM <NAME_OF_TABLE> WHERE <COLUMN_NAME> != <VALUE>
SELECT team_name FROM teams WHERE team_name NOT LIKE '%UNITED%';
