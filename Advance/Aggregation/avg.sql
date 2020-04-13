-- Use database --
USE champions_league;

-- Find the average of a column --
-- SELECT AVG(<COLUMN_NAME>) FROM <NAME_OF_TABLE>;
-- It always returns floating number --
SELECT AVG(won_the_competition) FROM teams;

-- Find the average of each country winning competition --
SELECT country, AVG(won_the_competition) FROM teams GROUP BY country;
