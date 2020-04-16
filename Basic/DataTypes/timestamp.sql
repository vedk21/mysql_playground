-- Use database --
USE champions_league;

-- Create table with records having details of current timestamp --
-- CREATE TABLE <NAME_OF_TABLE> (<COLUMN_NAME1> TIMESTAMP DEFAULT NOW())
CREATE TABLE players (name VARCHAR(100), created_at TIMESTAMP DEFAULT NOW());

-- To also store details of when the record was updated --
-- CREATE TABLE <NAME_OF_TABLE> (<COLUMN_NAME1> TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP)
CREATE TABLE players (name VARCHAR(100), created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP);

-- NOW() and CURRENT_TIMESTAMP can be used interchangeably --
