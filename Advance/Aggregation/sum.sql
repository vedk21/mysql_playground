-- Use database --
USE champions_league;

-- Sum the number of records to aggragate the value --
-- SELECT SUM(<COLUMN_NAME>) FROM <NAME_OF_TABLE>;
SELECT SUM(won_the_competition) FROM teams;

-- Find number of times each country has won the champions league --
SELECT country, SUM(won_the_competition) FROM teams GROUP BY country;
