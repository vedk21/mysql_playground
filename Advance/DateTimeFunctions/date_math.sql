-- Use database --
USE champions_league;

-- Find difference between different dates --
-- SELECT DATEDIFF(<datetime>, <date>);
SELECT DATEDIFF('2020-06-18', '2020-05-18');

-- Add or subtract days, months, years, minutes, seconds, etc... --
-- SELECT DATE_ADD(<datetime>, INTERVAL <number> <SPECIFIER>)
SELECT DATE_ADD('2019-06-21', INTERVAL 1 MONTH);

-- Shortcut for adding or subtracting days, months, etc ...
-- SELECT <datetime> + INTERVAL <number> <SPECIFIER> - INTERVAL <number> <SPECIFIER>
SELECT '2020-02-21' + INTERVAL 2 MONTH - INTERVAL 1 DAY;

-- Please refer to official docs for more such function details --
