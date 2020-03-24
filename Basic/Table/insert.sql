-- Use database --
USE champions_league;

-- Insert data into table --
-- INSERT INTO <NAME_OF_TABLE> (
  -- column1, column2, ..., columnN --
-- ) --
-- VALUES ( --
  -- value1, value2, ..., valueN --
-- ) --
INSERT INTO teams (
  team_id, team_name, country, won_the_competition, current_champions
) VALUES (
  '123', 'DORTMUND', 'GERMANY', 1, 0
)

-- Multiple insert data into table --
-- INSERT INTO <NAME_OF_TABLE> (
  -- column1, column2, ..., columnN --
-- ) --
-- VALUES ( --
  -- valueA1, valueA2, ..., valueAN --
-- ), --
-- (
  -- valueB1, valueB2, ..., valueBN --
-- )... --
INSERT INTO teams (
  team_id, team_name, country, won_the_competition, current_champions
) VALUES (
  '123', 'DORTMUND', 'GERMANY', 1, 0
),
(
  '212', 'LIVERPOOL', 'ENGLAND', 6, 1
)

