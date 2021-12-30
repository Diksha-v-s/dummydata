DELIMITER $$
CREATE PROCEDURE `SweepStakes`()
BEGIN
DECLARE a INT;
SET a=1;
        Label1: WHILE a<=50 DO
          INSERT INTO `Sweepstakes`( `SweepstakesName`,`CompanyKey`,`Comments`,`SweepstakesBlocked`,`UserKey_LastUpdatedBy`, `UserKey_CreatedBy`, `SweepstakesCreateTS`, `SweepstakesLastUpdatedDateTime`) VALUES 
          (concat(char(round(rand()*25)+65),char(round(rand()*25)+65),char(round(rand()*25)+65),char(round(rand()*25)+65),char(round(rand()*25)+65),char(round(rand()*25)+65),char(round(rand()*25)+65),'123'),
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
