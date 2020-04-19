-- Use database --
USE champions_league;

-- Join table A and table C and project table A and C columns --
-- SELECT <COLUMN_NAME_A>, <COLUMN_NAME_C> FROM <NAME_OF_TABLE_A> JOIN <NAME_OF_TABLE_C>
-- ON <NAME_OF_TABLE_A>.<COLUMN_NAME_A> = <NAME_OF_TABLE_C>.<COLUMN_NAME_C>
SELECT player_name, expected_recovery_date, severity
FROM players JOIN current_injuries ON players.player_id = current_injuries.player_id;

-- Find the final expected recovery date for a player struggling with injury --
SELECT player_name, MAX(expected_recovery_date) as ERD
FROM players JOIN current_injuries ON players.player_id = current_injuries.player_id
GROUP BY players.player_id
ORDER BY ERD DESC;

-- Find players who has no injuries --
SELECT player_name FROM players LEFT JOIN current_injuries
ON players.player_id = current_injuries.player_id
WHERE severity IS NULL;
