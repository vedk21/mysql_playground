-- Use database --
USE champions_league;

-- Decimal data type for floating values --
-- CREATE TABLE <NAME_OF_TABLE> (<COLUMN_NAME1> DECIMAL(<TOTAL_DIGITS>, <DIGITS_AFTER_DECIMAL_POINT>));
CREATE TABLE players (overall_stats DECIMAL(4, 2));
-- Here a player can have max stats of 99.99 --
-- Total digits - 4
-- Digits after decimal - 2
