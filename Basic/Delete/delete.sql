-- Use database --
USE champions_league;

-- Delete record from table --
-- DELETE FROM <NAME_OF_TABLE> WHERE <COLUMN_NAME> = <VALUE> --
DELETE FROM teams WHERE team_name = 'ASTON VILLA';

-- Delete all records in the table --
-- DELETE FROM <NAME_OF_TABLE> --
DELETE FROM teams;
