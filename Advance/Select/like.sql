-- Use database --
USE champions_league;

-- Match strings with a pattern --
-- SELECT <COLUMN_NAME1>, ..., <COLUMN_NAMEn> FROM <NAME_OF_TABLE> WHERE <COLUMN_NAME> LIKE <pattern>;
SELECT team_name, country FROM teams WHERE team_name LIKE '%UNITED%';

-- %: any character, _: only one character
-- SELECT <COLUMN_NAME1>, ..., <COLUMN_NAMEn> FROM <NAME_OF_TABLE> WHERE <COLUMN_NAME> LIKE <pattern>;
SELECT team_name, country, won_the_competition FROM teams WHERE won_the_competition LIKE '__';
