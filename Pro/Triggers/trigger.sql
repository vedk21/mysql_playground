-- Use database --
USE champions_league;

-- create trigger to execute certain statements before or after certain database events --
-- DELIMITER $$
-- CREATE TRIGGER <TRIGGER_NAME>
-- <TRGGER_TIME> <TRIGGER_EVENT> ON <NAME_OF_TABLE> FOR EACH ROW
--  BEGIN
--    IF NEW.<COLUMN_NAME> <OPERATOR> <VALUE>
--    THEN
--      SIGNAL SQLSTATE '45000'
--      SET MESSAGE_TEXT = '<ERROR_MESSAGE_TO_DISPLAY>';
--    END IF;
--  END;
-- $$
-- DELIMITER ;
DELIMITER $$

CREATE TRIGGER must_be_future_date
     BEFORE INSERT ON current_injuries FOR EACH ROW
     BEGIN
          IF NEW.expected_recovery_date < NOW()
          THEN
              SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Expected recovery date must be a date in future!';
          END IF;
     END;
$$

DELIMITER ;

-- NOTE:
-- TRGGER_TIME can be 'BEFORE' or 'AFTER'
-- TRIGGER_EVENT can be 'INSERT', 'UPDATE' or 'DELETE'
-- While inserting we can refer the new record 'NEW'
-- While deleting we can refer the old record as 'OLD'
-- SIGNAL SQLSTATE 45000 is a user available error state,
-- rest othe error codes are defined for various standard error codes
