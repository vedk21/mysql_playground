-- Use database --
USE champions_league;

-- CHAR is used when string is of fixed length and VARCHAR is used when string is of variable length --
-- If we enter less number of characters in VAR type then it get filled with spaces, if entered more then it gets truncated to fixed length --
-- Use CHAR if we need to add fixed length string into db, to improve performance --
-- CREATE TABLE <NAME_OF_TABLE> (<COLUMN_NAME1> CHAR(<FIXED_SIZE>), <COLUMN_NAME2> VARCHAR(<SIZE>));
CREATE TABLE players (name VARCHAR(100), position CHAR(3))
-- Here position can only be ('STR', 'MID', 'DEF', 'GOK')
-- STR: STRIKER
-- MID: MID-FIELDER
-- DEF: DEFENDER
-- GOK: GOAL-KEEPER
