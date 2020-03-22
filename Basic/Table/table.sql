-- Use database --
USE champions_league;

-- Add table to database --
-- Data types --
-- VARCHAR
-- TINYINT ranges from (-128 to 127) SIGNED and (0 to 255) UNSIGNED --
-- CREATE TABLE <NAME_OF_TABLE>
-- (
--    column_name data_type
-- );
CREATE TABLE teams
(
  team_id VARCHAR(10),
  team_name VARCHAR(50),
  country VARCHAR(30),
  won_the_competition TINYINT UNSIGNED,
  current_champions TINYINT(1) UNSIGNED
);

-- List tables --
-- SHOW TABLES --
SHOW TABLES;

-- List columns from table --
-- SHOW COLUMNS FROM <NAME_OF_TABLE> --
SHOW COLUMNS FROM teams;

-- Describe table details --
-- DESC <NAME_OF_TABLE>
DESC teams;

-- Drop table query --
-- DROP TABLE <NAME_OF_TABLE> --
DROP TABLE teams;
