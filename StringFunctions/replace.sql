-- Use database --
USE champions_league;

-- Replace part of the string --
-- SELECT REPLACE(<string>, <string_to_replace>, <string_to_be_replaced_with>) FROM <NAME_OF_TABLE>; --
-- <string_to_replace> is case sensitive --
SELECT REPLACE(country, 'E', '*') FROM teams;
