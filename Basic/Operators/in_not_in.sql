-- Use database --
USE champions_league;

-- Operator to find recrods matching multiple set of values --
-- SELECT <COLUMN_NAME> FROM <NAME_OF_TABLE> WHERE <COLUMN_NAME1> IN (<VALUE1>, <VALUE2>, ..., <VALUEn>)
SELECT team_name, country FROM teams WHERE country IN ('GERMANY', 'ITALY');

-- NOT IN will do opposite of IN --
SELECT team_name, country FROM teams WHERE country NOT IN ('GERMANY', 'ITALY');
