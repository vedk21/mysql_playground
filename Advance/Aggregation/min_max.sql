-- Use database --
USE champions_league;

-- Find min and max from the given column --
-- SELECT MIN(<COLUMN_NAME>) FROM <NAME_OF_TABLE>;
SELECT MIN(won_the_competition) FROM teams;

-- SELECT MAX(<COLUMN_NAME>) FROM <NAME_OF_TABLE>;
SELECT MAX(won_the_competition) FROM teams;

-- Find a team who the competition most number of times
SELECT team_name, won_the_competition FROM teams WHERE won_the_competition = (
  SELECT MAX(won_the_competition) FROM teams
);

-- Find teams from a country which has won the competition for max number of times
SELECT country, MAX(won_the_competition) FROM teams GROUP BY country;
