
## Add DummyData to owner users

DELIMITER $$
CREATE DEFINER=`thiorjhwewf`@`%` PROCEDURE `myOwner1`()
BEGIN
DECLARE a INT;
SET a=1;
Label1: WHILE a<=10 DO
INSERT INTO `UserRoles` (`UserRoleKey`, `UserKey`, `RoleKey`, `UserKey_LastUpdatedBy`, `UserKey_CreatedBy`, `UserRoleCreateTS`, `UserRoleLastUpdatedDateTime`) VALUES 
(NULL,
(select UserKey from Users order by rand() limit 1),
'4',
(select a.UserKey from UserRoles a inner join Roles b on a.RoleKey=b.RoleKey && b.RoleName="Admin" order by rand() LIMIT 1),
(select a.UserKey from UserRoles a inner join Roles b on a.rolekey=b.rolekey && b.RoleName="Admin" order by rand() LIMIT 1),
current_timestamp(), 
current_timestamp());
SET a=a+1;
END WHILE label1;
end
DELIMITER;
