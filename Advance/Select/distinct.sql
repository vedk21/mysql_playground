-- Use database --
USE champions_league;

-- Select the entites distictly on the basis of columns --
-- SELECT DISTINCT <COLUMN_NAME1>, ..., <COLUMN_NAMEn> FROM <NAME_OF_TABLE> --
-- It is case-sensitive comparision --
SELECT DISTINCT team_name, country FROM teams;
