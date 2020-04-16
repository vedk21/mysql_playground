-- Use database --
USE champions_league;

-- Logical and/or operator - combining different condition together --
-- SELECT <COLUMN_NAME> FROM <NAME_OF_TABLE> WHERE <COLUMN_NAME1> = <VALUE> AND <COLUMN_NAME2> != <VALUE>
SELECT team_name FROM teams WHERE team_name NOT LIKE '%UNITED%' AND won_the_competition > 2;

-- SELECT <COLUMN_NAME> FROM <NAME_OF_TABLE> WHERE <COLUMN_NAME1> = <VALUE> OR <COLUMN_NAME2> != <VALUE>
SELECT team_name FROM teams WHERE country LIKE '%GERMANY%' OR won_the_competition > 2;

-- We can also use && / || instead of AND / OR --
