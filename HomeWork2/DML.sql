
-- Question 2:

Delete From Pilot
Delete From product 
Delete From Country 
Delete From Purchase 
Delete From Ranks 



Delete From product 
DBCC CHECKIDENT (Product,RESEED, 0) -- this is a way to resrtart the autoIncrecment ID int

insert into Product values('Headphones',50)
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
WAITFOR DELAY '00:00:02'; -- THE TIME IS OUR KEY VALUE, WE ADDED THE 2 SEC WAIT DELAY SO IT WILL BE DIFFERENT BETWEEN THE PURCHES
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

insert into Race values(GETDATE(), null)
insert into Race values(GETDATE(), null)
insert into Race values(GETDATE(), null)
insert into Race values(GETDATE(), null)
insert into Race values(GETDATE(), null)
insert into Race values(GETDATE(), null)
insert into Race values(GETDATE(), null)
insert into Race values(GETDATE(), null)
insert into Race values(GETDATE(), null)

select *
from Race


Delete From FriendRace 
DBCC CHECKIDENT (FriendRace, RESEED, 0) -- this is a way to resrtart the autoIncrecment ID int

insert into FriendRace values(1, 1, 1)
insert into FriendRace values(2, 3, 5)
insert into FriendRace values(3, 5, 2)

select *
from FriendRace 


Delete From BestOfBestRace 
DBCC CHECKIDENT (BestOfBestRace, RESEED, 0) -- this is a way to resrtart the autoIncrecment ID int

insert into BestOfBestRace values(4)
insert into BestOfBestRace values(5)
insert into BestOfBestRace values(6)

select *
from BestOfBestRace 


Delete From TopThreeRace 
DBCC CHECKIDENT (TopThreeRace, RESEED, 0) -- this is a way to resrtart the autoIncrecment ID int

insert into TopThreeRace values(7)
insert into TopThreeRace values(8)
insert into TopThreeRace values(9)

select *
from TopThreeRace 


Delete From Medal 
DBCC CHECKIDENT (Medal, RESEED, 0) -- this is a way to resrtart the autoIncrecment ID int

insert into Medal values('Brown', null)
insert into Medal values('Bronze', null)
insert into Medal values('Silver', null)
insert into Medal values('Gold', null)
insert into Medal values('Crystal', null)

select *
from Medal 


--Question 3:

Delete From MedalHasRank

insert into MedalHasRank values(1,1)
insert into MedalHasRank values(2,4)
insert into MedalHasRank values(2,3)
insert into MedalHasRank values(3,5)
insert into MedalHasRank values(4,2)

select *
from MedalHasRank 


Delete From PilotGotRankAndMedal

insert into PilotGotRankAndMedal values(1,2,4,'2019-08-20','N')
insert into PilotGotRankAndMedal values(2,1,1,'2022-10-29','N')
insert into PilotGotRankAndMedal values(3,1,1,'2021-05-08','N')
insert into PilotGotRankAndMedal values(4,3,5,'2021-01-14','Y')
insert into PilotGotRankAndMedal values(5,4,2,'2020-12-22','N')

select *
from PilotGotRankAndMedal 


Delete From PilotFriendsOfPilot

insert into PilotFriendsOfPilot values(1,2)
insert into PilotFriendsOfPilot values(2,4)
insert into PilotFriendsOfPilot values(3,5)
insert into PilotFriendsOfPilot values(4,3)
insert into PilotFriendsOfPilot values(5,1)

select *
from PilotFriendsOfPilot 


Delete From ProductInPurchase

insert into ProductInPurchase values(1,2,'2022-04-01 12:04:37.087',3)
insert into ProductInPurchase values(4,2,'2022-04-01 12:04:37.087',1)
insert into ProductInPurchase values(3,5,'2022-04-01 12:04:39.107',2)
insert into ProductInPurchase values(5,5,'2022-04-01 12:04:39.107',4)
insert into ProductInPurchase values(3,1,'2022-04-01 12:04:35.070',1)

select *
from ProductInPurchase





