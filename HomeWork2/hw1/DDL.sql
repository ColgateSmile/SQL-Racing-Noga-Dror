use WinningPilots

DROP TABLE IF EXISTS "Country";
create table Country(
CountryID int identity (1,1) primary key,
CountryName varchar(20) unique
)

DROP TABLE IF EXISTS "Pilot";
create table Pilot(
PilotID int identity (1,1) primary key,
FirstName varchar(20) not null,
LastName varchar(20) not null,
BirthDate date check (BirthDate<=getdate()) not null,
CreationDate date check (CreationDate<=getdate()) not null,
Gender char(1) check (Gender in ('M','F','O')),
Wins int,
CountryID int,
foreign key (CountryID) references Country(CountryID) on delete cascade
)

DROP TABLE IF EXISTS "Race";
create table Race(
RaceNum int identity (1,1) primary key,
StartDate Datetime,
EndDate Datetime
)

DROP TABLE IF EXISTS "FriendRace";
create table FriendRace(
FriendRaceNum int,
foreign key (FriendRaceNum) references Race(RaceNum) on delete cascade,
primary key (FriendRaceNum),
CreatingPilotID int,
foreign key (CreatingPilotID) references Pilot(PilotID) on delete cascade,
Position int not null check (position>=1 and position<=15)
)

DROP TABLE IF EXISTS "BestOfBestRace";
create table BestOfBestRace(
BestRaceNum int,
foreign key (BestRaceNum) references Race(RaceNum) on delete cascade,
primary key (BestRaceNum)
)

DROP TABLE IF EXISTS "TopThreeRace";
create table TopThreeRace(
TopThreeRaceNum int,
foreign key (TopThreeRaceNum) references Race(RaceNum) on delete cascade,
primary key (TopThreeRaceNum)
)

DROP TABLE IF EXISTS "PilotInFriendRace";
create table PilotInFriendRace(
FriendRaceNum int,
PilotID int,
foreign key (FriendRaceNum) references FriendRace(FriendRaceNum) on delete no action,
foreign key (PilotID) references Pilot(PilotID) on delete cascade,
primary key (PilotID, FriendRaceNum),
Position int not null check (position>=1 and position<=15),
SendDate Datetime not null,
RecievedDate Datetime
)

DROP TABLE IF EXISTS "PilotInBestOfBest";
create table PilotInBestOfBest(
BestRaceNum int,
PilotID int,
foreign key (BestRaceNum) references BestOfBestRace(BestRaceNum) on delete cascade,
foreign key (PilotID) references Pilot(PilotID) on delete cascade,
primary key (PilotID, BestRaceNum),
Position int not null check (position>=1 and position<=50),
CrossingNum int,
ControlGrade int check (ControlGrade>=1 and ControlGrade<=100),
DeviationsFromRoute int
)

DROP TABLE IF EXISTS "PilotInTopThree";
create table PilotInTopThree(
TopThreeRaceNum int,
PilotID int,
foreign key (TopThreeRaceNum) references TopThreeRace(TopThreeRaceNum) on delete cascade,
foreign key (PilotID) references Pilot(PilotID) on delete cascade,
primary key (PilotID, TopThreeRaceNum),
Position int not null check (position>=1 and position<=5),
DepartureQualityGrade int check (DepartureQualityGrade>=1 and DepartureQualityGrade<=100),
ArrivalQualityGrade int check (ArrivalQualityGrade>=1 and ArrivalQualityGrade<=100),
FlightQualityGrade int check (FlightQualityGrade>=1 and FlightQualityGrade<=100),
DeviationsFromRoute int,
FinalGrade float
)

DROP TABLE IF EXISTS "Purchase";
create table Purchase(
PilotID int,
foreign key (PilotID) references Pilot(PilotID) on delete cascade,
PurchaseID int identity (1,1),
primary key (PilotID, PurchaseID),
PurchaseDateTime datetime check (PurchaseDateTime<=getdate())
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
PurchaseID int,
foreign key (ProductID) references Product(ProductID) on delete cascade,
foreign key (PilotID, PurchaseID) references Purchase(PilotID, PurchaseID) on delete cascade,
primary key (PilotID, PurchaseID, ProductID),
Quantity int check (Quantity>0)
)


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
foreign key (RankID) references Ranks(RankID) on delete cascade,
foreign key (MedalID) references Medal(MedalID) on delete cascade,
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


