-- Use database --
USE champions_league;

-- Add table to database with primary key --
-- Data types --
-- VARCHAR
-- TINYINT ranges from (-128 to 127) SIGNED and (0 to 255) UNSIGNED --
-- CREATE TABLE <NAME_OF_TABLE>
-- (
--    column_name data_type DEFAULT <default_value>,
--    PRIMARY KEY (column_name)
-- );
CREATE TABLE teams
(
  team_id INT UNSIGNED NOT NULL,
  team_name VARCHAR(50) NOT NULL,
  country VARCHAR(30) NOT NULL,
  won_the_competition TINYINT UNSIGNED NOT NULL DEFAULT 0,
  current_champions TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (team_id)
);

-- Add table to database with primary key and auto increament --
-- Data types --
-- VARCHAR
-- TINYINT ranges from (-128 to 127) SIGNED and (0 to 255) UNSIGNED --
-- CREATE TABLE <NAME_OF_TABLE>
-- (
--    column_name data_type DEFAULT <default_value> AUTO_INCREMENT,
--    PRIMARY KEY (column_name)
-- );
CREATE TABLE teams
(
  team_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  team_name VARCHAR(50) NOT NULL,
  country VARCHAR(30) NOT NULL,
  won_the_competition TINYINT UNSIGNED NOT NULL DEFAULT 0,
  current_champions TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (team_id)
);

-- Describe table details --
-- DESC <NAME_OF_TABLE>
DESC teams;
