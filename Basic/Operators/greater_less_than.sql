-- Use database --
USE champions_league;

-- greater than or less than operator --
-- SELECT <COLUMN_NAME> FROM <NAME_OF_TABLE> WHERE <COLUMN_NAME> > <VALUE>
SELECT team_name, won_the_competition FROM teams WHERE won_the_competition > 2;

-- SELECT <COLUMN_NAME> FROM <NAME_OF_TABLE> WHERE <COLUMN_NAME> < <VALUE>
SELECT team_name, won_the_competition FROM teams WHERE won_the_competition < 2;

-- SELECT <COLUMN_NAME> FROM <NAME_OF_TABLE> WHERE <COLUMN_NAME> >= <VALUE>
SELECT team_name, won_the_competition FROM teams WHERE won_the_competition >= 2;

-- SELECT <COLUMN_NAME> FROM <NAME_OF_TABLE> WHERE <COLUMN_NAME> <= <VALUE>
SELECT team_name, won_the_competition FROM teams WHERE won_the_competition <= 2;