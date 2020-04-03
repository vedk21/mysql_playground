-- Use database --
USE champions_league;

-- Select all data with a condition/clause --
-- SELECT * FROM <NAME_OF_TABLE> WHERE <COLUMN_NAME>=<VALUE>
-- <VALUE> is case insensitive --
SELECT * FROM teams WHERE country = 'Germany';
