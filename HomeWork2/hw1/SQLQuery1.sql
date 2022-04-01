create database WinningPilots

use WinningPilots

DROP TABLE IF EXISTS "Pilot";
create table Pilot(
PilotID int identity (1,1) primary key,
FirstName varchar(20) not null,
LastName varchar(20) not null,
BirthDate date check (BirthDate<=getdate()) not null,
CreationDate date check (CreationDate<=getdate()) not null,
Gender char(1) check (Gender in ('M','F','O')),
Wins int,
)

DROP TABLE IF EXISTS "Race";
create table Race(
RaceNum int identity (1,1) primary key,
StartDate Datetime not null,
EndDate Datetime
)

DROP TABLE IF EXISTS "FriendRace";
create table FriendRace(
FriendRaceNum int,
foreign key (FriendRaceNum) references Race(RaceNum),
primary key (FriendRaceNum),
CreatingPilotID int,
foreign key (CreatingPilotID) references Pilot(PilotID),
Position int not null check (position>=1 and position<=15)
)

DROP TABLE IF EXISTS "BestOfBestRace";
create table BestOfBestRace(
BestRaceNum int,
foreign key (BestRaceNum) references Race(RaceNum),
primary key (BestRaceNum)
)

DROP TABLE IF EXISTS "TopThreeRace";
create table TopThreeRace(
TopThreeRaceNum int,
foreign key (TopThreeRaceNum) references Race(RaceNum),
primary key (TopThreeRaceNum)
)

DROP TABLE IF EXISTS "PilotInFriendRace";
create table PilotInFriendRace(
Position int not null unique check (position>=1 and position<=15),
SendDate Datetime not null,
RecievedDate Datetime,
FriendRaceNum int,
PilotID int,
foreign key (FriendRaceNum) references FriendRace(FriendRaceNum),
foreign key (PilotID) references Pilot(PilotID),
primary key (PilotID, FriendRaceNum)
)

DROP TABLE IF EXISTS "PilotInBestOfBest";
create table PilotInBestOfBest(
Position int not null unique check (position>=1 and position<=50),
CrossingNum int,
ControlGrade int,
DeviationsFromRoute int,
BestRaceNum int,
PilotID int,
foreign key (BestRaceNum) references BestOfBestRace(BestRaceNum),
foreign key (PilotID) references Pilot(PilotID),
primary key (PilotID, BestRaceNum)
)

DROP TABLE IF EXISTS "PilotInTopThree";
create table PilotInTopThree(
Position int not null unique check (position>=1 and position<=5),
DepartureQualityGrade int,
ArrivalQualityGrade int,
FlightQualityGrade int,
DeviationsFromRoute int,
FinalGrade int,
TopThreeRaceNum int,
PilotID int,
foreign key (TopThreeRaceNum) references TopThreeRace(TopThreeRaceNum),
foreign key (PilotID) references Pilot(PilotID),
primary key (PilotID, TopThreeRaceNum)
)

DROP TABLE IF EXISTS "Purchase";
create table Purchase(
PurchaseDateTime datetime check (PurchaseDateTime<=getdate()),
PilotID int,
foreign key (PilotID) references Pilot(PilotID),
primary key (PilotID, PurchaseDateTime)
)

DROP TABLE IF EXISTS "Product";
create table Product(
ProductID int identity (1,1) primary key,
ProductName varchar(20),
Price float
)

DROP TABLE IF EXISTS "ProductInPurchase";
create table ProductInPurchase(
ProductID int,
PilotID int,
PurchaseDateTime datetime,
foreign key (ProductID) references Product(ProductID) on delete cascade,
foreign key (PilotID, PurchaseDateTime) references Purchase(PilotID, PurchaseDateTime) on delete cascade,
primary key (PilotID, PurchaseDateTime, ProductID),
Quantity int check (Quantity>0)
)

DROP TABLE IF EXISTS "Country";
create table Country(
CountryID int identity (1,1) primary key,
CountryName varchar(20) unique
)

ALTER TABLE Pilot
ADD CountryID int,
foreign key (CountryID) references Country(CountryID)

DROP TABLE IF EXISTS "PilotFriendsOfPilot";
create table PilotFriendsOfPilot(
Pilot1ID int,
Pilot2ID int,
foreign key (Pilot1ID) references Pilot(PilotID),
foreign key (Pilot2ID) references Pilot(PilotID),
primary key(Pilot1ID, Pilot2ID)
)

DROP TABLE IF EXISTS "Medal";
create table Medal(
MedalID int identity (1,1) primary key,
MedalName varchar(20),
MedalDescription varchar(100)
)

DROP TABLE IF EXISTS "Ranks";
create table Ranks(
RankID int identity (1,1) primary key,
RankName varchar(20),
MinPoints int,
)

DROP TABLE IF EXISTS "MedalHasRank";
create table MedalHasRank(
RankID int,
MedalID int,
foreign key (RankID) references Ranks(RankID),
foreign key (MedalID) references Medal(MedalID),
primary key (RankID, MedalID)
)

DROP TABLE IF EXISTS "PilotGotRankAndMedal";
create table PilotGotRankAndMedal(
PilotID int,
RankID int,
MedalID int,
foreign key (PilotID) references Pilot(PilotID) on delete cascade,
foreign key (RankID, MedalID) references MedalHasRank(RankID, MedalID) on delete cascade,
primary key (PilotID, RankID, MedalID),
DateRecieved Date,
IsSuspended char(1) check (IsSuspended in ('Y','N'))
)


