--Mustafa A. Hakkoz - 150117509							
--Muhammed Adem E. Demirkuþ - 150115003
Go
create database CannalDB;
Go
use CannalDB;

SET DATEFORMAT dmy;

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
Insert Into Title Values(11,'Whiplash','Movie','Exterior','tt2582802',8.5,15);
Insert Into Title Values(12,'La La Land','Movie','Exterior','tt3783958',8.0,9);
Insert Into Title Values(13,'Drive','Movie','Original','tt0780504',7.8,13);
Insert Into Title Values(14,'Dallas Buyers Club','Movie','Exterior','tt0790636',8.0,13);
Insert Into Title Values(15,'Juno','Movie','Exterior','tt0467406',7.4,9);
Insert Into Title Values(16,'True Detective','Series','Exterior','tt2356777',9.0,15);
Insert Into Title Values(17,'The Killing ','Series','Original','Original',8.2,15);
Insert Into Title Values(18,'Luther','Series','Exterior','tt1474684',8.5,13);
Insert Into Title Values(19,'Bodyguard ','Series','Original','tt7493974',8.2,9);
Insert Into Title Values(20,'Broadchurch','Series','Exterior','tt2249364',8.4,13);


CREATE TABLE SERIES(
	sTitleID int primary key foreign key references Title(TitleID),
	startingYear int,
	endingYear int,
	numberOfSeasons int,
	numberOfEpisodes int
);


Insert Into SERIES Values(1,2019,2019,1,10);
Insert Into SERIES Values(7,1966,1969,3,80);
Insert Into SERIES Values(8,1990,1991,2,30);
Insert Into SERIES(sTitleID,startingYear,numberOfSeasons,numberOfEpisodes) Values(9,2010,10,148);
Insert Into SERIES Values(10,1989,1998,9,173);
Insert Into SERIES(sTitleID,startingYear,numberOfSeasons,numberOfEpisodes) Values(16,2014,3,24);
Insert Into SERIES Values(17,2011,2014,4,44);
Insert Into SERIES(sTitleID,startingYear,numberOfSeasons,numberOfEpisodes) Values(18,2010,5,21);
Insert Into SERIES(sTitleID,startingYear,numberOfSeasons,numberOfEpisodes) Values(19,2018,1,7);
Insert Into SERIES Values(20,2013,2017,3,24);



CREATE TABLE MOVIE(
	mTitleID int primary key foreign key references Title(TitleID),
	productionYear int,
	productionCompany varchar(50),
	runTime int,
	releaseDate date default getdate(),

);

Insert Into MOVIE Values(2,2016,'Space Rocket Nation',117,'05.08.2016');
Insert Into MOVIE Values(3,2009,'BBC Films',93, '30.03.2010');
Insert Into MOVIE Values(4,1971,'ABC Pictures',113,'27.03.1972');
Insert Into MOVIE Values(5,2010,'Fox Searchlight Pictures',108,'25.02.2011');
Insert Into MOVIE Values(6,2014,' Paramount Pictures',169,'07.11.2014');
Insert Into MOVIE Values(11,2014,'Bold Films',106,'16.01.2015');
Insert Into MOVIE Values(12,2016,' Summit Entertainment',128,'30.12.2016');
Insert Into MOVIE Values(13,2011,'FilmDistrict',100,'10.02.2012');
Insert Into MOVIE Values(14,2013,'Truth Entertainment',117,'07.03.2014');
Insert Into MOVIE Values(15,2007,'Fox Searchlight Pictures',96,'21.03.2007');

CREATE TABLE SERIES_GENRE(
	seriesGenreID int primary key,
	seriesGenreName varchar(50)
);

Insert Into SERIES_GENRE Values(1,'Action');
Insert Into SERIES_GENRE Values(2,'Adventure');
Insert Into SERIES_GENRE Values(3,'Animation');
Insert Into SERIES_GENRE Values(4,'Biography');
Insert Into SERIES_GENRE Values(5,'Comedy');
Insert Into SERIES_GENRE Values(6,'Crime');
Insert Into SERIES_GENRE Values(7,'Documentary');
Insert Into SERIES_GENRE Values(8,'Drama');
Insert Into SERIES_GENRE Values(9,'Family');
Insert Into SERIES_GENRE Values(10,'Fantasy');
Insert Into SERIES_GENRE Values(11,'Noir');
Insert Into SERIES_GENRE Values(12,'Game-Show');
Insert Into SERIES_GENRE Values(13,'History');
Insert Into SERIES_GENRE Values(14,'Horror');
Insert Into SERIES_GENRE Values(15,'Musical');
Insert Into SERIES_GENRE Values(16,'Mistery');
Insert Into SERIES_GENRE Values(17,'News');
Insert Into SERIES_GENRE Values(18,'Reality-TV');
Insert Into SERIES_GENRE Values(19,'Romance');
Insert Into SERIES_GENRE Values(20,'Sci-Fi');
Insert Into SERIES_GENRE Values(21,'Sport');
Insert Into SERIES_GENRE Values(22,'Talk-Show');
Insert Into SERIES_GENRE Values(23,'Thriller');
Insert Into SERIES_GENRE Values(24,'War');
Insert Into SERIES_GENRE Values(25,'Western');

CREATE TABLE SERIES_HAS_GENRE(
	sTitleID int foreign key references SERIES(sTitleID),
	seriesGenreID int foreign key references SERIES_GENRE(seriesGenreID),
	primary key (sTitleID,seriesgenreID)
);

Insert Into SERIES_HAS_GENRE Values(1,6);
Insert Into SERIES_HAS_GENRE Values(1,8);
Insert Into SERIES_HAS_GENRE Values(1,23);
Insert Into SERIES_HAS_GENRE Values(7,1);
Insert Into SERIES_HAS_GENRE Values(7,2);
Insert Into SERIES_HAS_GENRE Values(7,20);
Insert Into SERIES_HAS_GENRE Values(8,6);
Insert Into SERIES_HAS_GENRE Values(8,8);
Insert Into SERIES_HAS_GENRE Values(8,16);
Insert Into SERIES_HAS_GENRE Values(9,8);
Insert Into SERIES_HAS_GENRE Values(9,14);
Insert Into SERIES_HAS_GENRE Values(9,23);
Insert Into SERIES_HAS_GENRE Values(10,5);
Insert Into SERIES_HAS_GENRE Values(16,6);
Insert Into SERIES_HAS_GENRE Values(16,8);
Insert Into SERIES_HAS_GENRE Values(16,16);
Insert Into SERIES_HAS_GENRE Values(17,6);
Insert Into SERIES_HAS_GENRE Values(17,8);
Insert Into SERIES_HAS_GENRE Values(17,16);
Insert Into SERIES_HAS_GENRE Values(18,6);
Insert Into SERIES_HAS_GENRE Values(18,8);
Insert Into SERIES_HAS_GENRE Values(18,16);
Insert Into SERIES_HAS_GENRE Values(19,6);
Insert Into SERIES_HAS_GENRE Values(19,8);
Insert Into SERIES_HAS_GENRE Values(19,23);
Insert Into SERIES_HAS_GENRE Values(20,6);
Insert Into SERIES_HAS_GENRE Values(20,8);
Insert Into SERIES_HAS_GENRE Values(20,16);


CREATE TABLE MOVIE_GENRE(
	movieGenreID int primary key,
	movieGenreName varchar(50)
);

Insert Into MOVIE_GENRE Values(1,'Action');
Insert Into MOVIE_GENRE Values(2,'Adventure');
Insert Into MOVIE_GENRE Values(3,'Animation');
Insert Into MOVIE_GENRE Values(4,'Biography');
Insert Into MOVIE_GENRE Values(5,'Comedy');
Insert Into MOVIE_GENRE Values(6,'Crime');
Insert Into MOVIE_GENRE Values(7,'Documentary');
Insert Into MOVIE_GENRE Values(8,'Drama');
Insert Into MOVIE_GENRE Values(9,'Family');
Insert Into MOVIE_GENRE Values(10,'Fantasy');
Insert Into MOVIE_GENRE Values(11,'Noir');
Insert Into MOVIE_GENRE Values(12,'History');
Insert Into MOVIE_GENRE Values(13,'Horror');
Insert Into MOVIE_GENRE Values(14,'Musical');
Insert Into MOVIE_GENRE Values(15,'Mistery');
Insert Into MOVIE_GENRE Values(16,'Romance');
Insert Into MOVIE_GENRE Values(17,'Sci-Fi');
Insert Into MOVIE_GENRE Values(18,'Sport');
Insert Into MOVIE_GENRE Values(19,'Thriller');
Insert Into MOVIE_GENRE Values(20,'War');
Insert Into MOVIE_GENRE Values(21,'Western');

CREATE TABLE MOVIE_HAS_GENRE(
	mTitleID int foreign key references MOVIE(mTitleID),
	movieGenreID int foreign key references MOVIE_GENRE(movieGenreID),
	primary key (mTitleID,movieGenreID)
);

Insert Into MOVIE_HAS_GENRE Values(2,13);
Insert Into MOVIE_HAS_GENRE Values(2,19);
Insert Into MOVIE_HAS_GENRE Values(3,2);
Insert Into MOVIE_HAS_GENRE Values(3,8);
Insert Into MOVIE_HAS_GENRE Values(3,10);
Insert Into MOVIE_HAS_GENRE Values(4,6);
Insert Into MOVIE_HAS_GENRE Values(4,8);
Insert Into MOVIE_HAS_GENRE Values(4,19);
Insert Into MOVIE_HAS_GENRE Values(5,8);
Insert Into MOVIE_HAS_GENRE Values(5,19);
Insert Into MOVIE_HAS_GENRE Values(6,2);
Insert Into MOVIE_HAS_GENRE Values(6,8);
Insert Into MOVIE_HAS_GENRE Values(6,17);
Insert Into MOVIE_HAS_GENRE Values(11,8);
Insert Into MOVIE_HAS_GENRE Values(12,5);
Insert Into MOVIE_HAS_GENRE Values(12,8);
Insert Into MOVIE_HAS_GENRE Values(12,14);
Insert Into MOVIE_HAS_GENRE Values(13,6);
Insert Into MOVIE_HAS_GENRE Values(13,8);
Insert Into MOVIE_HAS_GENRE Values(14,4);
Insert Into MOVIE_HAS_GENRE Values(14,8);
Insert Into MOVIE_HAS_GENRE Values(15,5);
Insert Into MOVIE_HAS_GENRE Values(15,8);


CREATE TABLE EPISODE(
	episodeID int not null,
	season varchar(50),
	releaseDate date default getdate(),
	runTime int,
	sTitleID int foreign key references SERIES(sTitleID),
	primary key(episodeID, sTitleID),
);

Insert Into EPISODE Values(1,1,'14.06.2019',93,1);
Insert Into EPISODE Values(2,1,'14.06.2019',96,1);
Insert Into EPISODE Values(3,1,'14.06.2019',76,1);
Insert Into EPISODE Values(4,1,'14.06.2019',63,1);
Insert Into EPISODE Values(5,1,'14.06.2019',75,1);
Insert Into EPISODE Values(6,1,'14.06.2019',91,1);
Insert Into EPISODE Values(7,1,'14.06.2019',70,1);
Insert Into EPISODE Values(8,1,'14.06.2019',88,1);
Insert Into EPISODE Values(9,1,'14.06.2019',69,1);
Insert Into EPISODE Values(10,1,'14.06.2019',30,1);


CREATE TABLE PERSON(
	personID int primary key,
	firstName varchar(50),
	middleName varchar(50),
	lastName varchar(50),
	imdbID varchar(10),
	biography varchar(max),
	birthPlace varchar(50),
	birthDate date default getdate(),
);

Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(1,'Miles','Teller','nm1886602','Miles Alexander Teller is an American actor and musician. For his performance in the film Þu An Muhteþem (2013), he won the Dramatic Special Jury Award for Acting at the 2013 Sundance Film Festival.','Downingtown, Pennsylvania, USA','20.02.1987');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(2,'Christina','Hendricks','nm0376716','Christina Rene Hendricks was born in Knoxville, Tennessee, and grew up in Twin Falls, Idaho. Her father, Robert, originally from England, worked for the U.S. Forest Service, while her mother, Jackie Sue (Raymond), was a psychologist. At the age of 13 her father transferred to the Forest Service Washington, D.C. headquarters and the family moved to nearby Fairfax, Virginia. She began acting at school and went into modeling from the ages of 18 to 27. In her early 20s, she also began appearing on television, landing a recurring role in Beggars and Choosers (1999) in 2000 and another on Kevin Hill (2004) before rising to international fame in Mad Men (2007). As well as her more famously conventional awards nominations (Emmys) and wins (SAG Awards) she also won a SyFy Genre Award in for "Best Special Guest/Television" for her role as Saffron in Joss Whedons short-lived Firefly (2002).','Knoxville, Tennessee, USA','03.05.1975');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(3,'Madds','Mikkelsen','nm0586568','As a child he trained as a gymnast and then became a professional dancer before studying drama at the Armos Theatre School in Denmark and became famous overnight as star of the police series Unit 1 which won an International Emmy as Best Drama Series. A starring film role in Open Arms won him a Zulu Award and a nomination for the Danish Academys Robert Award and Danish Film Critics Award in 2003. The Green Butchers earned him nominations for Robert and Fodil Awards as Best Actor in 2005.','Østerbro, Copenhagen, Denmark','22.11.1965');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(4,'Dustin','Hoffman','nm0000163','Dustin Lee Hoffman was born in Los Angeles, California, to Lillian (Gold) and Harry Hoffman, who was a furniture salesman and prop supervisor for Columbia Pictures. He was raised in a Jewish family (from Ukraine, Russia-Poland, and Romania). Hoffman graduated from Los Angeles High School in 1955, and went to Santa Monica City College, where he dropped out after a year due to bad grades. But before he did, he took an acting course because he was told that "nobody flunks acting." Also received some training at Los Angeles Conservatory of Music. Decided to go into acting because he did not want to work or go into the service. Trained at The Pasadena Playhouse for two years.','Los Angeles, California, USA','08.08.1937');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(5,'Natalie','Portman','nm0000204','Natalie Portman is the first person born in the 1980s to have won the Academy Award for Best Actress (for Siyah Kuðu (2010)).','Jerusalem, Israel','09.06.1981');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(6,'Matthew','McConaughey','nm0000190','American actor and producer Matthew David McConaughey was born in Uvalde, Texas. His mother, Mary Kathleen (McCabe), is a substitute school teacher originally from New Jersey. His father, James Donald McConaughey, was a Mississippi-born gas station owner who ran an oil pipe supply business. He is of Irish, Scottish, English, German, and Swedish.','Uvalde, Texas, USA','04.11.1969');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(7,'Leonard','Nimoy','nm0000559','Leonard Nimoy died on February 27, 2015 in Bel Air, Los Angeles, California, of end-stage chronic obstructive pulmonary disease. He was 83.','Boston, Massachusetts, USA','26.03.1931');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(8,'Kyle','MacLachlan','nm0001492','The "boy next door, if that boy spent lots of time alone in the basement", is how Rich Cohen described Kyle MacLachlan in a 1994 article for "Rolling Stone" magazine. That distinctly askew wholesomeness made MacLachlan a natural to become famous as the alter ego of twisted director David Lynch. MacLachlan was born and raised in Yakima, Washington.','Yakima, Washington, USA','22.02.1959');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(9,'Andrew','Lincoln','nm0511088','Lincolns first big break came when he was cast as Edgar Egg Cook in the popular UK drama series This Life (1996). Various roles followed including that of teacher Simon Casey in the Channel 4 series Teachers (2001), and as Mark in the hit film aþk her yerde (2003). In 2010, he was cast in Yürüyen Ölüler (2010), a live action drama series based on the comic of the same name. Lincoln plays the lead character of Rick Grimes.Lincoln is married to Gael Anderson, his father-in-law is legendary musician Ian Anderson of Jethro Tull fame.','London, England, UK','14.09.1973');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(10,'Jerry','Seinfeld','nm0000632','Jerry Seinfeld was born in Brooklyn, New York, the son of Betty (Hesney) and Kalman Seinfeld. His father was of Hungarian Jewish descent, while Jerrys maternal grandparents, Salha and Selim Hosni, were Syrian Jewish immigrants (from Aleppo). He moved with his family, including sister Carolyn, to suburban Massepequa, Long Island, at a young age. Jerrys dad, who had a terrific sense of humor, was a commercial sign maker. Jerry attended Oswego College in upstate New York but transferred to Queens College back in New York City. Developed interest in stand-up comedy after brief stints in college productions. Went straight from college graduation to amateur night tryout at New Yorks Catch a Rising Star, 1976.','Brooklyn, New York City, New York, USA','29.04.1954');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(11,'Ryan','Gosling','nm0331516','He was born Ryan Thomas Gosling on November 12, 1980, in London, Ontario, Canada. He is the son of Donna (Wilson), a secretary, and Thomas Ray Gosling, a traveling salesman. Ryan was the second of their two children, with an older sister, Mandi. His ancestry is French-Canadian, as well as English, Scottish, and Irish. The Gosling family moved to Cornwall, Ontario, where Ryan grew up and was home-schooled by his mother and also attended Gladstone Public School. Ryan attended Cornwall Collegiate and Vocational High School in Cornwall, where he excelled in Drama and Fine Arts. The family then relocated to Burlington, Ontario, where Ryan attended Lester B. Pearson High School. Ryan first performed as a singer at talent contests with Mandi. He attended an open audition in Montreal for the TV series "The Mickey Mouse Club" (MMC (1989)) in January 1993 and beat out 17,000 other aspiring actors for a a spot on the show. While appearing on "MMC" for two years, he lived with co-star Justin Timberlakes family.','London, Ontario, Canada','12.11.1980');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(12,'Ellen','Page','nm0680983','Ellen Grace Philpotts-Page was born on February 21, 1987, in Halifax, Nova Scotia, to Martha Philpotts, a teacher, and Dennis Page, a graphic designer. Page wanted to start acting at an early age and attended the Neptune Theater School. She began her career at the age of 10 on the award-winning television series Pit Pony (1999), for which she received a Gemini nomination and a Young Artist Awards nomination. Later, Page appeared in Marion Bridge (2002), which won the award for Best Canadian First Feature at the Toronto International Film Festival. She won a Gemini Award for her role of Lilith in the first season of ReGenesis (2004), a one-hour drama for TMN/Movie Central, and for the cable feature, Mrs. Ashboros Cat (2004), for Best Performance in a Childrens or Youth Program or Series. In addition, Page appeared in the cult hit TV series Trailer Park Boys (2001).','Halifax, Nova Scotia, Canada','21.02.1987');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(13,'Joel','Kinnaman','nm1172478','Charles Joel Nordström, known professionally as Joel Kinnaman, is a Swedish actor. He is best known for playing the lead role in the Swedish film Easy Money a role that earned him a Guldbagge Award in the "Best Actor" category - and for his role as Frank Wagner in the Johan Falk film series. He starred on AMCs The Killing as detective Stephen Holder and played Alex Murphy in the 2014 reboot of RoboCop.','Stockholm, Stockholms län, Sweden','25.11.1979');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(14,'Idris','Elba','nm0252961','His first acting roles were on the soap opera Family Affairs (1997), the television serial Ultraviolet (1998), and the medical drama Dangerfield (1995). His best known roles are as drug baron Russell "Stringer" Bell on the HBO series The Wire (2002), as DCI John Luther on the BBC One series Luther (2010), and as Heimdall in the Marvel Cinematic Universe. He later starred in the films Daddys Little Girls (2007), Prom Night (2008), RocknRolla (2008), Doðmamýþ (2009) and Obsessed (2009). He also appeared in the films Amerikan gangsteri (2007), Takers (2010), Thor (2011), Prometheus (2012), Pasifik Savaþý (2013), Thor: Karanlýk Dünya (2013), Beasts of No Nation (2015) and Star Trek Sonsuzluk (2016). He voiced Chief Bogo in Zootropolis: Hayvanlar Þehri (2016), Shere Khan in Orman Çocuðu (2016), and Fluke in Kayýp Balýk Dori (2016).','Hackney, London, England, UK','06.09.1972');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(15,'Richard','Madden','nm0534635','Richard Madden, born 18 June 1986, is a Scottish stage, film, and television actor best known for portraying Robb Stark in the HBO series "Game of Thrones" and Prince Kit in Disneys "Cinderella." Starring as David Budd in the BBC miniseries "Bodyguard" has also brought him more international acclaim and attention including a Golden Globe and other nominations. Despite his seemingly overnight success, Madden has been acting since he was in his teens, with only a brief break where he focused on school.','Elderslie, Renfrewshire, Scotland, UK','18.06.1986');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(16,'David','Tennant','nm0855039','He made his first television appearance (which was also his first professional acting job) when he was 16, after his father sent some photos of him to a casting director at Scottish television. He also attended a youth theatre group at weekends run by the Royal Scottish Academy of Music and Drama (RSAMD - now renamed the Royal Conservatoire of Scotland [RCS]). When he was 16 he auditioned for and won a place at the RSAMD; the youngest student to ever do so, and started as a full time drama student when he was 17.','Bathgate, West Lothian, Scotland, UK','18.04.1971');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(17,'Anne','Hathaway','nm0004266','Anne Jacqueline Hathaway was born in Brooklyn, New York, to Kate McCauley Hathaway, an actress, and Gerald T. Hathaway, a lawyer, both originally from Philadelphia. She is of mostly Irish descent, along with English, German, and French. Her first major role came in the short-lived television series Get Real (1999). She gained widespread recognition for her roles in Acemi prenses (2001) and its 2004 sequel as a young girl who discovers she is a member of royalty, opposite Julie Andrews and Heather Matarazzo.','Brooklyn, New York City, New York, USA','12.11.1982');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(18,'Michael','Caine','nm0000323','Michael Caine was born Maurice Joseph Micklewhite in London, to Ellen Frances Marie (Burchell), a charlady, and Maurice Joseph Micklewhite, a fish-market porter. He left school at age 15 and took a series of working-class jobs before joining the British army and serving in Korea during the Korean War, where he saw combat. Upon his return to England, he gravitated toward the theater and got a job as an assistant stage manager. He adopted the name of Caine on the advice of his agent, taking it from a marquee that advertised Denizde isyan (1954). In the years that followed, he worked in more than 100 television dramas, with repertory companies throughout England and eventually in the stage hit "The Long and the Short and the Tall".','Rotherhithe, London, England, UK','14.03.1933');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(19,'Jessica','Chastain','nm1567113','NataliJessica Michelle Chastain was born in Sacramento, California, and was raised in a middle-class household in a northern California suburb. Her mother, Jerri Chastain, is a vegan chef whose family is originally from Kansas, and her stepfather is a fireman. She discovered dance at the age of nine and was in a dance troupe by age thirteen. She began performing in Shakespearean productions all over the Bay area. An actor in a production of "Romeo & Juliet" encouraged her to audition for Juilliard as a drama major. She became a member of "Crew 32" with the help of a scholarship from one of the schools famous alumni, Robin Williams.','Sacramento, California, USA','24.03.1977');
Insert Into PERSON(personID,firstName,middleName,lastName,imdbID,biography,birthPlace,birthDate)Values(20,'Nicolas','Winding','Refn','nm0716347','With such critical acclaim, Nicolas reputation as a producer, writer and director was solidly reaffirmed. Nicolas and his wife Liv Corfixen were the subjects of an acclaimed documentary, Gambler (2006), which premiered at the Rotterdam International Film Festival in 2005. In addition, Nicolas already received two lifetime-achievement awards (one from the Taipei International Film festival in 2006 and the second from the Valencia International Film Festival in 2007), and it was the winner of the Emerging Master Award from the Philadelphia International Film Festival 2005.','Copenhagen, Denmark','29.09.1970');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(21,'Sam','Peckinpah','nm0001603','David Samuel Peckinpah was born and grew up in Fresno, California, when it was still a sleepy town. Young Sam was a loner. The childs greatest influence was grandfather Denver Church, a judge, congressman and one of the best shots in the Sierra Nevadas. Sam served in the US Marine Corps during World War II but - to his disappointment - did not see combat. Upon returning to the US he enrolled in Fresno State College, graduating in 1948 with a B.A. in Drama. He married Marie Selland in Las Vegas in 1947 and they moved to Los Angeles, where he enrolled in the graduate Theater Department of the University of Southern California the next year. He eventually took his Masters in 1952.','Fresno, California, USA','21.02.1925');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(22,'Darren','Aronofsky','nm0004716','Darren Aronofsky was born February 12, 1969, in Brooklyn, New York. Growing up, Darren was always artistic: he loved classic movies and, as a teenager, he even spent time doing graffiti art. After high school, Darren went to Harvard University to study film (both live-action and animation). He won several film awards after completing his senior thesis film, "Supermarket Sweep", starring Sean Gullette, which went on to becoming a National Student Academy Award finalist. Aronofsky didnt make a feature film until five years later, in February 1996, where he began creating the concept for Pi (1998). After Darrens script for Pi (1998) received great reactions from friends, he began production. The film re-teamed Aronofsky with Gullette, who played the lead. This went on to further successes, such as Bir Rüya Ýçin Aðýt (2000), Þampiyon (2008) and Siyah Kuðu (2010). Most recently, he completed the films Nuh: Büyük Tufan (2014) and Anne! (2017).','JBrooklyn, New York City, New York, USA','12.02.1969');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography)Values(23,'Andres','Heinz','nm0374560','Andres Heinz attended UCLA and NYU film school where he completed his B.F.A with the highest honors; his thesis film "Ground Level B" was the winner of the 1st Place Mobil Award.After graduation, Andres worked in film and television production, including Production Coordinator for the film unit at Saturday Night Live.Andres went on to direct his first feature, "Origin of the Species" and has since sold several original screenplays."Black Swan" is based on his original screenplay "The Understudy.');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(24,'Christopher','Nolan','nm0634240','Best known for his cerebral, often nonlinear, storytelling, acclaimed writer-director Christopher Nolan was born on July 30, 1970 in London, England. Over the course of 15 years of filmmaking, Nolan has gone from low-budget independent films to working on some of the biggest blockbusters ever made.','London, England, UK','30.07.1970');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(25,'Jonathan','Nolan','nm0634300','Attended Loyola Academy in Wilmette, Illinois, graduating in 1994.Graduated from Georgetown University in Washington, D.C. in 1999. Majored in English.Shortly after graduating from Georgetown University, Jonathan Nolan served as a production assistant on Akýl Defteri (2000).Wrote the short story, "Memento Mori", on which the film Akýl Defteri (2000) is based.Was co-writer, with his brother Christopher Nolan, on Prestij (2006), Kara Þövalye (2008) and Kara Þövalye Yükseliyor (2012). Also co-wrote the Terminatör kurtuluþ (2009).','London, England, UK','06.06.1976');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(26,'Gene','Roddenberry','nm0734472','Gene Roddenberry was born on August 19, 1921 in El Paso, Texas, USA as Eugene Wesley Roddenberry. He was a writer and producer, known for Uzay yolu (1966), Star Trek: The Next Generation (1987) and Uzay Macerasý (1979). He was married to Majel Barrett and Eileen Anita Rexroat. He died on October 24, 1991 in Santa Monica, California, USA.','El Paso, Texas, USA','19.08.1921');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(27,'David','Lynch','nm0000186','Born in precisely the kind of small-town American setting so familiar from his films, David Lynch spent his childhood being shunted from one state to another as his research scientist father kept getting relocated. He attended various art schools, married Peggy Lynch and then fathered future director Jennifer Lynch shortly after he turned 21. That experience, plus attending art school in a particularly violent and run-down area of Philadelphia, inspired Eraserhead (1977), a film that he began in the early 1970s (after a couple of shorts) and which he would work on obsessively for five years. The final film was initially judged to be almost unreleasable weird, but thanks to the efforts of distributor Ben Barenholtz, it secured a cult following and enabled Lynch to make his first mainstream film (in an unlikely alliance with Mel Brooks), though Fil Adam (1980) was shot through with his unique sensibility. Its enormous critical and commercial success led to Dune: Çöl Gezegeni (1984), a hugely expensive commercial disaster, but Lynch redeemed himself with the now classic Mavi kadife (1986), his most personal and original work since his debut. He subsequently won the top prize at the Cannes Film Festival with the dark, violent road movie Vahþi duygular (1990), and achieved a huge cult following with his surreal TV series Ýkiz Tepeler (1990), which he adapted for the big screen, though his comedy series On the Air (1992) was less successful. He also draws comic strips and has devised multimedia stage events with regular composer Angelo Badalamenti. He had a much-publicized affair with Isabella Rossellini in the late 1980s.','Missoula, Montana, USA','20.01.1946');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(28,'Frank','Darabont','nm0001104','Three-time Oscar nominee Frank Darabont was born in a refugee camp in 1959 in Montbeliard, France, the son of Hungarian parents who had fled Budapest during the failed 1956 Hungarian revolution. Brought to America as an infant, he settled with his family in Los Angeles and attended Hollywood High School. His first job in movies was as a production assistant on the 1981 low-budget film, Cehennem Gecesi (1981), starring Linda Blair. He spent the next six years working in the art department as a set dresser and in set construction while struggling to establish himself as a writer. His first produced writing credit (shared) was on the 1987 film, Elm Sokaðýnda Kabus 3: Rüya Savaþçýlarý (1987), directed by Chuck Russell. Darabont is one of only six filmmakers in history with the unique distinction of having his first two feature films receive nominations for the Best Picture Academy Award: 1994s Esaretin Bedeli (1994) (with a total of seven nominations) and 1999s Yeþil Yol (1999) (four nominations). Darabont himself collected Oscar nominations for Best Adapted Screenplay for each film (both based on works by Stephen King), as well as nominations for both films from the Directors Guild of America, and a nomination from the Writers Guild of America for Esaretin Bedeli (1994). He won the Humanitas Prize, the PEN Center USA West Award, and the Scriptor Award for his screenplay of "The Shawshank Redemption". For "The Green Mile", he won the Broadcast Film Critics prize for his screenplay adaptation, and two Peoples Choice Awards in the Best Dramatic Film and Best Picture categories. Majestic (2001), starring Jim Carrey, was released in December 2001. He executive-produced the thriller, Tetikçinin Gecesi (2004), for DreamWorks, with Michael Mann directing and Tom Cruise starring. Future produced-by projects include "Way of the Rat" at DreamWorks with Chuck Russell adapting and directing the CrossGen comic book series and "Back Roads", a Tawni ODell novel, also at DreamWorks, with Todd Field attached to direct. Darabont and his production company, "Darkwoods Productions", have an overall deal with Paramount Pictures.','Montbéliard, Doubs, France','28.01.1959');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(29,'James','Sallis','nm2201245','James Sallis was born on December 21, 1944 in Helena, Arkansas, USA. He is a writer and actor, known for Sürücü (2011), Drive (2019) and The Detectives Lover (2012).','Helena, Arkansas, USA','21.12.1944');
Insert Into PERSON(personID,firstName,lastName,imdbID,biography,birthPlace,birthDate)Values(30,'Nick','Pizzolatto','nm4446305','An award-winning novelist and short-story writer, he is the author of the collection Between Here and the Yellow Sea and the novel Galveston. He is originally from Southwest Louisiana, and taught literature at several universities, including the University of Chicago, before going into screenwriting in 2010. His fiction has been translated into French, German, Spanish, Japanese and Italian.','New Orleans, Louisiana, USA','18.10.1975');


CREATE TABLE WRITER(
	wPersonID int primary key foreign key references PERSON(personID)
);
insert into WRITER Values(20);
insert into WRITER Values(21);
insert into WRITER Values(23);
insert into WRITER Values(24);
insert into WRITER Values(25);
insert into WRITER Values(29);



CREATE TABLE DIRECTOR(
	dPersonID int primary key foreign key references PERSON(personID)
);
insert into DIRECTOR Values(20);
insert into DIRECTOR Values(21);
insert into DIRECTOR Values(22);
insert into DIRECTOR Values(24);


CREATE TABLE CREATOR(
	cPersonID int primary key foreign key references PERSON(personID)
);
insert into CREATOR Values(20);
insert into CREATOR Values(26);
insert into CREATOR Values(27);
insert into CREATOR Values(28);
insert into CREATOR Values(10);
insert into CREATOR Values(30);



CREATE TABLE ACTOR(
	aPersonID int primary key foreign key references PERSON(personID),
	gender varchar(6) check( gender in('Male', 'Female')), 
);
insert into ACTOR values(1,'Male');
insert into ACTOR values(2,'Female');
insert into ACTOR values(3,'Male');
insert into ACTOR values(4,'Male');
insert into ACTOR values(5,'Female');
insert into ACTOR values(6,'Male');
insert into ACTOR values(7,'Male');
insert into ACTOR values(8,'Male');
insert into ACTOR values(9,'Male');
insert into ACTOR values(10,'Male');
insert into ACTOR values(11,'Male');
insert into ACTOR values(12,'Female');
insert into ACTOR values(13,'Male');
insert into ACTOR values(14,'Male');
insert into ACTOR values(15,'Male');
insert into ACTOR values(16,'Male');
insert into ACTOR values(17,'Female');
insert into ACTOR values(18,'Male');
insert into ACTOR values(19,'Female');


CREATE TABLE PLAYS_IN(
	aPersonID int foreign key references ACTOR(aPersonID),
	titleID int foreign key references Title(titleID),
	characterirstName varchar(50),
	characterMiddleName varchar(50),
	characterLastName varchar(50),
	primary key(aPersonID, titleID)
);

insert into PLAYS_IN(aPersonID,titleID,characterirstName,characterLastName) values(1,1,'Martin', 'Jones');
insert into PLAYS_IN(aPersonID,titleID,characterirstName,characterLastName) values(2,2,'Roberta', 'Hoffmann');
insert into PLAYS_IN(aPersonID,titleID,characterirstName,characterLastName) values(3,3,'One', 'Eye');
insert into PLAYS_IN(aPersonID,titleID,characterirstName,characterLastName) values(4,4,'David', 'Sumner');
insert into PLAYS_IN(aPersonID,titleID,characterirstName,characterLastName) values(5,5,'Nina', 'Sayers');
insert into PLAYS_IN(aPersonID,titleID,characterirstName) values(6,6,'Cooper');
insert into PLAYS_IN(aPersonID,titleID,characterirstName) values(7,7,'Mr. Spock');
insert into PLAYS_IN(aPersonID,titleID,characterirstName,characterLastName) values(8,8,'Dale', 'Cooper');
insert into PLAYS_IN(aPersonID,titleID,characterirstName,characterLastName) values(9,9,'Rick', 'Grimes');
insert into PLAYS_IN(aPersonID,titleID,characterirstName,characterLastName) values(10,10,'Jerry', 'Seinfeld');
insert into PLAYS_IN(aPersonID,titleID,characterirstName) values(1,11,'Andrew');
insert into PLAYS_IN(aPersonID,titleID,characterirstName) values(11,12,'Sebastian');
insert into PLAYS_IN(aPersonID,titleID,characterirstName) values(11,13,'Driver');
insert into PLAYS_IN(aPersonID,titleID,characterirstName,characterLastName) values(6,14,'Ron', 'Woodrof');
insert into PLAYS_IN(aPersonID,titleID,characterirstName,characterLastName) values(12,15,'Juno', 'McGuff');
insert into PLAYS_IN(aPersonID,titleID,characterirstName,characterLastName) values(6,16,'Rust', 'Cohle');
insert into PLAYS_IN(aPersonID,titleID,characterirstName,characterLastName) values(13,17,'Stephen', 'Holder');
insert into PLAYS_IN(aPersonID,titleID,characterirstName,characterLastName) values(14,18,'John', 'Luther');
insert into PLAYS_IN(aPersonID,titleID,characterirstName) values(15,19,'David');
insert into PLAYS_IN(aPersonID,titleID,characterirstName,characterLastName) values(16,20,'Alec', 'Hardy');
insert into PLAYS_IN(aPersonID,titleID,characterirstName) values(17,6,'Brand');
insert into PLAYS_IN(aPersonID,titleID,characterirstName,characterLastName) values(18,6,'Professor', 'Brand');
insert into PLAYS_IN(aPersonID,titleID,characterirstName) values(19,6,'Murph');

CREATE TABLE WRITES_MOVIE(
	wPersonID int foreign key references WRITER(wPersonID),
	mTitleID int foreign key references MOVIE(mTitleID),
	primary key (wPersonID,mTitleID)
);
insert into WRITES_MOVIE values(20,2);
insert into WRITES_MOVIE values(20,3);
insert into WRITES_MOVIE values(21,4);
insert into WRITES_MOVIE values(23,5);
insert into WRITES_MOVIE values(24,6);
insert into WRITES_MOVIE values(25,6);
insert into WRITES_MOVIE values(29,13);



CREATE TABLE DIRECTS_MOVIE(
	dPersonID int foreign key references DIRECTOR(dPersonID),
	mTitleID int foreign key references MOVIE(mTitleID),
	primary key (dPersonID,mTitleID)
);
insert into DIRECTS_MOVIE values(20,2);
insert into DIRECTS_MOVIE values(20,3);
insert into DIRECTS_MOVIE values(21,4);
insert into DIRECTS_MOVIE values(22,5);
insert into DIRECTS_MOVIE values(24,6);
insert into DIRECTS_MOVIE values(20,13);


CREATE TABLE WRITES_EPISODE(
	wPersonID int foreign key references WRITER(wPersonID),
	episodeID int not null,
	sTitleID int not null,
	foreign key (episodeID,sTitleID)references EPISODE(episodeID,sTitleID),
	primary key (wPersonID,episodeID,sTitleID),
);

insert into WRITES_EPISODE values(20,1,1);
insert into WRITES_EPISODE values(20,2,1);
insert into WRITES_EPISODE values(20,3,1);
insert into WRITES_EPISODE values(20,4,1);
insert into WRITES_EPISODE values(20,5,1);
insert into WRITES_EPISODE values(20,6,1);
insert into WRITES_EPISODE values(20,7,1);
insert into WRITES_EPISODE values(20,8,1);
insert into WRITES_EPISODE values(20,9,1);
insert into WRITES_EPISODE values(20,10,1);



CREATE TABLE DIRECTS_EPISODE(
	dPersonID int foreign key references DIRECTOR(dPersonID),
	episodeID int not null,
	sTitleID int not null,
	foreign key (episodeID,sTitleID)references EPISODE(episodeID,sTitleID),
	primary key (dPersonID,episodeID,sTitleID),
);
insert into DIRECTS_EPISODE values(20,1,1);
insert into DIRECTS_EPISODE values(20,2,1);
insert into DIRECTS_EPISODE values(20,3,1);
insert into DIRECTS_EPISODE values(20,4,1);
insert into DIRECTS_EPISODE values(20,5,1);
insert into DIRECTS_EPISODE values(20,6,1);
insert into DIRECTS_EPISODE values(20,7,1);
insert into DIRECTS_EPISODE values(20,8,1);
insert into DIRECTS_EPISODE values(20,9,1);
insert into DIRECTS_EPISODE values(20,10,1);
	

CREATE TABLE CREATES_SERIES(
	cPersonID int foreign key references CREATOR(cPersonID),
	sTitleID int foreign key references SERIES(sTitleID),
	primary key (cPersonID, sTitleID)
);
insert into CREATES_SERIES values(20,1);
insert into CREATES_SERIES values(26,7);
insert into CREATES_SERIES values(27,8);
insert into CREATES_SERIES values(28,9);
insert into CREATES_SERIES values(10,10);
insert into CREATES_SERIES values(30,16);



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
	SigningDate date default getdate(),
	ExpirationDate date default getdate(),
	Description varchar(100),
	DistributorId int,
	BuyerId int,
	TitleId int,
	foreign key (DistributorId) REFERENCES Distributor(DistributorId),
	foreign key (BuyerId) REFERENCES Buyer(BuyerId),
	foreign key (TitleId) REFERENCES Title(TitleId),
);

INSERT INTO Contract(ContractId, SigningDate, ExpirationDate, Description, DistributorId, BuyerId, TitleId) VALUES (1, '15.12.2017','15.12.2020','3 Year renting contract for an exterior',3,1,1);
INSERT INTO Contract(ContractId, SigningDate, ExpirationDate, Description, DistributorId, BuyerId, TitleId) VALUES (2, '22.12.2017','22.12.2022','5 Year renting contract for an exterior',3,1,2);
INSERT INTO Contract(ContractId, SigningDate, Description, DistributorId, BuyerId, TitleId) VALUES (3, '15.12.2017','Full purchasing contract for an exterior',7,1,3);
INSERT INTO Contract(ContractId, SigningDate, Description, DistributorId, BuyerId, TitleId) VALUES (4, '14.02.2018','Full purchasing contract for an exterior',9,1,4);
INSERT INTO Contract(ContractId, SigningDate, Description, DistributorId, BuyerId, TitleId) VALUES (5, '10.10.2019','Full purchasing contract for an exterior',9,1,5);
INSERT INTO Contract(ContractId, SigningDate, ExpirationDate, Description, DistributorId, BuyerId, TitleId) VALUES (6, '15.12.2017','15.12.2020','3 Year renting contract for an original',1,5,6);
INSERT INTO Contract(ContractId, SigningDate, ExpirationDate, Description, DistributorId, BuyerId, TitleId) VALUES (7, '22.12.2017','22.12.2022','5 Year renting contract for an original',1,4,7);
INSERT INTO Contract(ContractId, SigningDate, Description, DistributorId, BuyerId, TitleId) VALUES (8, '15.12.2017','Full purchasing contract for an original',1,2,8);
INSERT INTO Contract(ContractId, SigningDate, Description, DistributorId, BuyerId, TitleId) VALUES (9, '14.02.2018','Full purchasing contract for an original',1,9,9);
INSERT INTO Contract(ContractId, SigningDate, Description, DistributorId, BuyerId, TitleId) VALUES (10, '10.10.2019','Full purchasing contract for an original',1,5,10);

--USER INTERFACE SECTION
CREATE TABLE _User (
	UserId int primary key,
	UserName varchar(50) unique,
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
select pr.UserID as 'UserId',f.FullName as 'Name', mp.MembershipPlanName as 'Plan', mp.Description as 'Plan Description', ad.AddonName as 'Add-on', ad.Description as 'Add-on Description', pr.PaymentDate as 'Date', a.Amount as 'Monthly Fee'
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
	select @id=PaymentRecordId from inserted;
	exec CalculateMembershipAmount @id, @tempamount OUTPUT;
    INSERT INTO Amounts values(@id,@tempamount);
    
END;

--test trigger2
Go 
select * from Amounts;
INSERT INTO Payment_Record(PaymentRecordId, PaymentMethod, PaymentDate, CardInfo, UserID, MembershipPlanId, AddonId) VALUES (11, 'Credit Card', GETDATE(), '4578456256434173;05/23;245',11,3,5);
select * from Amounts;



