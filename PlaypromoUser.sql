

## MySql Script

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `myUsers1`()
BEGIN
DECLARE a INT;
SET a=1;
Label1: WHILE a<=50 DO
INSERT INTO `users` (`UserKey`, `UserName`, `UserFirstName`, `UserLastName`, `UserPhone`, `UserEmail`, `Address1`, `Address2`, `City`, `State`, `Zip`, `UserPassword`, `UserPasswordSalt`, `Comments`, `UserCreateTS`, `UserLastUpdatedDateTime`, `UserBlocked`, `PermanentUserBlocked`, `EmailVerified`, `PhoneVerified`, `ForcePasswordChange`) VALUES 
(' ', 
 LCASE(LPAD(LEFT(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(TO_BASE64(UNHEX(HEX(MD5(RAND())))), "/", ""), "+", ""), "=", ""), "o", ""), "a", ""), "g", ""), "h", ""), "p", ""), "o", ""), 10), 10, 2)), 
 LCASE(LPAD(LEFT(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(TO_BASE64(UNHEX(HEX(MD5(RAND())))), "/", ""), "+", ""), "=", ""), "o", ""), "a", ""), "g", ""), "h", ""), "p", ""), "o", ""), 10), 10, 2)), 
 LCASE(LPAD(LEFT(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(TO_BASE64(UNHEX(HEX(MD5(RAND())))), "/", ""), "+", ""), "=", ""), "o", ""), "a", ""), "g", ""), "h", ""), "p", ""), "o", ""), 10), 10, 2)), 
 LPAD(FLOOR(RAND() * 70000000000), 10, '0'), 
 CONCAT("nana", ROUND(RAND() * 100),'@yopmail.com'), 
 LCASE(LPAD(LEFT(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(TO_BASE64(UNHEX(HEX(MD5(RAND())))), "/", ""), "+", ""), "=", ""), "o", ""), "a", ""), "g", ""), "h", ""), "p", ""), "o", ""), 10), 10, 2)), 
 LCASE(LPAD(LEFT(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(TO_BASE64(UNHEX(HEX(MD5(RAND())))), "/", ""), "+", ""), "=", ""), "o", ""), "a", ""), "g", ""), "h", ""), "p", ""), "o", ""), 10), 10, 2)),
 LCASE(LPAD(LEFT(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(TO_BASE64(UNHEX(HEX(MD5(RAND())))), "/", ""), "+", ""), "=", ""), "o", ""), "a", ""), "g", ""), "h", ""), "p", ""), "o", ""), 10), 10, 2)),
 LCASE(LPAD(LEFT(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(TO_BASE64(UNHEX(HEX(MD5(RAND())))), "/", ""), "+", ""), "=", ""), "o", ""), "a", ""), "g", ""), "h", ""), "p", ""), "o", ""), 10), 10, 2)), 
 ROUND(10.0+40.0*RAND()*1000), 
 CHAR( FLOOR(65 + (RAND() * 10))),FLOOR(@number * rand()) + 1,
 ' ',
 current_timestamp(),
 current_timestamp(), '0', '0', '0', '0', '0');

SET a=a+1;
END WHILE label1;
end$$
DELIMITER ;
