-- Use database --
USE champions_league;

-- Cross join is basically projectig every row of current table with every row of another table --
-- SELECT * FROM <NAME_OF_TABLE1>, <NAME_OF_TABLE2>;
-- Implicit Cross Join --
SELECT * FROM teams, players;

-- Explicit Cross Join --
SELECT * FROM teams CROSS JOIN players;

-- NOTE: cross joins are almost never used --
