

DELIMITER $$
CREATE PROCEDURE `myCompanies1`()
BEGIN
DECLARE a INT;
SET a=1;
Label1: WHILE a<=50 DO
insert into Companies ( `CompanyName`,`RepName`,`RepEmail`,`RepPhone`,`Comments`,`UserKey_LastUpdatedBy`, `UserKey_CreatedBy`,`CompanyCreateTS`,`CompanyLastUpdatedDateTime`) values (LCASE(concat(char(round(rand()*25)+65),char(round(rand()*25)+65),char(round(rand()*25)+65),char(round(rand()*25)+65),  char(round(rand()*25)+65),char(round(rand()*25)+65),char(round(rand()*25)+65))), 
LCASE(concat(char(round(rand()*25)+65),char(round(rand()*25)+65),char(round(rand()*25)+65),char(round(rand()*25)+65), char(round(rand()*25)+65),char(round(rand()*25)+65),char(round(rand()*25)+65))),
CONCAT("nana", ROUND(RAND() * 100),'@yopmail.com'),
LPAD(FLOOR(RAND() * 70000000000), 10, '0'),
'Add Company',
(select a.UserKey from UserRoles a inner join Roles b on a.RoleKey=b.RoleKey && b.RoleName="Admin" order by rand() LIMIT 1),
(select a.UserKey from UserRoles a inner join Roles b on a.RoleKey=b.RoleKey && b.RoleName="Admin" order by rand() LIMIT 1),
current_timestamp(), 
current_timestamp());
SET a=a+1;
END WHILE label1;
end
DELIMITER;
