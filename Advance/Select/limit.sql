-- Use database --
USE champions_league;

-- Limit the number of entries projected --
-- SELECT <COLUMN_NAME1>, ..., <COLUMN_NAMEn> FROM <NAME_OF_TABLE> LIMIT <limit_number>;
SELECT team_name, country FROM teams LIMIT 2;

-- Limit with a starting point --
-- SELECT <COLUMN_NAME1>, ..., <COLUMN_NAMEn> FROM <NAME_OF_TABLE> LIMIT <starting_limit_number>, <number_of_records>;
SELECT team_name, country FROM teams LIMIT 1, 2;
