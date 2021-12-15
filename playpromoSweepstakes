

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `mySweep5`()
BEGIN
DECLARE a INT;
SET a=1;
Label1: WHILE a<=50 DO
INSERT INTO `sweepstakes`(`SweepstakesKey`, `SweepstakesName`, `UserKey_LastUpdatedBy`, `UserKey_CreatedBy`, `SweepstakesCreateTS`, `SweepstakesLastUpdatedDateTime`) VALUES 
(' ',UCASE(LPAD(LEFT(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(TO_BASE64(UNHEX(HEX(MD5(RAND())))), "/", ""), "+", ""), "=", ""), "o", ""), "a", ""), "g", ""), "h", ""), "p", ""), "o", ""), 10), 10, 2)),
(select userroles.userkey from userroles inner join roles on userroles.rolekey=roles.rolekey && roles.Rolename="admin" ORDER BY rand() LIMIT 1),
(select userroles.userkey from userroles inner join roles on userroles.rolekey=roles.rolekey && roles.Rolename="admin" ORDER BY rand() LIMIT 1) ,
CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP());
SET a=a+1;
END WHILE label1;
end$$
DELIMITER ;
