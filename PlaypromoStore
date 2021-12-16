

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `myStore4`()
BEGIN
DECLARE a INT;
SET a=1;
Label1: WHILE a<=50 DO

INSERT INTO `stores`(`StoreKey`, `StoreId`, `StoreName`, `StorePhone`, `StoreAddress1`, `StoreAddress2`, `StoreCity`, `StoreState`, `StoreZip`,
`MailingAddress1`, `MailingAddress2`, `MailingCity`, `MailingState`, `MailingZip`, `Comments`, `Salesperson`, `SalespersonPercentage`, `StoreBlocked`,
`UserKey_LastUpdatedBy`, `UserKey_CreatedBy`, `Sweepstakes`, `Settings`, `StoreCreateTS`, `StoreLastUpdatedDateTime`) VALUES                                                                              ('',
concat(char(round(rand()*25)+65),char(round(rand()*25)+65),char(round(rand()*25)+65)),
UCASE(concat(char(round(rand()*25)+65),char(round(rand()*25)+65),char(round(rand()*25)+65),char(round(rand()*25)+65), 
char(round(rand()*25)+65),char(round(rand()*25)+65),char(round(rand()*25)+65),'123')),
LPAD(FLOOR(RAND() * 70000000000),10),
'address1',
'address2',
'Amb',
'HP',
'12345',
'address1','address2','Amb','Amb','12323','aaaaa',' ',' ','0',
(select a.userkey from userroles a inner join roles b on a.rolekey=b.rolekey && b.Rolename="admin" order by rand() LIMIT 1),
(select a.userkey from userroles a inner join roles b on a.rolekey=b.rolekey && b.Rolename="admin" order by rand() LIMIT 1),
(select BonusPlanSweepstakesKey from bonusplansweepstakes order by rand() limit 1) ,
'567 ',CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP());
SET a=a+1;
END WHILE label1;
end$$
DELIMITER ;
