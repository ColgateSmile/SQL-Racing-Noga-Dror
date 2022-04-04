
-- Delete data from all tables:

Delete From Pilot
Delete From product 
Delete From Country 
Delete From Purchase 
Delete From Ranks 
Delete From Race 
Delete From Medal
Delete From FriendRace 
Delete From BestOfBestRace 
Delete From TopThreeRace 
Delete From MedalHasRank
Delete From PilotGotRankAndMedal
Delete From PilotFriendsOfPilot
Delete From ProductInPurchase
Delete From PilotInFriendRace
Delete From PilotInBestOfBest
Delete From PilotInTopThree

DBCC CHECKIDENT (Product,RESEED, 0) -- this is a way to resrtart the auto increment ID int
DBCC CHECKIDENT (Purchase,RESEED, 0)
DBCC CHECKIDENT (Country,RESEED, 0) 
DBCC CHECKIDENT (Pilot,RESEED, 0)
DBCC CHECKIDENT (Ranks,RESEED, 0)
DBCC CHECKIDENT (Race,RESEED, 0)
DBCC CHECKIDENT (Medal, RESEED, 0)


-- Question 2:

insert into Product values('Headphones',50)
insert into Product values('Watch',150)
insert into Product values('Pouch',25)
insert into Product values('Charger',100)
insert into Product values('Amplifier',500)

select *
from Product


insert into Country values('Haifa')
insert into Country values('Tel Aviv')
insert into Country values('Jerusalem')
insert into Country values('Eilat')
insert into Country values('Nesher')

select *
from Country


insert into Pilot values('Shalom','Mizrahi', '1995-10-05' ,'2022-03-18','M',0,1)
insert into Pilot values('Lilach','Levi', '1990-09-18' ,'2022-03-18','F',2,2)
insert into Pilot values('Hila','Moyal', '1997-07-07' ,'2022-03-18','F',5,4)
insert into Pilot values('Haim','Cohen', '1985-06-13' ,'2022-03-18','M',4,2)
insert into Pilot values('Nofar','Levi', '2000-12-12' ,'2022-03-18','F',2,3)

select *
from Pilot


insert into Purchase values(1,GETDATE())
insert into Purchase values(2,GETDATE())
insert into Purchase values(2,GETDATE())
insert into Purchase values(5,GETDATE())
insert into Purchase values(3,GETDATE())

select *
from Purchase


insert into Ranks values('Beginner',50)
insert into Ranks values('Standard',200)
insert into Ranks values('Hard',500)
insert into Ranks values('Pro',1000)

select *
from Ranks


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


insert into FriendRace values(1, 1, 1)
insert into FriendRace values(2, 3, 5)
insert into FriendRace values(3, 5, 2)

select *
from FriendRace 


insert into BestOfBestRace values(4)
insert into BestOfBestRace values(5)
insert into BestOfBestRace values(6)

select *
from BestOfBestRace 


insert into TopThreeRace values(7)
insert into TopThreeRace values(8)
insert into TopThreeRace values(9)

select *
from TopThreeRace 


insert into Medal values('Brown', null)
insert into Medal values('Bronze', null)
insert into Medal values('Silver', null)
insert into Medal values('Gold', null)
insert into Medal values('Crystal', null)

select *
from Medal 


--Question 3:

insert into MedalHasRank values(1,1)
insert into MedalHasRank values(2,4)
insert into MedalHasRank values(2,3)
insert into MedalHasRank values(3,5)
insert into MedalHasRank values(4,2)

select *
from MedalHasRank 


insert into PilotGotRankAndMedal values(1,2,4,'2019-08-20','N')
insert into PilotGotRankAndMedal values(2,1,1,'2022-10-29','N')
insert into PilotGotRankAndMedal values(3,1,1,'2021-05-08','N')
insert into PilotGotRankAndMedal values(4,3,5,'2021-01-14','Y')
insert into PilotGotRankAndMedal values(5,4,2,'2020-12-22','N')

select *
from PilotGotRankAndMedal 


insert into PilotFriendsOfPilot values(1,2)
insert into PilotFriendsOfPilot values(2,4)
insert into PilotFriendsOfPilot values(3,5)
insert into PilotFriendsOfPilot values(4,3)
insert into PilotFriendsOfPilot values(5,1)

select *
from PilotFriendsOfPilot 


insert into ProductInPurchase values(1,2,2,3)
insert into ProductInPurchase values(4,2,2,1)
insert into ProductInPurchase values(3,5,4,2)
insert into ProductInPurchase values(5,5,4,4)
insert into ProductInPurchase values(3,1,1,3)

select *
from ProductInPurchase


insert into PilotInFriendRace values(1,5,1,'2021-11-11 15:23:44','2021-11-16 11:12:00')
insert into PilotInFriendRace values(2,4,2,'2021-05-04 10:12:25','2021-05-11 16:29:00')
insert into PilotInFriendRace values(3,3,3,'2020-10-09 16:23:44','2020-10-23 20:20:06')
insert into PilotInFriendRace values(2,2,4,'2020-12-17 17:23:33','2020-12-29 10:30:00')
insert into PilotInFriendRace values(3,1,5,'2019-04-14 14:14:14','2019-04-15 09:15:00')

select *
from PilotInFriendRace


insert into PilotInBestOfBest values(4,2,1,2,70,6)
insert into PilotInBestOfBest values(6,3,20,3,90,3)
insert into PilotInBestOfBest values(6,4,5,6,80,2)
insert into PilotInBestOfBest values(4,5,17,1,65,5)
insert into PilotInBestOfBest values(5,1,39,0,85,5)

select *
from PilotInBestOfBest


insert into PilotInTopThree values(7,3,1,55,45,45,5,48.33)
insert into PilotInTopThree values(8,2,2,69,84,78,6,77)
insert into PilotInTopThree values(9,1,3,65,31,5,3,33.66)
insert into PilotInTopThree values(9,4,2,100,99,98,1,99)
insert into PilotInTopThree values(8,5,3,97,80,85,2,87.33)

select *
from PilotInTopThree
