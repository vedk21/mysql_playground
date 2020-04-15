-- Use database --
USE champions_league;

-- Decimal data type for floating point type values (approximation) --
-- CREATE TABLE <NAME_OF_TABLE> (<COLUMN_NAME1> FLOAT);
CREATE TABLE players (rating FLOAT);
-- here precision is only about 7 digits

-- CREATE TABLE <NAME_OF_TABLE> (<COLUMN_NAME1> DOUBLE);
CREATE TABLE players (rating DOUBLE);
-- here precision is only about 15 digits
