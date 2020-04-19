-- Use database --
USE champions_league;

-- Join table A, B and table C and project table A, B and C columns --
-- SELECT <COLUMN_NAME_A>, <COLUMN_NAME_B>, <COLUMN_NAME_C> FROM <NAME_OF_TABLE_A> JOIN <NAME_OF_TABLE_C>
-- ON <NAME_OF_TABLE_A>.<COLUMN_NAME_A> = <NAME_OF_TABLE_C>.<COLUMN_NAME_C>
-- JOIN <NAME_OF_TABLE_B>
-- ON <NAME_OF_TABLE_B>.<COLUMN_NAME_B> = <NAME_OF_TABLE_C>.<COLUMN_NAME_C>
SELECT player_name, injury_name, expected_recovery_date, severity
FROM players JOIN current_injuries
ON players.player_id = current_injuries.player_id
JOIN injuries
ON injuries.injury_id = current_injuries.injury_id;