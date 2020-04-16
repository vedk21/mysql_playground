-- Use database --
USE champions_league;

-- Not equal operator - selecting everything expect something --
-- SELECT <COLUMN_NAME> FROM <NAME_OF_TABLE> WHERE <COLUMN_NAME> != <VALUE>
SELECT country FROM teams WHERE current_champions != 0;
