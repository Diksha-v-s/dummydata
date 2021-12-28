DELIMITER $$
CREATE PROCEDURE `mySweep1`()
BEGIN
DECLARE a INT;
SET a=1;
Label1: WHILE a<=50 DO
INSERT INTO `Sweepstakes`( `SweepstakesName`,`CompanyKey`,`Comments`,`SweepstakesBlocked`,`UserKey_LastUpdatedBy`, `UserKey_CreatedBy`, `SweepstakesCreateTS`, `SweepstakesLastUpdatedDateTime`) VALUES 
(UCASE(LPAD(LEFT(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(TO_BASE64(UNHEX(HEX(MD5(RAND())))), "/", ""), "+", ""), "=", ""), "o", ""), "a", ""), "g", ""), "h", ""), "p", ""), "o", ""), 10), 10, 2)),
(SELECT CompanyKey from Companies order by rand() limit 1),
'Add Sweepstakes',
'0',
(select UserRoles.UserKey from UserRoles inner join Roles on UserRoles.RoleKey=Roles.RoleKey && Roles.RoleName="admin" ORDER BY rand() LIMIT 1),
(select UserRoles.UserKey from UserRoles inner join Roles on UserRoles.RoleKey=Roles.RoleKey && Roles.RoleName="admin" ORDER BY rand() LIMIT 1) ,
CURRENT_TIMESTAMP(),
CURRENT_TIMESTAMP());
SET a=a+1;
END WHILE label1;
end$$
DELIMITER ;
