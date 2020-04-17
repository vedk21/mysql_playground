-- Use database --
USE champions_league;

-- If we want to have conditional selectional in our query, we use case statements --
-- SELECT <COLUMN_NAME>, 
--    CASE
--      WHEN <COLUMN_NAME> <OPERATOR> <VALUE1> THEN <PRINT_VALUE1>
--      WHEN <COLUMN_NAME> <OPERATOR> <VALUE2> THEN <PRINT_VALUE2>
--      ...
--      ELSE <PRINT_VALUE>
--    END AS <ALIAS_NAME>
--  FROM <NAME_OF_TABLE>
SELECT team_name, country,
  CASE
    WHEN current_champions = 1 THEN 'YES'
    ELSE 'NO'
  END AS CHAMPIONS
FROM teams;
