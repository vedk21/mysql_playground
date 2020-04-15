-- Use database --
USE champions_league;

-- Get individiual day, dayofweek, dayofyear, dayname, etc... --
-- SELECT DAY(<COLUMN_NAME>) FROM <NAME_OF_TABLE>;
SELECT DAY(_created_date) FROM players;

-- SELECT DAYOFYEAR(<COLUMN_NAME>) FROM <NAME_OF_TABLE>;
SELECT DAYOFYEAR(_created_date) FROM players;

-- SELECT DAYNAME(<COLUMN_NAME>) FROM <NAME_OF_TABLE>;
SELECT DAYNAME(_created_date) FROM players;

-- SELECT MONTH(<COLUMN_NAME>) FROM <NAME_OF_TABLE>;
SELECT MONTH(_created_date) FROM players;

-- REFER: mysql official documentation for rest other date time functions
