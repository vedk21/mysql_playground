-- Use database --
USE champions_league;

-- Add table to database with not null values --
-- Data types --
-- VARCHAR
-- TINYINT ranges from (-128 to 127) SIGNED and (0 to 255) UNSIGNED --
-- CREATE TABLE <NAME_OF_TABLE>
-- (
--    column_name data_type NOT NULL
-- );
CREATE TABLE teams
(
  team_id VARCHAR(10) NOT NULL,
  team_name VARCHAR(50) NOT NULL,
  country VARCHAR(30) NOT NULL,
  won_the_competition TINYINT UNSIGNED,
  current_champions TINYINT(1) UNSIGNED
);

-- Describe table details --
-- DESC <NAME_OF_TABLE>
DESC teams;
