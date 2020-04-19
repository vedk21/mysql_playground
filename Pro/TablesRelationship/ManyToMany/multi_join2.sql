-- Use database --
USE champions_league;

-- Join table B and table C and project table B and C columns --
-- SELECT <COLUMN_NAME_B>, <COLUMN_NAME_C> FROM <NAME_OF_TABLE_B> JOIN <NAME_OF_TABLE_C>
-- ON <NAME_OF_TABLE_B>.<COLUMN_NAME_B> = <NAME_OF_TABLE_C>.<COLUMN_NAME_C>
SELECT injury_name, expected_recovery_date, severity
FROM injuries JOIN current_injuries ON injuries.injury_id = current_injuries.injury_id;

-- Find the final expected recovery date for an injury type --
SELECT injury_name, MAX(expected_recovery_date) as ERD
FROM injuries JOIN current_injuries ON injuries.injury_id = current_injuries.injury_id
GROUP BY injuries.injury_id
ORDER BY ERD DESC;
