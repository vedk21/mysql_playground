-- Use database --
USE champions_league;

-- Create a table with foreign key --
-- CREATE TABLE <NAME_OF_TABLE1>
-- (
--    column_name data_type,
--    PRIMARY KEY (column_name)
-- )

-- CREATE TABLE <NAME_OF_TABLE2>
-- (
--    column_name data_type,
--    FOREIGN KEY (column_name) REFERENCES <NAME_OF_TABLE1>(column_name)
-- )
CREATE TABLE teams
(
  team_id INT UNSIGNED NOT NULL,
  team_name VARCHAR(50) NOT NULL,
  country VARCHAR(30) NOT NULL,
  won_the_competition TINYINT UNSIGNED NOT NULL DEFAULT 0,
  current_champions TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (team_id)
);

CREATE TABLE players
(
  player_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  player_name VARCHAR(100) NOT NULL,
  nationality VARCHAR(30) NOT NULL,
  team_id INT UNSIGNED,
  PRIMARY KEY (player_id),
  FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

-- On delete cascade --
-- If we delete the parent record then the child records dependent on it will also be deleted --
-- If no on delete cascade is added on table, then it will throw an error if we delete such parent data --
-- CREATE TABLE <NAME_OF_TABLE2>
-- (
--    column_name data_type,
--    FOREIGN KEY (column_name) REFERENCES <NAME_OF_TABLE1>(column_name) ON DELETE CASCADE
-- )
CREATE TABLE players
(
  player_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  player_name VARCHAR(100) NOT NULL,
  nationality VARCHAR(30) NOT NULL,
  team_id INT UNSIGNED,
  PRIMARY KEY (player_id),
  FOREIGN KEY (team_id) REFERENCES teams(team_id) ON DELETE CASCADE
);
