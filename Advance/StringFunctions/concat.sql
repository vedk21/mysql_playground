-- Use database --
USE champions_league;

-- Concat the strings using CONCAT and CONCAT_WS operator --
-- SELECT CONCAT(<COLUMN_NAME1>, <SEPERATOR1>, <COLUMN_NAME2>, <SEPERATOR1>, ..., <COLUMN_NAMEn>) FROM <NAME_OF_TABLE>
SELECT CONCAT(team_name, ' -> ' country) FROM teams;

-- SELECT CONCAT_WS(<COMMON_SEPERATOR>, <COLUMN_NAME1>, <COLUMN_NAME2>, ..., <COLUMN_NAMEn>) FROM <NAME_OF_TABLE>
SELECT CONCAT_WS(' -> ', team_name, country) FROM teams;
