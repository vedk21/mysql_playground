-- Use database --
USE champions_league;

-- Group records on a column data or columns data --
-- SELECT <COLUMN_NAME>, <AGGREGATE_FUNCTION> FROM <NAME_OF_TABLE> GROUP BY <COLUMN_NAME>;
SELECT country, COUNT(*) FROM teams GROUP BY country;
