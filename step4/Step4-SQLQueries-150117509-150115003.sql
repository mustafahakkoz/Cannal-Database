--Mustafa A. Hakkoz - 150117509							
--Muhammed Adem E. Demirkuþ - 150115003
Go
create database CannalDB;
Go
use CannalDB;

--ADVERTISING SECTION
CREATE TABLE Advertiser (
	AdvertiserId int primary key,
	AdvertiserName varchar(50),
	AdvertiserUserName varchar(50),
	AdvertiserAddress varchar(200),
	AdvertiserPhone varchar(13),
	AdvertiserEmail varchar(50),
);

INSERT INTO Advertiser(AdvertiserId, AdvertiserName, AdvertiserUserName, AdvertiserAddress, AdvertiserPhone, AdvertiserEmail) VALUES (1, 'Audi', 'AudiOfficial','210 Fairground St NE, Marietta, GA 30060, United States of America','+16782133122',' advertising@audi.com');
INSERT INTO Advertiser(AdvertiserId, AdvertiserName, AdvertiserUserName, AdvertiserAddress, AdvertiserPhone, AdvertiserEmail) VALUES (2, 'Coca-Cola', 'Coca-ColaOfficial','P.O. Box 1734 Atlanta, GA 30301, United States of America','+14046762683',' advertising@coca-cola.com');
INSERT INTO Advertiser(AdvertiserId, AdvertiserName, AdvertiserUserName, AdvertiserAddress, AdvertiserPhone, AdvertiserEmail) VALUES (3, 'Mercedes', 'MercedesOfficial','One Mercedes-Benz Drive Sandy Springs, GA 30328 USA','+16646865151',' advertising@mercedes.com');
INSERT INTO Advertiser(AdvertiserId, AdvertiserName, AdvertiserUserName, AdvertiserAddress, AdvertiserPhone, AdvertiserEmail) VALUES (4, 'Ford', 'FordOfficial','P.O. Box 6248 Dearborn, MI 48126, USA','+12564892643',' advertising@ford.com');
INSERT INTO Advertiser(AdvertiserId, AdvertiserName, AdvertiserUserName, AdvertiserAddress, AdvertiserPhone, AdvertiserEmail) VALUES (5, 'Pepsi', 'PepsiOfficial','700 Anderson Hill Road. Purchase, NY 10577. USA','+19142532000',' advertising@pepsi.com');
INSERT INTO Advertiser(AdvertiserId, AdvertiserName, AdvertiserUserName, AdvertiserAddress, AdvertiserPhone, AdvertiserEmail) VALUES (6, 'Nike', 'NikeOfficial','One Bowerman Drive Beaverton, OR 97005-6453 USA','+18003446453',' advertising@nike.com');
INSERT INTO Advertiser(AdvertiserId, AdvertiserName, AdvertiserUserName, AdvertiserAddress, AdvertiserPhone, AdvertiserEmail) VALUES (7, 'Adidas', 'AdidasOfficial','5055 N Greeley Avenue, Portland, Or – 97217 USA','+18009829337',' advertising@adidas.com');
INSERT INTO Advertiser(AdvertiserId, AdvertiserName, AdvertiserUserName, AdvertiserAddress, AdvertiserPhone, AdvertiserEmail) VALUES (8, 'Amazon', 'AmazonOfficial',' PO Box 81226 Seattle, WA 98108-1226 USA','+18882803321',' advertising@amazon.com');
INSERT INTO Advertiser(AdvertiserId, AdvertiserName, AdvertiserUserName, AdvertiserAddress, AdvertiserPhone, AdvertiserEmail) VALUES (9, 'Apple', 'AppleOfficial','1 Infinite Loop, Cupertino, California, United States of America','+8006927753',' advertising@apple.com');
INSERT INTO Advertiser(AdvertiserId, AdvertiserName, AdvertiserUserName, AdvertiserAddress, AdvertiserPhone, AdvertiserEmail) VALUES (10, 'Walmart', 'WalmartOfficial','Walmart Headquarters 702 S.W. 8th St. Bentonville, AK 72716, United States of America','+18009256278',' advertising@walmart.com');


CREATE TABLE Advertisement_Type (
	AdvertisementTypeId int primary key,
	AdvertisementTypeName varchar(50),
	AdvertisementTypeDescripton varchar(200),
	RunningPeriod int,
);

INSERT INTO Advertisement_Type(AdvertisementTypeId,AdvertisementTypeName,AdvertisementTypeDescripton,RunningPeriod) VALUES (1,'Splash','Reach all viewers without any restriction, but a period of 24 hours.',1);
INSERT INTO Advertisement_Type(AdvertisementTypeId,AdvertisementTypeName,AdvertisementTypeDescripton) VALUES (2,'DMA Targeting','Target every viewer within a specific market.');
INSERT INTO Advertisement_Type(AdvertisementTypeId,AdvertisementTypeName,AdvertisementTypeDescripton) VALUES (3,'Targeted Blitz','Use different kinds of customized utilities by using personal informations, geographic area, genre, and more');
INSERT INTO Advertisement_Type(AdvertisementTypeId,AdvertisementTypeName,AdvertisementTypeDescripton,RunningPeriod) VALUES (4,'Seasonal','Align your brand with new episodes and new seasons of series.',90);
INSERT INTO Advertisement_Type(AdvertisementTypeId,AdvertisementTypeName,AdvertisementTypeDescripton,RunningPeriod) VALUES (5,'Annuals','Promote your brand at special annuals like Mother’s Day, Father’s Day, Valentine’s Day etc.',1);
INSERT INTO Advertisement_Type(AdvertisementTypeId,AdvertisementTypeName,AdvertisementTypeDescripton,RunningPeriod) VALUES (6,'Integrated commercial','Use strategic integrating to promote your products in  Cannal’s Originals.',12);


CREATE TABLE Advertisement (
	AdvertisementId int primary key,
	AdvertisementName varchar(50),
	Runtime int,
	Price float(2),
	StartingDate date default getdate(),
	EndingDate date default getdate(),
	ProductionCompany varchar(50),
	AdvertisementTypeId int,
	AdvertiserId int,
	TitleId int,
	foreign key (AdvertiserId) REFERENCES Advertiser(AdvertiserId),
	foreign key (AdvertisementTypeId) REFERENCES Advertisement_Type(AdvertisementTypeId),
);

INSERT INTO Advertisement(AdvertisementId,AdvertisementName,Runtime,Price, StartingDate, EndingDate,ProductionCompany,AdvertisementTypeId,AdvertiserId) VALUES (1,'New Ford Focus',16,53000, '15.12.2019', '16.12.2019','Media Gate',1,4);
INSERT INTO Advertisement(AdvertisementId,AdvertisementName,Runtime,Price, StartingDate, EndingDate,ProductionCompany,AdvertisementTypeId,AdvertiserId) VALUES (2,'New Ford Focus',16,53000, '16.12.2019', '17.12.2019','Media Gate',1,4);
INSERT INTO Advertisement(AdvertisementId,AdvertisementName,Runtime,Price, StartingDate, EndingDate,ProductionCompany,AdvertisementTypeId,AdvertiserId) VALUES (3,'New Ford Focus',16,53000, '17.12.2019', '18.12.2019','Media Gate',1,4);
INSERT INTO Advertisement(AdvertisementId,AdvertisementName,Runtime,Price, StartingDate, EndingDate,ProductionCompany,AdvertisementTypeId,AdvertiserId,TitleId) VALUES (4,'Coca-Cola Zero',26,311000, '15.12.2019', '15.03.2020','MWPP Group',4,2,1);
INSERT INTO Advertisement(AdvertisementId,AdvertisementName,Runtime,Price, StartingDate, EndingDate,ProductionCompany,AdvertisementTypeId,AdvertiserId,TitleId) VALUES (5,'iPhone X',1,523000, '15.12.2019', '15.03.2020','MWPP Group',6,9,1);
INSERT INTO Advertisement(AdvertisementId,AdvertisementName,Runtime,Price, StartingDate, EndingDate,ProductionCompany,AdvertisementTypeId,AdvertiserId,TitleId) VALUES (6,'iPhone X',9,1023000, '15.12.2019', '15.03.2020','MWPP Group',4,9,1);
INSERT INTO Advertisement(AdvertisementId,AdvertisementName,Runtime,Price, StartingDate, EndingDate,ProductionCompany,AdvertisementTypeId,AdvertiserId) VALUES (7,'Mercedes New C Series',29,263000, '15.12.2019', '15.01.2020','Omnicom Group',2,3);
INSERT INTO Advertisement(AdvertisementId,AdvertisementName,Runtime,Price, StartingDate, EndingDate,ProductionCompany,AdvertisementTypeId,AdvertiserId) VALUES (8,'Amazon Valentines Day',13,96000, '14.02.2020','15.02.2020','Publicis',5,8);
INSERT INTO Advertisement(AdvertisementId,AdvertisementName,Runtime,Price, StartingDate, EndingDate,ProductionCompany,AdvertisementTypeId,AdvertiserId) VALUES (9,'Amazon Mothers Day',13,623000, '05.05.2020', '12.03.2020','Publicis',5,8);
INSERT INTO Advertisement(AdvertisementId,AdvertisementName,Runtime,Price, StartingDate, EndingDate,ProductionCompany,AdvertisementTypeId,AdvertiserId) VALUES (10,'Walmart Save Money',28,566000, '22.12.2019', '22.01.2020','Interpublic',2,10);

--CATALOG SECTION
create table Title(
	TitleId int primary key,
	TitleName varchar(100),
	Category varchar(50) check(Category in ('Movie', 'Series')),
	TitleType varchar(50) check(TitleType in ('Exterior', 'Original')),
	ImdbId varchar(10),
	Rating float(1),
	AgeLimit int,
);

Insert Into Title Values(1,'Too Old to Die Young','Series','Original','tt6517320',7.6,13);
Insert Into Title Values(2,'The Neon Demon','Movie','Original','tt1974419',6.2,15);
Insert Into Title Values(3,'Valhalla Rising ','Movie','Original','tt0862467',6.1,10);
Insert Into Title Values(4,'Straw Dogs','Movie','Exterior','tt0067800',7.5,13);
Insert Into Title Values(5,'Black Swan','Movie','Exterior','tt0947798',8.0,16);
Insert Into Title Values(6,'Interstellar','Movie','Exterior','tt0816692',8.6,9);
Insert Into Title Values(7,'Star Trek','Series','Original','tt0060028',8.3,13);
Insert Into Title Values(8,'Twin Peaks','Series','Original','tt0098936',8.8,18);
Insert Into Title Values(9,'The Walking Dead','Series','Exterior','tt1520211',8.2,9);
Insert Into Title Values(10,'Seinfeld','Series','Exterior','tt0098904',8.8,9);

CREATE TABLE SERIES(
	sTitleID int primary key foreign key references Title(TitleID),
	startingYear int,
	endingYear int,
	numberOfSeasons int,
	numberOfEpisodes int
);

CREATE TABLE MOVIE(
	mTitleID int primary key foreign key references Title(TitleID),
	productionYear int,
	productionCompany varchar(50),
	runTime date,
	releaseDate date

);

CREATE TABLE SERIES_GENRE(
	seriesGenreID int primary key,
	seriesGenreName varchar(50)
);

CREATE TABLE SERIES_HAS_GENRE(
	sTitleID int foreign key references SERIES(sTitleID),
	seriesGenreID int foreign key references SERIES_GENRE(seriesGenreID),
	primary key (sTitleID,seriesgenreID)
);

CREATE TABLE MOVIE_GENRE(
	movieGenreID int primary key,
	movieGenreName varchar(50)
);

CREATE TABLE MOVIE_HAS_GENRE(
	mTitleID int foreign key references MOVIE(mTitleID),
	movieGenreID int foreign key references MOVIE_GENRE(movieGenreID),
	primary key (mTitleID,movieGenreID)
);

CREATE TABLE EPISODE(
	episodeID int,
	season varchar(50),
	releaseDate date,
	runTime date,
	sTitleID int foreign key references SERIES(sTitleID),
	primary key(episodeID, sTitleID),
);

CREATE TABLE PERSON(
	personID int primary key,
	firstName varchar(50),
	middleName varchar(50),
	lastName varchar(50),
	imdbID int,
	biography varchar(max),
	filmography varchar(max),
	birthPlace varchar(50),
	birthDate date
);

CREATE TABLE WRITER(
	wPersonID int primary key foreign key references PERSON(personID)
);

CREATE TABLE DIRECTOR(
	dPersonID int primary key foreign key references PERSON(personID)
);

CREATE TABLE CREATOR(
	cPersonID int primary key foreign key references PERSON(personID)
);

CREATE TABLE ACTOR(
	aPersonID int primary key foreign key references PERSON(personID),
	characterirstName varchar(50),
	characterMiddleName varchar(50),
	characterLastName varchar(50),
	gender varchar(50)
);

CREATE TABLE PLAYS_IN(
	aPersonID int foreign key references ACTOR(aPersonID),
	titleID int foreign key references Title(titleID),
	primary key(aPersonID, titleID)
);

CREATE TABLE WRITES_MOVIE(
	wPersonID int foreign key references WRITER(wPersonID),
	mTitleID int foreign key references MOVIE(mTitleID),
	primary key (wPersonID,mTitleID)
);

CREATE TABLE DIRECTS_MOVIE(
	dPersonID int foreign key references DIRECTOR(dPersonID),
	mTitleID int foreign key references MOVIE(mTitleID),
	primary key (dPersonID,mTitleID)
);

CREATE TABLE WRITES_EPISODE(
	wPersonID int foreign key references WRITER(wPersonID),
	episodeID int,
	sTitleID int, 
	primary key (wPersonID,episodeID,sTitleID),
	foreign key (episodeID, sTitleID) references EPISODE(episodeID, sTitleID),
);

CREATE TABLE DIRECTS_EPISODE(
	dPersonID int foreign key references DIRECTOR(dPersonID),
	episodeID int,
	sTitleID int, 
	primary key (dPersonID,episodeID,sTitleID),
	foreign key (episodeID, sTitleID) references EPISODE(episodeID, sTitleID),
);

CREATE TABLE CREATES_SERIES(
	cPersonID int foreign key references CREATOR(cPersonID),
	sTitleID int foreign key references SERIES(sTitleID),
	primary key (cPersonID, sTitleID)
);

--PURCHASING/MARKETING SECTION
CREATE TABLE Distributor (
	DistributorId int primary key,
	DistributorName varchar(50),
	DistributorAddress varchar(200),
	DistributorPhone varchar(13),
	DistributorEmail varchar(50),
);

INSERT INTO Distributor(DistributorId, DistributorName, DistributorAddress, DistributorPhone, DistributorEmail) VALUES (1, 'Cannal','210 Fairground St NE, Marietta, GA 30060, United States of America','+16782133122',' contact@cannal.com');
INSERT INTO Distributor(DistributorId, DistributorName, DistributorAddress, DistributorPhone, DistributorEmail) VALUES (2, 'American Film Institute','P.O. Box 1734 Atlanta, GA 30301, United States of America','+14046762683',' contact@afi.com');
INSERT INTO Distributor(DistributorId, DistributorName, DistributorAddress, DistributorPhone, DistributorEmail) VALUES (3, 'Goldwyn Pictures','One Drive Sandy Springs, GA 30328 USA','+16646865151',' contact@goldwyn.com');
INSERT INTO Distributor(DistributorId, DistributorName, DistributorAddress, DistributorPhone, DistributorEmail) VALUES (4, 'Warner Bros.','P.O. Box 6248 Dearborn, MI 48126, USA','+12564892643',' contact@warnerbros.com');
INSERT INTO Distributor(DistributorId, DistributorName, DistributorAddress, DistributorPhone, DistributorEmail) VALUES (5, 'Paramount Pictures','700 Anderson Hill Road. Purchase, NY 10577. USA','+19142532000',' contact@paramount.com');
INSERT INTO Distributor(DistributorId, DistributorName, DistributorAddress, DistributorPhone, DistributorEmail) VALUES (6, '20th Century Fox','One Bowerman Drive Beaverton, OR 97005-6453 USA','+18003446453',' contact@20thcenturyfox.com');
INSERT INTO Distributor(DistributorId, DistributorName, DistributorAddress, DistributorPhone, DistributorEmail) VALUES (7, 'Columbia Pictures','5055 N Greeley Avenue, Portland, Or – 97217 USA','+18009829337',' contact@columbia.com');
INSERT INTO Distributor(DistributorId, DistributorName, DistributorAddress, DistributorPhone, DistributorEmail) VALUES (8, 'Metro-Goldwyn-Mayer Inc.',' PO Box 81226 Seattle, WA 98108-1226 USA','+18882803321',' contact@mgm.com');
INSERT INTO Distributor(DistributorId, DistributorName, DistributorAddress, DistributorPhone, DistributorEmail) VALUES (9, 'Fox Film Corporation','1 Infinite Loop, Cupertino, California, United States of America','+8006927753',' contact@foxfilm.com');
INSERT INTO Distributor(DistributorId, DistributorName, DistributorAddress, DistributorPhone, DistributorEmail) VALUES (10, 'Lionsgate','Walmart Headquarters 702 S.W. 8th St. Bentonville, AK 72716, United States of America','+18009256278',' contact@lionsgate.com');

CREATE TABLE Buyer (
	BuyerId int primary key,
	BuyerName varchar(50),
	BuyerAddress varchar(200),
	BuyerPhone varchar(13),
	BuyerEmail varchar(50),
);

INSERT INTO Buyer(BuyerId, BuyerName, BuyerAddress, BuyerPhone, BuyerEmail) VALUES (1, 'Cannal','210 Fairground St NE, Marietta, GA 30060, United States of America','+16782133122',' contact@cannal.com');
INSERT INTO Buyer(BuyerId, BuyerName, BuyerAddress, BuyerPhone, BuyerEmail) VALUES (2, 'American Film Institute','P.O. Box 1734 Atlanta, GA 30301, United States of America','+14046762683',' contact@afi.com');
INSERT INTO Buyer(BuyerId, BuyerName, BuyerAddress, BuyerPhone, BuyerEmail) VALUES (3, 'Goldwyn Pictures','One Drive Sandy Springs, GA 30328 USA','+16646865151',' contact@goldwyn.com');
INSERT INTO Buyer(BuyerId, BuyerName, BuyerAddress, BuyerPhone, BuyerEmail) VALUES (4, 'Warner Bros.','P.O. Box 6248 Dearborn, MI 48126, USA','+12564892643',' contact@warnerbros.com');
INSERT INTO Buyer(BuyerId, BuyerName, BuyerAddress, BuyerPhone, BuyerEmail) VALUES (5, 'Paramount Pictures','700 Anderson Hill Road. Purchase, NY 10577. USA','+19142532000',' contact@paramount.com');
INSERT INTO Buyer(BuyerId, BuyerName, BuyerAddress, BuyerPhone, BuyerEmail) VALUES (6, '20th Century Fox','One Bowerman Drive Beaverton, OR 97005-6453 USA','+18003446453',' contact@20thcenturyfox.com');
INSERT INTO Buyer(BuyerId, BuyerName, BuyerAddress, BuyerPhone, BuyerEmail) VALUES (7, 'Columbia Pictures','5055 N Greeley Avenue, Portland, Or – 97217 USA','+18009829337',' contact@columbia.com');
INSERT INTO Buyer(BuyerId, BuyerName, BuyerAddress, BuyerPhone, BuyerEmail) VALUES (8, 'Metro-Goldwyn-Mayer',' PO Box 81226 Seattle, WA 98108-1226 USA','+18882803321',' contact@mgm.com');
INSERT INTO Buyer(BuyerId, BuyerName, BuyerAddress, BuyerPhone, BuyerEmail) VALUES (9, 'Fox Film Corporation','1 Infinite Loop, Cupertino, California, United States of America','+8006927753',' contact@foxfilm.com');
INSERT INTO Buyer(BuyerId, BuyerName, BuyerAddress, BuyerPhone, BuyerEmail) VALUES (10, 'Lionsgate','Walmart Headquarters 702 S.W. 8th St. Bentonville, AK 72716, United States of America','+18009256278',' contact@lionsgate.com');

CREATE TABLE Contract (
	ContractId int primary key,
	StartingDate date default getdate(),
	ExpirationDate date default getdate(),
	Description varchar(100),
	DistributorId int,
	BuyerId int,
	TitleId int,
	foreign key (DistributorId) REFERENCES Distributor(DistributorId),
	foreign key (BuyerId) REFERENCES Buyer(BuyerId),
	foreign key (TitleId) REFERENCES Title(TitleId),
);

INSERT INTO Contract(ContractId, StartingDate, ExpirationDate, Description, DistributorId, BuyerId, TitleId) VALUES (1, '15.12.2017','15.12.2020','3 Year renting contract for an exterior',3,1,1);
INSERT INTO Contract(ContractId, StartingDate, ExpirationDate, Description, DistributorId, BuyerId, TitleId) VALUES (2, '22.12.2017','22.12.2022','5 Year renting contract for an exterior',3,1,2);
INSERT INTO Contract(ContractId, StartingDate, Description, DistributorId, BuyerId, TitleId) VALUES (3, '15.12.2017','Full purchasing contract for an exterior',7,1,3);
INSERT INTO Contract(ContractId, StartingDate, Description, DistributorId, BuyerId, TitleId) VALUES (4, '14.02.2018','Full purchasing contract for an exterior',9,1,4);
INSERT INTO Contract(ContractId, StartingDate, Description, DistributorId, BuyerId, TitleId) VALUES (5, '10.10.2019','Full purchasing contract for an exterior',9,1,5);
INSERT INTO Contract(ContractId, StartingDate, ExpirationDate, Description, DistributorId, BuyerId, TitleId) VALUES (6, '15.12.2017','15.12.2020','3 Year renting contract for an original',1,5,6);
INSERT INTO Contract(ContractId, StartingDate, ExpirationDate, Description, DistributorId, BuyerId, TitleId) VALUES (7, '22.12.2017','22.12.2022','5 Year renting contract for an original',1,4,7);
INSERT INTO Contract(ContractId, StartingDate, Description, DistributorId, BuyerId, TitleId) VALUES (8, '15.12.2017','Full purchasing contract for an original',1,2,8);
INSERT INTO Contract(ContractId, StartingDate, Description, DistributorId, BuyerId, TitleId) VALUES (9, '14.02.2018','Full purchasing contract for an original',1,9,9);
INSERT INTO Contract(ContractId, StartingDate, Description, DistributorId, BuyerId, TitleId) VALUES (10, '10.10.2019','Full purchasing contract for an original',1,5,10);

--USER INTERFACE SECTION
CREATE TABLE _User (
	UserId int primary key,
	UserName varchar(50),
	Password varchar(20),
	FirstName varchar(50),
	MiddleName varchar(50),
	LastName varchar(50),
	Email varchar(50),
	Address varchar(200),
	Country varchar(50),
	BirthDate date,
);

INSERT INTO _User(UserId,UserName,Password,FirstName,MiddleName,LastName,Email,Address,Country,BirthDate) VALUES
(1,'bria.barton','79143462','Harry','Kadin','Kilback','bernier.reece@example.org','033 Shields Street\nJeanneburgh, CT 42973-9095','Tunisia','2016-02-17'),
(2,'kianna.purdy','10567043','Shanie','Aurelia','Douglas','jackson11@example.org','13645 Letha Island\nAvisburgh, ND 24738-8162','Jamaica','1983-03-24'),
(3,'aron.pfannerstill','78511323','Savannah','Cornell','Nolan','bstoltenberg@example.com','717 Senger Islands\nHuelsstad, FL 10873-7736','Croatia','2000-09-23'),
(4,'kenton32','44543679','Pamela','Joyce','Renner','carolyn.rice@example.net','0627 Pascale Via Suite 823\nZenaborough, PA 92647-6','Wallis and Futuna','1974-10-09'),
(5,'ruth.veum','62787048','Brendan','Brody','Streich','dallin20@example.com','3285 Tanya Trail\nVernieton, NC 94703','Western Sahara','1980-02-23'),
(6,'eheidenreich','70271546','Loma','Asha','Bayer','yrosenbaum@example.org','056 Darian Place\nLake Meaghanberg, UT 18897-3151','Brazil','2004-05-31'),
(7,'ptillman','15965639','Amya','Helga','Jacobi','umosciski@example.com','2828 Schneider Harbors\nPriscillachester, MD 30210','Turkmenistan','1990-09-23'),
(8,'garfield05','99444563','Madalyn','Alejandra','Runolfsson','daugherty.johnathon@example.com','12505 Obie Square Apt. 138\nPaigechester, OK 01970-','Seychelles','2016-02-27'),
(9,'ryleigh.dare','96792131','Melany','Karina','Wyman','nmclaughlin@example.org','01934 Zella Stravenue Apt. 407\nMortonview, MA 4412','Sudan','2013-08-27'),
(10,'glenna33','73479178','Chauncey','Hector','Volkman','treutel.maximillia@example.org','1250 Cierra Pines Apt. 745\nJackchester, IL 99736-2','Indonesia','1971-09-22'); 

CREATE TABLE List (
	ListId int primary key,
	ListName varchar(50),
);

INSERT INTO List(ListId, ListName) VALUES (1,'Favorites');
INSERT INTO List(ListId, ListName) VALUES (2,'Watchlist');
INSERT INTO List(ListId, ListName) VALUES (3,'Watched Movies');
INSERT INTO List(ListId, ListName) VALUES (4,'Favorites');
INSERT INTO List(ListId, ListName) VALUES (5,'Favorites2');
INSERT INTO List(ListId, ListName) VALUES (6,'Favs');
INSERT INTO List(ListId, ListName) VALUES (7,'Wwatched');
INSERT INTO List(ListId, ListName) VALUES (8,'Favorites');
INSERT INTO List(ListId, ListName) VALUES (9,'My Favorite Series');
INSERT INTO List(ListId, ListName) VALUES (10,'My Watchlist');
INSERT INTO List(ListId, ListName) VALUES (11,'My Ratings');
INSERT INTO List(ListId, ListName) VALUES (12,'Rates');

CREATE TABLE Adds_To_Favorites (
	UserId int,
	ListId int,
	TitleId int,
	foreign key (UserId) REFERENCES _User(UserId),
	foreign key (ListId) REFERENCES List(ListId),
	foreign key (TitleId) REFERENCES Title(TitleId)
);

INSERT INTO Adds_To_Favorites(UserId,ListId,TitleId) VALUES (1,1,1);
INSERT INTO Adds_To_Favorites(UserId,ListId,TitleId) VALUES (1,1,2);
INSERT INTO Adds_To_Favorites(UserId,ListId,TitleId) VALUES (1,5,3);
INSERT INTO Adds_To_Favorites(UserId,ListId,TitleId) VALUES (1,5,4);
INSERT INTO Adds_To_Favorites(UserId,ListId,TitleId) VALUES (2,9,1);
INSERT INTO Adds_To_Favorites(UserId,ListId,TitleId) VALUES (2,9,5);
INSERT INTO Adds_To_Favorites(UserId,ListId,TitleId) VALUES (3,4,1);
INSERT INTO Adds_To_Favorites(UserId,ListId,TitleId) VALUES (3,4,8);
INSERT INTO Adds_To_Favorites(UserId,ListId,TitleId) VALUES (3,6,7);
INSERT INTO Adds_To_Favorites(UserId,ListId,TitleId) VALUES (3,6,6);

CREATE TABLE Adds_To_Watchlist (
	UserId int,
	ListId int,
	TitleId int,
	foreign key (UserId) REFERENCES _User(UserId),
	foreign key (ListId) REFERENCES List(ListId),
	foreign key (TitleId) REFERENCES Title(TitleId)
);

INSERT INTO Adds_To_Watchlist(UserId,ListId,TitleId) VALUES (1,2,6);
INSERT INTO Adds_To_Watchlist(UserId,ListId,TitleId) VALUES (1,2,5);
INSERT INTO Adds_To_Watchlist(UserId,ListId,TitleId) VALUES (1,2,4);
INSERT INTO Adds_To_Watchlist(UserId,ListId,TitleId) VALUES (1,2,10);
INSERT INTO Adds_To_Watchlist(UserId,ListId,TitleId) VALUES (8,10,1);
INSERT INTO Adds_To_Watchlist(UserId,ListId,TitleId) VALUES (8,10,5);
INSERT INTO Adds_To_Watchlist(UserId,ListId,TitleId) VALUES (8,10,4);
INSERT INTO Adds_To_Watchlist(UserId,ListId,TitleId) VALUES (8,10,9);
INSERT INTO Adds_To_Watchlist(UserId,ListId,TitleId) VALUES (8,10,10);
INSERT INTO Adds_To_Watchlist(UserId,ListId,TitleId) VALUES (8,10,2);

CREATE TABLE Adds_To_Watchedlist (
	UserId int,
	ListId int,
	TitleId int,
	foreign key (UserId) REFERENCES _User(UserId),
	foreign key (ListId) REFERENCES List(ListId),
	foreign key (TitleId) REFERENCES Title(TitleId)
);

INSERT INTO Adds_To_Watchedlist(UserId,ListId,TitleId) VALUES (1,3,1);
INSERT INTO Adds_To_Watchedlist(UserId,ListId,TitleId) VALUES (1,3,2);
INSERT INTO Adds_To_Watchedlist(UserId,ListId,TitleId) VALUES (1,3,6);
INSERT INTO Adds_To_Watchedlist(UserId,ListId,TitleId) VALUES (1,3,5);
INSERT INTO Adds_To_Watchedlist(UserId,ListId,TitleId) VALUES (6,7,6);
INSERT INTO Adds_To_Watchedlist(UserId,ListId,TitleId) VALUES (6,7,5);
INSERT INTO Adds_To_Watchedlist(UserId,ListId,TitleId) VALUES (6,7,8);
INSERT INTO Adds_To_Watchedlist(UserId,ListId,TitleId) VALUES (6,7,7);
INSERT INTO Adds_To_Watchedlist(UserId,ListId,TitleId) VALUES (6,7,1);
INSERT INTO Adds_To_Watchedlist(UserId,ListId,TitleId) VALUES (6,7,2);

CREATE TABLE Rates (
	UserId int,
	ListId int,
	TitleId int,
	Rating int check(Rating<=10 and Rating>=0),
	foreign key (UserId) REFERENCES _User(UserId),
	foreign key (ListId) REFERENCES List(ListId),
	foreign key (TitleId) REFERENCES Title(TitleId)
);

INSERT INTO Rates(UserId,ListId,TitleId,Rating) VALUES (1,11,1,7);
INSERT INTO Rates(UserId,ListId,TitleId,Rating) VALUES (1,11,2,8);
INSERT INTO Rates(UserId,ListId,TitleId,Rating) VALUES (1,11,6,8);
INSERT INTO Rates(UserId,ListId,TitleId,Rating) VALUES (1,11,5,10);
INSERT INTO Rates(UserId,ListId,TitleId,Rating) VALUES (6,11,6,9);
INSERT INTO Rates(UserId,ListId,TitleId,Rating) VALUES (6,12,5,9);
INSERT INTO Rates(UserId,ListId,TitleId,Rating) VALUES (6,12,8,8);
INSERT INTO Rates(UserId,ListId,TitleId,Rating) VALUES (6,12,7,7);
INSERT INTO Rates(UserId,ListId,TitleId,Rating) VALUES (6,12,1,9);
INSERT INTO Rates(UserId,ListId,TitleId,Rating) VALUES (6,12,2,10);


--MEMBERSHIP SECTION

CREATE TABLE Membership_Plan (
	MembershipPlanId int primary key,
	MembershipPlanName varchar(15) check(MembershipPlanName in('Basic Plan','Standard Plan','Premium Plan')),
	Description varchar(200),
	MonthlyPrice float,
	Duration int,
);

INSERT INTO Membership_Plan(MembershipPlanId, MembershipPlanName, Description, MonthlyPrice, Duration) VALUES (1, 'Basic Plan', '1 screen plan SD (watch on 1 device at a time, Standard Definition)', 5.99, 1);
INSERT INTO Membership_Plan(MembershipPlanId, MembershipPlanName, Description, MonthlyPrice, Duration) VALUES (2, 'Standard Plan', '2 screen plan HD (watch on 2 devices at the same time, High Definition)', 7.99, 1);
INSERT INTO Membership_Plan(MembershipPlanId, MembershipPlanName, Description, MonthlyPrice, Duration) VALUES (3, 'Premium Plan', ' 4 screen plan HD/UHD 4K (watch on 4 devices at the same time, includes High Definition and Ultra High Definition)', 9.99, 1);

CREATE TABLE Addon (
	AddonId int primary key,
	AddonName varchar(20) check(AddonName in('+LiveTV','+LiveTVPlus','+UnlimitedScreen','+NoAds','+EnhancedCloudDVR', 'NoAddOn')),
	Description varchar(100),
	MonthlyPrice float(2),
	Duration int,
);

INSERT INTO Addon(AddonId, AddonName, Description, MonthlyPrice, Duration) VALUES (1, '+LiveTV', 'User can watch free Tv Channels', 2.99, 1);
INSERT INTO Addon(AddonId, AddonName, Description, MonthlyPrice, Duration) VALUES (2, '+LiveTVPlus', 'User can watch premium networks', 19.99, 1);
INSERT INTO Addon(AddonId, AddonName, Description, MonthlyPrice, Duration) VALUES (3, '+UnlimitedScreen', 'User can use Cannal on limitless number of devices', 19.99, 1);
INSERT INTO Addon(AddonId, AddonName, Description, MonthlyPrice, Duration) VALUES (4, '+NoAds', 'User can use Cannal without any advertisement', 29.99, 1);
INSERT INTO Addon(AddonId, AddonName, Description, MonthlyPrice, Duration) VALUES (5, '+EnhancedCloudDVR', 'User can enhance his cloud storage from 50 hours to 200 hours', 19.99, 1);
INSERT INTO Addon(AddonId, AddonName, Description, MonthlyPrice, Duration) VALUES (6, 'NoAddOn', 'User can choose basic features without any add-on.', 0, 1);

CREATE TABLE Premium_Network (
	NetworkId int primary key,
	NetworkName varchar(50),
	AddonId int,
	foreign key (AddonId) REFERENCES Addon(AddonId),
);
INSERT INTO Premium_Network(NetworkId, NetworkName, AddonId) VALUES (1, 'HBO', 2);
INSERT INTO Premium_Network(NetworkId, NetworkName, AddonId) VALUES (2, 'CINEMAX', 2);
INSERT INTO Premium_Network(NetworkId, NetworkName, AddonId) VALUES (3, 'SHOWTIME', 2);
INSERT INTO Premium_Network(NetworkId, NetworkName, AddonId) VALUES (4, 'STARZ', 2);
INSERT INTO Premium_Network(NetworkId, NetworkName, AddonId) VALUES (5, 'EPIX', 2);
INSERT INTO Premium_Network(NetworkId, NetworkName, AddonId) VALUES (6, 'THEMOVIECHANNEL', 2);
INSERT INTO Premium_Network(NetworkId, NetworkName, AddonId) VALUES (7, 'SYFY', 2);
INSERT INTO Premium_Network(NetworkId, NetworkName, AddonId) VALUES (8, 'AMC', 2);
INSERT INTO Premium_Network(NetworkId, NetworkName, AddonId) VALUES (9, 'AUDIENCE', 2);
INSERT INTO Premium_Network(NetworkId, NetworkName, AddonId) VALUES (10, 'ULTRAHDPLEX', 2);

CREATE TABLE Basic_Channel (
	ChannelId int primary key,
	ChannelName varchar(50),
	AddonId int,
	foreign key (AddonId) REFERENCES Addon(AddonId),
);

INSERT INTO Basic_Channel(ChannelId, ChannelName, AddonId) VALUES (1, 'NBC', 1);
INSERT INTO Basic_Channel(ChannelId, ChannelName, AddonId) VALUES (2, 'CBS', 1);
INSERT INTO Basic_Channel(ChannelId, ChannelName, AddonId) VALUES (3, 'ABC', 1);
INSERT INTO Basic_Channel(ChannelId, ChannelName, AddonId) VALUES (4, 'FOX', 1);
INSERT INTO Basic_Channel(ChannelId, ChannelName, AddonId) VALUES (5, 'THECW', 1);
INSERT INTO Basic_Channel(ChannelId, ChannelName, AddonId) VALUES (6, 'CNN', 1);
INSERT INTO Basic_Channel(ChannelId, ChannelName, AddonId) VALUES (7, 'CNBC', 1);
INSERT INTO Basic_Channel(ChannelId, ChannelName, AddonId) VALUES (8, 'MSNBC', 1);
INSERT INTO Basic_Channel(ChannelId, ChannelName, AddonId) VALUES (9, 'ESPN', 1);
INSERT INTO Basic_Channel(ChannelId, ChannelName, AddonId) VALUES (10, 'MTV', 1);


CREATE TABLE Device (
	DeviceId int primary key,
	DeviceType varchar(20) check (DeviceType in ('SmartTV','SmartPhone','Console','Tablet','Computer','Blueray_Player','Settop_Box')),
	IpAddress varchar(15),
	MacAddress varchar(17),
	AddonId int,
	foreign key (AddonId) REFERENCES Addon(AddonId),
);

INSERT INTO Device(DeviceId, DeviceType, IpAddress, MacAddress, AddonId) VALUES (1, 'SmartTV', '66.249.79.95','00:0a:83:b1:c0:8e',6);
INSERT INTO Device(DeviceId, DeviceType, IpAddress, MacAddress, AddonId) VALUES (2, 'SmartPhone', '66.249.79.95','01:9a:21:c1:c0:82',6);
INSERT INTO Device(DeviceId, DeviceType, IpAddress, MacAddress, AddonId) VALUES (3, 'SmartPhone', '66.249.79.95','54:a2:27:b1:c7:d9',6);
INSERT INTO Device(DeviceId, DeviceType, IpAddress, MacAddress, AddonId) VALUES (4, 'Computer', '66.249.79.95','65:a7:85:b1:c4:e9',6);
INSERT INTO Device(DeviceId, DeviceType, IpAddress, MacAddress, AddonId) VALUES (5, 'SmartTV', '12.251.64.15','23:a2:5c:b8:00:09',6);
INSERT INTO Device(DeviceId, DeviceType, IpAddress, MacAddress, AddonId) VALUES (6, 'SmartTV', '25.168.15.65','02:8a:63:b7:cd:89',6);
INSERT INTO Device(DeviceId, DeviceType, IpAddress, MacAddress, AddonId) VALUES (7, 'Blueray_Player', '25.168.15.65','65:8a:13:b9:c0:84',6);
INSERT INTO Device(DeviceId, DeviceType, IpAddress, MacAddress, AddonId) VALUES (8, 'Tablet', '25.168.15.65','85:a6:c6:02:c0:9d',6);
INSERT INTO Device(DeviceId, DeviceType, IpAddress, MacAddress, AddonId) VALUES (9, 'Tablet', '186.113.240.166','28:a6:14:91:d6:b8',6);
INSERT INTO Device(DeviceId, DeviceType, IpAddress, MacAddress, AddonId) VALUES (10, 'SmartTV', '186.113.240.166','69:96:d6:cb:d6:99',6);

SET DATEFORMAT dmy;
CREATE TABLE Payment_Record (
	PaymentRecordId int primary key,
	PaymentMethod varchar(50) check (PaymentMethod in ('Credit Card','Mobile Payment','Bank Transfer','Ewallet','Prepaid Card','Direct Deposit')),
	PaymentDate date default getdate(),
	CardInfo varchar(50),
	UserID int,
	MembershipPlanId int,
	AddonId int,
	foreign key (MembershipPlanId) REFERENCES Membership_Plan(MembershipPlanId),
	foreign key (AddonId) REFERENCES Addon(AddonId),
	foreign key (UserID) REFERENCES _User(UserId),
);


INSERT INTO Payment_Record(PaymentRecordId, PaymentMethod, PaymentDate, CardInfo, UserID, MembershipPlanId, AddonId) VALUES (1, 'Credit Card', '01.06.2019', '4578456256434173;05/23;245',1,1,4);
INSERT INTO Payment_Record(PaymentRecordId, PaymentMethod, PaymentDate, CardInfo, UserID, MembershipPlanId, AddonId) VALUES (2, 'Credit Card', '01.08.2018','4125626789265651;11/23;642',2,3,5);
INSERT INTO Payment_Record(PaymentRecordId, PaymentMethod, PaymentDate, CardInfo, UserID, MembershipPlanId, AddonId) VALUES (3, 'Credit Card', '13.10.2019','7149849819819189;05/25;286',3,1,4);
INSERT INTO Payment_Record(PaymentRecordId, PaymentMethod, PaymentDate, CardInfo, UserID, MembershipPlanId, AddonId) VALUES (4, 'Credit Card', '12.12.2019','5419811915168992;08/21;423',4,1,3);
INSERT INTO Payment_Record(PaymentRecordId, PaymentMethod, PaymentDate, CardInfo, UserID, MembershipPlanId, AddonId) VALUES (5, 'Credit Card', '08.08.2019','1658198496526191;01/22;522',5,1,6);
INSERT INTO Payment_Record(PaymentRecordId, PaymentMethod, PaymentDate, CardInfo, UserID, MembershipPlanId, AddonId) VALUES (6, 'Credit Card', '06.05.2017','9491256298489849;11/22;123',6,2,1);
INSERT INTO Payment_Record(PaymentRecordId, PaymentMethod, PaymentDate, CardInfo, UserID, MembershipPlanId, AddonId) VALUES (7, 'Credit Card', '03.08.2019','4629681819874866;12/23;664',7,1,6);
INSERT INTO Payment_Record(PaymentRecordId, PaymentMethod, PaymentDate, CardInfo, UserID, MembershipPlanId, AddonId) VALUES (8, 'Credit Card', '10.09.2019','4987348189819298;02/23;489',8,2,2);
INSERT INTO Payment_Record(PaymentRecordId, PaymentMethod, PaymentDate, CardInfo, UserID, MembershipPlanId, AddonId) VALUES (9, 'Credit Card', '14.06.2019','4786235146146156;09/20;712',9,1,4);
INSERT INTO Payment_Record(PaymentRecordId, PaymentMethod, PaymentDate, CardInfo, UserID, MembershipPlanId, AddonId) VALUES (10, 'Credit Card', '18.02.2019','6871351618894994;10/21;258',10,2,6);



--------------------------------
-------STORED PROCEDURES--------
--------------------------------

--Stored procedure1: CalculateMembershipAmount
--Calcutes monthly amount of payment by summing addon price and membership plan price. 
Go
CREATE PROCEDURE CalculateMembershipAmount
	@PaymentRecordId int,
	@MonthlyAmount float(2) OUTPUT
AS

declare
	@planPrice float(2),
	@addonPrice float(2);
select @planPrice=mp.MonthlyPrice, @addonPrice=a.MonthlyPrice
from Payment_Record pr, Membership_Plan mp, Addon a
where pr.MembershipPlanId=mp.MembershipPlanId
and pr.AddonId=a.AddonId
and @PaymentRecordId=pr.PaymentRecordId

set @MonthlyAmount=@planPrice +  @addonPrice;

Go

--select one payment and insert to amounts table
declare @amount float(2);

create table Amounts(
	PaymentId int primary key,
	Amount float(2),
	foreign key (PaymentId) REFERENCES Payment_Record(PaymentRecordId),
);
exec CalculateMembershipAmount 1, @amount OUTPUT;
insert into Amounts(PaymentId, Amount) values (1, @amount);
exec CalculateMembershipAmount 2, @amount OUTPUT;
insert into Amounts(PaymentId, Amount) values (2, @amount);
exec CalculateMembershipAmount 3, @amount OUTPUT;
insert into Amounts(PaymentId, Amount) values (3, @amount);
exec CalculateMembershipAmount 4, @amount OUTPUT;
insert into Amounts(PaymentId, Amount) values (4, @amount);
exec CalculateMembershipAmount 5, @amount OUTPUT;
insert into Amounts(PaymentId, Amount) values (5, @amount);
exec CalculateMembershipAmount 6, @amount OUTPUT;
insert into Amounts(PaymentId, Amount) values (6, @amount);
exec CalculateMembershipAmount 7, @amount OUTPUT;
insert into Amounts(PaymentId, Amount) values (7, @amount);
exec CalculateMembershipAmount 8, @amount OUTPUT;
insert into Amounts(PaymentId, Amount) values (8, @amount);
exec CalculateMembershipAmount 9, @amount OUTPUT;
insert into Amounts(PaymentId, Amount) values (9, @amount);
exec CalculateMembershipAmount 10, @amount OUTPUT;
insert into Amounts(PaymentId, Amount) values (10, @amount);



select * from Amounts



--Stored procedure2: CrateFullName
--Combines FirstName, MiddleName, LastName columns into FullName
Go
CREATE PROCEDURE CrateFullName
	@UserId int,
	@FullName  varchar(50) OUTPUT
AS

declare
	@FN varchar(50),
	@MN varchar(50),
	@LN varchar(50)
select @FN=u.FirstName,@MN=u.MiddleName,@LN=u.LastName
from _User u
where @UserId=u.UserId


set @FullName= CONCAT(@FN,' ',@MN,' ',@LN)

--select one userid and insert to fullnames table
GO
declare @tempfullname varchar(152);

create table FullNames(
	UserId int primary key,
	FullName varchar(152),
	foreign key (UserId) REFERENCES _User(UserId),
);
exec CrateFullName 1, @tempfullname OUTPUT;
insert into FullNames(UserId, FullName) values (1, @tempfullname);
exec CrateFullName 2, @tempfullname OUTPUT;
insert into FullNames(UserId, FullName) values (2, @tempfullname);
exec CrateFullName 3, @tempfullname OUTPUT;
insert into FullNames(UserId, FullName) values (3, @tempfullname);
exec CrateFullName 4, @tempfullname OUTPUT;
insert into FullNames(UserId, FullName) values (4, @tempfullname);
exec CrateFullName 5, @tempfullname OUTPUT;
insert into FullNames(UserId, FullName) values (5, @tempfullname);
exec CrateFullName 6, @tempfullname OUTPUT;
insert into FullNames(UserId, FullName) values (6, @tempfullname);
exec CrateFullName 7, @tempfullname OUTPUT;
insert into FullNames(UserId, FullName) values (7, @tempfullname);
exec CrateFullName 8, @tempfullname OUTPUT;
insert into FullNames(UserId, FullName) values (8, @tempfullname);
exec CrateFullName 9, @tempfullname OUTPUT;
insert into FullNames(UserId, FullName) values (9, @tempfullname);
exec CrateFullName 10, @tempfullname OUTPUT;
insert into FullNames(UserId, FullName) values (10, @tempfullname);


select * from FullNames

--------------------
-------VIEWS--------
--------------------

--View1: DetailedBills
--Creates a bill for a payment record
Go
CREATE VIEW DetailedBills AS 
select f.FullName as 'Name', mp.MembershipPlanName as 'Plan', mp.Description as 'Plan Description', ad.AddonName as 'Add-on', ad.Description as 'Add-on Description', pr.PaymentDate as 'Date', a.Amount as 'Monthly Fee'
from Payment_Record pr, _User u, Amounts a, Membership_Plan mp, Addon ad, FullNames f
where pr.MembershipPlanId=mp.MembershipPlanId
and pr.AddonId=ad.AddonId
and pr.PaymentRecordId=a.PaymentId
and u.UserId=f.UserId
and pr.UserID=u.UserId;


GO
SELECT * FROM DetailedBills

--View2: TopMovies
--Create a list that contains titles with ratings higher than 8.0
GO
CREATE VIEW TopMovies AS 
select TitleName,rating
from Title
where Rating>=8.0 and  Category='Movie';


GO
select * from TopMovies;



-----------------------
-------TRIGGERS--------
-----------------------

--Trigger1: InsertFullName
--Whenever a new user is created, insert user names into FullNames table

GO
CREATE TRIGGER InsertFullName ON _User
AFTER INSERT AS 
BEGIN
    declare 
		@tempfullname varchar(152),
		@id int;
	select @id=UserId from inserted;
	exec CrateFullName @id, @tempfullname OUTPUT;
    INSERT INTO FullNames values(@id,@tempfullname);
    
END;

--test trigger1
Go 
select * from FullNames;
insert into _User values(11,'test','12345678','Mustafa','Abdullah','Hakkoz','mustafa.hakkoz@gmail.org','Barbaros Mh.No:53 Üsküdar Ýstanbul','Turkey','07.03.1990');
select * from FullNames;

--Trigger2: InsertAmount
--Whenever a new payment record is created, insert it's amount into Amounts table
GO
CREATE TRIGGER InsertAmount ON Payment_Record
AFTER INSERT AS 
BEGIN
    declare 
		@tempamount float(2),
		@id int;
	select @id=UserId from inserted;
	exec CalculateMembershipAmount @id, @tempamount OUTPUT;
    INSERT INTO Amounts values(@id,@tempamount);
    
END;

--test trigger2
Go 
select * from Amounts;
INSERT INTO Payment_Record(PaymentRecordId, PaymentMethod, PaymentDate, CardInfo, UserID, MembershipPlanId, AddonId) VALUES (11, 'Credit Card', GETDATE(), '4578456256434173;05/23;245',11,3,5);
select * from Amounts;



