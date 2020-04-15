-- Use database --
USE champions_league;

-- Utility functions to get current time, date and datetime --
SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();


-- Use of these functions in actual query --
INSERT INTO players (_created_date) VALUES(NOW());
-- columns starting with '_' underscore will represent the metadata columns --
-- this is not mysql implementation, it is for projects internal understanding --
