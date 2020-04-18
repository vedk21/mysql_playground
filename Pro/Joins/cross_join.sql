-- Use database --
USE champions_league;

-- Cross join is basically projectig every row of current table with every row of another table --
-- SELECT * FROM <NAME_OF_TABLE1>, <NAME_OF_TABLE2>;
SELECT * FROM teams, players;

-- NOTE: cross joins are almost never used --
