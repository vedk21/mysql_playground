-- Use database --
USE champions_league;

-- Formatting dates with using specifiers in one go using one function 'DATE_FORMAT' --
-- SELECT DATE_FORMAT(<COLUMN_NAME>, '<specifier1>, <specifier2>, ...') FROM <NAME_OF_TABLE>;
SELECT DATE_FORMAT(_created_date, '%d/%m/&Y') FROM players;

-- There are different specifiers available for this function, please refer official documentation --
