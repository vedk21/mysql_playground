-- Use database --
USE champions_league;

-- Data types for storing date, time seperately and datetime combine --
-- CREATE TABLE <NAME_OF_TABLE> (<COLUMN_NAME> DATE)
CREATE TABLE players (contract_expiration_date DATE);
-- Format for DATE type - 'YYYY-MM-DD' --

-- CREATE TABLE <NAME_OF_TABLE> (<COLUMN_NAME> TIME)
CREATE TABLE players (daily_routine_checkup_time TIME);
-- Format for TIME type - 'HH:MM:SS' --

-- CREATE TABLE <NAME_OF_TABLE> (<COLUMN_NAME> DATETIME)
CREATE TABLE players (birthday DATETIME);
-- Format for DATETIME type - 'YYYY-MM-DD HH:MM:SS' --
