-- Use database --
USE champions_league;

-- Few commands to manage triggers in our database --

-- List all triggers in our chose database --
SHOW TRIGGERS;

-- Delete triggers from our database --
-- DROP TRIGGER <TRIGGER_NAME>;
DROP TRIGGER must_be_future_date;
