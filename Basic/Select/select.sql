-- Use database --
USE champions_league;

-- Select all data from table --
-- SELECT * FROM <NAME_OF_TABLE>
SELECT * FROM teams;

-- Select selective column data from table --
-- SELECT <column1>, <column2>, ..., <columnN> FROM <NAME_OF_TABLE>
SELECT team_name, country FROM teams;
