-- Use database --
USE champions_league;

-- Sort/Order entries in ascending or descending order --
-- By default it is ordered ascending --
-- SELECT <COLUMN_NAME1>, ..., <COLUMN_NAMEn> FROM <NAME_OF_TABLE> ORDER BY <COLUMN_NAME1>, ..., <COLUMN_NAMEn>;
SELECT team_name, won_the_competition FROM teams ORDER BY won_the_competition;

-- Descsending order by --
-- SELECT <COLUMN_NAME1>, ..., <COLUMN_NAMEn> FROM <NAME_OF_TABLE> ORDER BY <COLUMN_NAME1>, ..., <COLUMN_NAMEn> DESC;
SELECT team_name, won_the_competition FROM teams ORDER BY won_the_competition DESC;

-- Use order number instead of column name --
-- SELECT <COLUMN_NAME1>, ..., <COLUMN_NAMEn> FROM <NAME_OF_TABLE> ORDER BY <NUMBER_OF_COLUMN_IN_SELECTION>;
-- Here 2 means it will order according to 'won_the_competition' column --
SELECT team_name, won_the_competition FROM teams ORDER BY 2;
