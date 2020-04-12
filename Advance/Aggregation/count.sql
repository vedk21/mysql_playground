-- Use database --
USE champions_league;

-- Count number of records for given projection --
-- SELECT COUNT(<COLUMN_NAME>) FROM <NAME_OF_TABLE>;
SELECT COUNT(*) FROM teams;

-- Count specific number of records according to where clause given
-- SELECT COUNT(DISTINCT <COLUMN_NAME>) FROM <NAME_OF_TABLE> WHERE <COLUMN_NAME> <OPERATOR> <VALUE>;
SELECT COUNT(DISTINCT team_name) FROM teams WHERE won_the_competition > 0;
