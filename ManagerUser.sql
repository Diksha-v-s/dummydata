


## MySql Script 

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `myManager1`()
BEGIN
DECLARE a INT;
SET a=1;
Label1: WHILE a<=10 DO
INSERT INTO `userroles` (`UserRoleKey`, `UserKey`, `RoleKey`, `UserKey_LastUpdatedBy`, `UserKey_CreatedBy`, `UserRoleCreateTS`, `UserRoleLastUpdatedDateTime`) VALUES 
(NULL,(select userkey from users order by rand() limit 1),
'2',
(select a.userkey from userroles a inner join roles b on a.rolekey=b.rolekey && b.Rolename="owner" order by rand() LIMIT 1),
(select a.userkey from userroles a inner join roles b on a.rolekey=b.rolekey && b.Rolename="owner" order by rand() LIMIT 1),
current_timestamp(), 
current_timestamp());
SET a=a+1;
END WHILE label1;
end$$
DELIMITER ;
