
Delete From Pilot 
Delete From product 
Delete From Country 
Delete From Purchase 
Delete From Ranks 



Delete From product 
DBCC CHECKIDENT (Product,RESEED, 0) -- this is a way to resrtart the autoIncrecment ID int

insert into Product values('HeadPhones',50)
insert into Product values('Watch',150)
insert into Product values('Pouch',25)
insert into Product values('Charger',100)
insert into Product values('Amplifier',500)


select *
from Product


Delete From Country 
DBCC CHECKIDENT (Country,RESEED, 0) -- this is a way to resrtart the autoIncrecment ID int

insert into Country values('Haifa')
insert into Country values('Tel Aviv')
insert into Country values('Jerusalem')
insert into Country values('Eilat')
insert into Country values('Nesher')


select *
from Country



Delete From Pilot 
DBCC CHECKIDENT (Pilot,RESEED, 0) -- this is a way to resrtart the autoIncrecment ID int

insert into Pilot values('Shalom','Mizrahi', '1995-10-05' ,'2022-03-18','M',0,1)
insert into Pilot values('Lilach','Levi', '1990-09-18' ,'2022-03-18','F',2,2)
insert into Pilot values('Hila','Moyal', '1997-07-07' ,'2022-03-18','F',5,4)
insert into Pilot values('Haim','Cohen', '1985-06-13' ,'2022-03-18','M',4,2)
insert into Pilot values('Nofar','Levi', '2000-12-12' ,'2022-03-18','F',2,3)

select *
from Pilot


Delete From Purchase 

insert into Purchase values(GETDATE(),1)
WAITFOR DELAY '00:00:02'; -- THE TIME IS OUR KEY VALUE,WE ADDED THE 2 SEC WAIT DELAY SO IT WILL BE DIFFERENT BETWEEN THE PURCHES
insert into Purchase values(GETDATE(),2)
WAITFOR DELAY '00:00:02';
insert into Purchase values(GETDATE(),5)
WAITFOR DELAY '00:00:02';
insert into Purchase values(GETDATE(),3)
WAITFOR DELAY '00:00:02';
insert into Purchase values(GETDATE(),2)

select *
from Purchase



Delete From Ranks -- ranks is a Saved Word so we called it Ranks
DBCC CHECKIDENT (Ranks,RESEED, 0) -- this is a way to resrtart the autoIncrecment ID int

insert into Ranks values('Beginner',50)
insert into Ranks values('Standard',200)
insert into Ranks values('Hard',500)
insert into Ranks values('Pro',1000)

select *
from Ranks


Delete From Race 
DBCC CHECKIDENT (Race,RESEED, 0) -- this is a way to resrtart the autoIncrecment ID int

insert into Race values(GETDATE(),GETDATE())-- WE need to change it to be Null  Tolerant !!!!!!!-----

select *
from Race
