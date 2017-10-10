
/* Drop Tables */

DROP TABLE tb_game CASCADE CONSTRAINTS;
DROP TABLE tb_player CASCADE CONSTRAINTS;
DROP TABLE tb_team CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE tb_game
(
	game_date date NOT NULL,
	homeTeamName varchar2(40) NOT NULL references tb_team(team_name) on delete cascade,
	awayTeamName varchar2(40) NOT NULL references tb_team(team_name) on delete cascade,
	homeTeamScore number,
	awayTeamScore number,
	stadium varchar2(40),
	PRIMARY KEY (game_date, homeTeamName, awayTeamName)
);


 CREATE TABLE TB_PLAYER 
   (	
    PLAYER VARCHAR2(30 BYTE), 
	GAME_COUNT NUMBER(3,0), 
	P_GOAL NUMBER(3,0), 
	P_ASSIST NUMBER(3,0), 
	TEAM VARCHAR2(30 BYTE) references tb_team(team_name) on delete cascade, 
	P_NO NUMBER(3,0), 
	POSITION VARCHAR2(30 BYTE), 
	AGE NUMBER(3,0), 
	HEIGHT NUMBER(3,0), 
	WEIGHT NUMBER(3,0), 
	NATIONALITY VARCHAR2(40 BYTE),
	primary key (player)
   );
	
CREATE TABLE tb_team
(
	team_name varchar2(40) NOT NULL,
	team_name_kr varchar2(50),
	lastResult varchar2(20),
	teamRankingGroup varchar2(40),
	teamCode varchar2(20),
	gainGoal number,
	gameCount number,
	gainPoint number,
	foul number,
	lost number,
	won number,
	rank number,
	drawn number,
	PRIMARY KEY (team_name)
);

player varchar2(30) NOT NULL,
	nationality varchar2(30),
	position varchar2(20),
	goal number,
	assist number,
	team_name varchar2(40) NOT NULL references tb_team(team_name) on delete cascade,

select * from tb_player;


Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Bellerín Héctor',33,1,4,'Arsenal',24,'D',21,178,74,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Cazorla Santi',8,2,2,'Arsenal',19,'M',31,171,66,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Cech Petr',35,0,0,'Arsenal',33,'G',34,196,90,'Czech Republic');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Coquelin Francis',29,2,1,'Arsenal',34,'M',25,178,74,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Debuchy Mathieu',1,0,0,'Arsenal',2,'D',30,176,76,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Elneny Mohamed',14,0,0,'Arsenal',35,'M',24,181,71,'Egypt');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gabriel',19,0,1,'Arsenal',5,'D',25,186,72,'Brazil');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gibbs Kieran',11,0,0,'Arsenal',3,'D',26,181,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Giroud Olivier',29,0,1,'Arsenal',12,'F',29,194,88,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Holding Rob',9,12,3,'Arsenal',16,'D',20,183,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Iwobi Alex',26,0,0,'Arsenal',17,'F',20,176,72,'Nigeria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Jenkinson Carl',1,3,4,'Arsenal',25,'D',24,186,77,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Koscielny Laurent',33,2,0,'Arsenal',6,'D',30,186,75,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Maitland-Niles Ainsley',1,0,0,'Arsenal',55,'M',18,178,71,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Martínez Damián',2,0,0,'Arsenal',26,'G',23,194,85,'Argentina');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mertesacker Per',1,0,0,'Arsenal',4,'D',31,199,90,'Germany');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Monreal Nacho',36,0,2,'Arsenal',18,'D',30,178,72,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mustafi Shkodran',26,2,2,'Arsenal',20,'D',24,183,82,'Germany');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ospina David',2,0,0,'Arsenal',13,'G',27,183,79,'Colombia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Oxlade-Chamberlain Alex',29,2,7,'Arsenal',15,'M',22,181,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ozil Mesut',33,8,10,'Arsenal',11,'M',27,181,76,'Germany');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Pérez Lucas',11,1,0,'Arsenal',9,'F',27,181,78,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ramsey Aaron',23,1,4,'Arsenal',8,'M',25,178,76,'Wales');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Reine-Adelaide Jeff',38,24,10,'Arsenal',31,'M',18,183,75,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Sánchez Alexis',28,10,2,'Arsenal',7,'F',27,171,70,'Chile');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Walcott Theo',16,2,2,'Arsenal',14,'F',27,176,68,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Welbeck Danny',29,0,2,'Arsenal',23,'F',25,183,73,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Xhaka Granit',32,2,2,'Arsenal',29,'M',23,186,82,'Switzerland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Afobe Benik',31,6,3,'Bournemouth',9,'F',23,183,78,'Congo, the Democratic Republic of the');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Allsop Ryan',1,0,0,'Bournemouth',21,'G',24,188,80,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Arter Harry',35,1,4,'Bournemouth',8,'M',26,176,70,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Boruc Artur',35,0,0,'Bournemouth',1,'G',36,194,87,'Poland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Cargill Baily',1,0,0,'Bournemouth',38,'D',20,188,87,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Cook Lewis',6,0,2,'Bournemouth',18,'M',19,176,71,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Cook Steve',38,2,0,'Bournemouth',3,'D',25,186,82,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Daniels Charlie',34,4,3,'Bournemouth',11,'D',29,178,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Federici Adam',2,0,0,'Bournemouth',23,'G',31,188,90,'Australia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Francis Simon',34,0,1,'Bournemouth',2,'D',31,183,90,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fraser Ryan',28,3,5,'Bournemouth',24,'M',22,163,70,'Scotland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gosling Dan',27,2,0,'Bournemouth',4,'M',26,183,79,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gradel Max-Alain',11,0,0,'Bournemouth',10,'M',28,178,70,'Cote d''''Ivoire');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ibe Jordon',25,0,0,'Bournemouth',33,'M',20,176,81,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('King Joshua',36,16,2,'Bournemouth',17,'F',24,181,74,'Norway');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mings Tyrone',7,0,0,'Bournemouth',26,'D',23,191,77,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mousset Lys',11,0,0,'Bournemouth',31,'M',20,183,80,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Pugh Marc',21,2,2,'Bournemouth',7,'M',29,181,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ramsdale Aaron',0,0,0,'Bournemouth',12,'G',18,170,80,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Smith Adam',36,1,5,'Bournemouth',15,'D',25,181,78,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Smith Brad',5,0,0,'Bournemouth',14,'D',22,178,70,'Australia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Stanislas Junior',21,7,5,'Bournemouth',19,'M',26,183,76,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Surman Andrew',22,0,1,'Bournemouth',6,'M',29,178,73,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Surridge Sam',0,0,0,'Bournemouth',44,'F',17,180,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Wilshere Jack',29,0,2,'Bournemouth',32,'M',24,171,65,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Wilson Callum',20,6,0,'Bournemouth',13,'F',24,181,66,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Worthington Matt',1,0,0,'Bournemouth',58,'M',0,180,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Agyei Daniel',3,0,0,'Burnley',32,'F',19,183,77,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Arfield Scott',31,1,0,'Burnley',37,'M',27,178,70,'Canada');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Barnes Ashley',28,6,2,'Burnley',10,'F',26,186,77,'Austria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Barton Joey',14,1,0,'Burnley',19,'M',33,181,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Boyd George',36,2,1,'Burnley',21,'M',30,186,79,'Scotland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Brady Robbie',14,1,2,'Burnley',12,'M',24,176,69,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Darikwa Tendayi',0,0,0,'Burnley',27,'D',24,188,77,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Defour Steven',21,1,3,'Burnley',16,'M',28,173,65,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Flanagan Jon',6,0,0,'Burnley',4,'D',23,181,79,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gray Andre',32,9,3,'Burnley',7,'F',25,178,83,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gudmundsson Jóhann',20,1,2,'Burnley',25,'M',25,186,79,'Iceland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Heaton Tom',35,0,0,'Burnley',1,'G',30,188,85,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Hendrick Jeff',32,2,1,'Burnley',13,'M',24,186,79,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Keane Michael',35,2,1,'Burnley',5,'D',23,191,82,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Long Kevin',3,0,0,'Burnley',28,'D',25,188,83,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Lowton Matthew',36,0,2,'Burnley',2,'D',27,181,78,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Marney Dean',21,1,2,'Burnley',8,'M',32,183,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mee Ben',34,1,0,'Burnley',6,'D',26,181,74,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Pope Nick',0,0,0,'Burnley',29,'G',24,191,76,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Robinson Paul',3,0,0,'Burnley',17,'G',36,194,90,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Tarkowski James',19,0,0,'Burnley',26,'D',23,186,81,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Vokes Sam',37,10,3,'Burnley',9,'F',26,186,90,'Wales');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ward Stephen',37,1,1,'Burnley',23,'D',30,183,82,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Westwood Ashley',9,0,0,'Burnley',18,'M',26,171,81,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Aina Ola',3,0,0,'Chelsea',34,'D',19,176,65,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ake Nathan',12,3,1,'Chelsea',6,'D',21,181,75,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Alonso Marcos',31,6,3,'Chelsea',3,'D',25,188,81,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Azpilicueta César',38,1,4,'Chelsea',28,'D',26,178,75,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Batshuayi Michy',20,5,1,'Chelsea',23,'F',22,183,78,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Begovic Asmir',2,0,0,'Chelsea',1,'G',29,199,83,'Bosnia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Cahill Gary',37,6,0,'Chelsea',24,'D',30,194,86,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Chalobah Nathaniel',10,0,1,'Chelsea',29,'M',21,186,80,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Costa Diego',35,20,7,'Chelsea',19,'F',27,188,85,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Courtois Thibaut',36,0,0,'Chelsea',13,'G',24,199,91,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('David Luiz',33,1,0,'Chelsea',30,'D',29,188,84,'Brazil');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Eduardo',0,0,0,'Chelsea',37,'G',33,188,88,'Portugal');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fàbregas Cesc',29,5,12,'Chelsea',4,'M',29,176,74,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Hazard Eden',36,16,5,'Chelsea',10,'M',25,173,74,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Kanté N''''Golo',13,0,0,'Chelsea',7,'M',25,171,68,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Kenedy',35,1,1,'Chelsea',16,'F',20,183,77,'Brazil');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Loftus-Cheek Ruben',2,0,0,'Chelsea',14,'M',20,191,83,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Matic Nemanja',6,0,0,'Chelsea',21,'M',27,194,84,'Serbia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Moses Victor',35,1,7,'Chelsea',15,'M',25,178,76,'Nigeria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Musonda Charly',34,3,2,'Chelsea',35,'M',19,173,65,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Pedro',35,9,9,'Chelsea',11,'F',28,168,62,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Solanke Dominic',0,0,0,'Chelsea',41,'F',18,186,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Terry John',9,1,0,'Chelsea',26,'D',35,188,90,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Willian',34,8,2,'Chelsea',22,'M',27,176,75,'Brazil');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Zouma Kurt',9,0,1,'Chelsea',5,'D',21,191,92,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Appiah Kwesi',0,0,0,'Crystal Palace',32,'F',25,181,80,'Ghana');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Benteke Christian',36,15,2,'Crystal Palace',17,'F',25,191,83,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Benteke Jonathan',1,0,0,'Crystal Palace',15,'F',21,186,77,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Cabaye Yohan',32,4,3,'Crystal Palace',7,'M',30,176,71,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Campbell Fraizer',12,1,0,'Crystal Palace',9,'F',28,173,83,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Dann Scott',23,3,1,'Crystal Palace',6,'D',29,196,78,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Delaney Damien',30,0,2,'Crystal Palace',27,'D',34,191,89,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Dreher Luke',0,0,0,'Crystal Palace',36,'F',17,183,76,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Flamini Mathieu',10,0,0,'Crystal Palace',4,'M',32,178,67,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fryers Zeki',8,0,1,'Crystal Palace',19,'D',23,161,80,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Hennessey Wayne',29,0,0,'Crystal Palace',13,'G',29,199,90,'Wales');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Kaikai Sullay',1,0,0,'Crystal Palace',25,'M',20,183,73,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Kelly Martin',29,0,2,'Crystal Palace',34,'D',26,191,77,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ledley Joe',18,1,0,'Crystal Palace',16,'M',29,183,73,'Wales');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Lee Chung-Young',15,0,1,'Crystal Palace',14,'M',28,181,69,'South Korea');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mandanda Steve',9,0,0,'Crystal Palace',30,'G',31,186,82,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('McArthur James',29,5,3,'Crystal Palace',18,'M',28,178,64,'Scotland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Milivojevic Luka',14,2,0,'Crystal Palace',28,'M',25,183,75,'Serbia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Phillips Michael',0,0,0,'Crystal Palace',45,'M',18,180,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Puncheon Jason',36,0,5,'Crystal Palace',42,'M',30,173,71,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Remy Loïc',5,0,0,'Crystal Palace',8,'F',29,183,66,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Sakho Mamadou',8,0,0,'Crystal Palace',12,'D',26,188,80,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Sako Bakary',7,0,0,'Crystal Palace',26,'M',28,183,90,'Mali');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Schlupp Jeff',19,0,0,'Crystal Palace',31,'F',23,178,72,'Ghana');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Souaré Pape',3,0,0,'Crystal Palace',23,'D',26,178,68,'Senegal');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Speroni Julián',0,0,0,'Crystal Palace',1,'G',37,186,87,'Argentina');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Tomkins James',24,3,0,'Crystal Palace',5,'D',27,194,74,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Townsend Andros',36,3,4,'Crystal Palace',10,'M',25,181,77,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Van Aanholt Patrick',32,5,1,'Crystal Palace',3,'D',25,176,67,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Wan-Bissaka Aaron',0,0,0,'Crystal Palace',46,'M',18,180,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ward Joel',38,0,1,'Crystal Palace',2,'D',26,188,83,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Wickham Connor',8,2,0,'Crystal Palace',21,'F',23,188,90,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Wynter Ben',0,0,0,'Crystal Palace',44,'D',18,186,76,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Zaha Wilfried',35,7,9,'Crystal Palace',11,'M',23,181,66,'Cote d''''Ivoire');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Baines Leighton',32,2,3,'Everton',3,'D',31,171,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Barkley Ross',36,5,8,'Everton',8,'M',22,186,76,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Barry Gareth',33,2,1,'Everton',18,'M',35,183,79,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Besic Muhamed',0,0,0,'Everton',21,'M',23,178,78,'Bosnia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Bolasie Yannick',14,1,4,'Everton',14,'F',27,186,84,'Congo, the Democratic Republic of the');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Calvert-Lewin Dominic',11,1,0,'Everton',29,'F',19,176,64,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Coleman Seamus',27,0,2,'Everton',23,'D',27,194,67,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Davies Tom',26,4,3,'Everton',26,'M',18,181,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Dowell Kieran',24,2,3,'Everton',28,'M',18,176,59,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Funes Mori Ramiro',11,0,0,'Everton',25,'D',25,188,77,'Argentina');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gueye Idrissa',23,0,1,'Everton',17,'M',26,176,72,'Senegal');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Hewelt Mateusz',33,1,1,'Everton',41,'G',19,183,64,'Poland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Holgate Mason',18,0,1,'Everton',30,'D',19,181,63,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Jagielka Phil',27,3,2,'Everton',6,'D',33,181,87,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Kenny Jonjoe',1,0,0,'Everton',43,'D',19,176,67,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Koné Arouna',6,0,0,'Everton',9,'F',32,181,74,'Cote d''''Ivoire');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Lennon Aaron',11,0,1,'Everton',12,'M',29,166,63,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Lookman Ademola',8,1,0,'Everton',31,'F',18,176,78,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Lukaku Romelu',37,25,6,'Everton',10,'F',23,191,100,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('McCarthy James',12,1,1,'Everton',16,'M',25,181,72,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mirallas Kevin',35,4,7,'Everton',11,'F',28,183,72,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Pennington Matthew',16,0,0,'Everton',38,'D',21,186,77,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Robles Joel',3,1,0,'Everton',1,'G',26,196,90,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Schneiderlin Morgan',20,0,1,'Everton',2,'M',26,181,75,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Stekelenburg Maarten',17,1,0,'Everton',22,'G',33,199,92,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Valencia Enner',19,0,0,'Everton',19,'F',26,176,74,'Ecuador');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Williams Ashley',24,3,1,'Everton',5,'D',31,183,71,'Wales');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Williams Joe',36,1,3,'Everton',46,'M',20,178,66,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Batty Daniel',0,0,0,'Hull City',30,'M',18,175,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Bowen Jarrod',7,0,0,'Hull City',29,'F',19,176,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Clucas Sam',37,3,1,'Hull City',11,'M',25,178,74,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Davies Curtis',26,0,2,'Hull City',6,'D',31,188,76,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Dawson Michael',22,3,0,'Hull City',21,'D',32,188,79,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Diomande Adama',22,2,0,'Hull City',20,'F',26,181,75,'Norway');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Elabdellaoui Omar',8,0,0,'Hull City',14,'D',24,178,73,'Norway');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Elmohamady Ahmed',33,0,2,'Hull City',27,'M',28,183,75,'Egypt');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Evandro',11,0,0,'Hull City',40,'M',29,178,62,'Brazil');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Grosicki Kamil',15,0,3,'Hull City',17,'M',28,181,78,'Poland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Henriksen Markus',15,0,0,'Hull City',22,'M',23,188,85,'Norway');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Hernández Abel',24,4,3,'Hull City',9,'F',25,186,70,'Uruguay');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Huddlestone Tom',31,1,0,'Hull City',8,'M',29,188,71,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Jakupovic Eldin',22,0,0,'Hull City',16,'G',31,191,83,'Switzerland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Keane Will',5,0,0,'Hull City',19,'F',23,188,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Lenihan Brian',0,0,0,'Hull City',31,'D',22,178,76,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Luer Greg',0,0,0,'Hull City',32,'F',21,181,73,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Maguire Harry',29,2,2,'Hull City',5,'D',23,188,79,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Maloney Shaun',9,1,2,'Hull City',15,'M',33,171,70,'Scotland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Markovic Lazar',12,2,0,'Hull City',50,'M',22,176,65,'Serbia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Marshall David',16,0,0,'Hull City',23,'G',31,191,83,'Scotland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mason Ryan',16,1,0,'Hull City',25,'M',25,176,68,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mbokani Dieumerci',12,0,1,'Hull City',18,'F',30,186,75,'Congo, the Democratic Republic of the');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Meyler David',0,0,0,'Hull City',7,'M',27,188,81,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('N''''Diaye Alfred',20,1,0,'Hull City',10,'M',26,188,82,'Senegal');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Niasse Oumar',15,1,0,'Hull City',24,'F',26,183,82,'Senegal');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Odubajo Moses',0,0,0,'Hull City',2,'D',22,178,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Olley Greg',0,0,0,'Hull City',36,'M',20,178,66,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ranocchia Andrea',16,2,2,'Hull City',13,'D',28,191,81,'Italy');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Robertson Andrew',33,1,2,'Hull City',3,'D',22,178,64,'Scotland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Tymon Josh',5,0,0,'Hull City',28,'D',17,178,74,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Albrighton Marc',33,2,6,'Leicester City',11,'M',26,176,67,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Amartey Daniel',24,1,1,'Leicester City',13,'M',21,183,78,'Ghana');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Benalouane Yohan',11,0,0,'Leicester City',29,'D',29,186,79,'Tunisia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Chilwell Ben',12,1,0,'Leicester City',3,'D',19,178,71,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Drinkwater Daniel',29,1,1,'Leicester City',4,'M',26,178,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fuchs Christian',36,2,4,'Leicester City',28,'D',30,186,80,'Austria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gray Demarai',30,1,3,'Leicester City',22,'M',20,178,66,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Hamer Ben',0,0,0,'Leicester City',12,'G',28,194,78,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Huth Robert',33,2,2,'Leicester City',6,'D',31,191,88,'Germany');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Kapustka Bartosz',0,0,0,'Leicester City',14,'M',19,178,67,'Poland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('King Andy',1,0,0,'Leicester City',10,'M',27,183,74,'Wales');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mahrez Riyad',36,6,3,'Leicester City',26,'M',25,178,62,'Algeria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mendy Nampalys',4,0,0,'Leicester City',24,'M',24,168,68,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Moore Elliott',0,0,0,'Leicester City',36,'D',19,175,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Morgan Wes',27,1,0,'Leicester City',5,'D',32,186,93,'Jamaica');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Musa Ahmed',21,2,0,'Leicester City',7,'F',23,176,65,'Nigeria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ndidi Onyinye',17,2,1,'Leicester City',25,'M',19,186,81,'Nigeria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Okazaki Shinji',30,3,1,'Leicester City',20,'F',30,176,70,'Japan');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Schmeichel Kasper',19,0,0,'Leicester City',1,'G',29,186,76,'Denmark');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Simpson Danny',30,0,0,'Leicester City',17,'D',29,178,78,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Slimani Islam',35,0,2,'Leicester City',19,'F',28,188,79,'Algeria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ulloa Leonardo',23,7,4,'Leicester City',23,'F',29,186,75,'Argentina');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Vardy Jamie',16,1,0,'Leicester City',9,'F',29,178,76,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Wague Molla',35,13,5,'Leicester City',18,'D',25,191,87,'Mali');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Wasilewski Marcin',1,0,0,'Leicester City',27,'D',36,186,88,'Poland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Zieler Ron-Robert',9,0,0,'Leicester City',21,'G',27,188,73,'Germany');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Alexander-Arnold Trent',7,0,0,'Liverpool',66,'D',17,178,68,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Brewster Rhian',0,0,0,'Liverpool',57,'F',16,180,78,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Can Emre',32,5,2,'Liverpool',23,'M',22,183,82,'Germany');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Clyne Nathaniel',37,0,2,'Liverpool',2,'D',25,176,67,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Coutinho Philippe',31,13,7,'Liverpool',10,'M',24,171,68,'Brazil');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ejaria Ovie',2,0,0,'Liverpool',53,'M',18,183,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Firmino Roberto',35,11,7,'Liverpool',11,'F',24,181,76,'Brazil');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gomez Joe',0,0,0,'Liverpool',12,'D',19,186,77,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Grujic Marko',5,0,0,'Liverpool',16,'M',20,194,82,'Serbia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Henderson Jordan',24,1,4,'Liverpool',14,'M',26,183,67,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ings Danny',0,0,0,'Liverpool',28,'F',23,178,73,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Karius Loris',10,0,0,'Liverpool',1,'G',23,188,75,'Germany');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Klavan Ragnar',20,0,0,'Liverpool',17,'D',30,188,85,'Estonia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Lallana Adam',31,8,7,'Liverpool',20,'M',28,173,73,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Lovren Dejan',29,2,1,'Liverpool',6,'D',27,188,84,'Croatia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Lucas Leiva',24,0,3,'Liverpool',21,'M',29,178,73,'Brazil');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mané Sadio',27,13,5,'Liverpool',19,'F',24,176,69,'Senegal');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Manninger Alexander',0,0,0,'Liverpool',13,'G',39,188,85,'Austria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Matip Joel',29,1,0,'Liverpool',32,'D',24,196,90,'Cameroon');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mignolet Simon',28,0,0,'Liverpool',22,'G',28,194,87,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Milner James',36,7,3,'Liverpool',7,'M',30,176,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Moreno Alberto',12,0,1,'Liverpool',18,'D',24,171,65,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ojo Sheyi',0,0,0,'Liverpool',54,'M',19,178,64,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Origi Divock',34,7,4,'Liverpool',27,'F',21,186,75,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Randall Connor',0,0,0,'Liverpool',56,'D',20,181,76,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Stewart Kevin',4,0,0,'Liverpool',35,'M',22,171,73,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Sturridge Daniel',20,3,1,'Liverpool',15,'F',26,188,76,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Wijnaldum Georginio',36,6,9,'Liverpool',5,'M',25,176,74,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Williams Jordan',0,0,0,'Liverpool',49,'M',20,183,77,'Wales');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Wilson Harry',0,0,0,'Liverpool',59,'M',19,173,70,'Wales');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Woodburn Ben',5,0,0,'Liverpool',58,'F',16,176,72,'Wales');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Adarabioyo Tosin',0,0,0,'Manchester City',53,'D',18,188,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Agüero Sergio',31,20,3,'Manchester City',10,'F',28,178,76,'Argentina');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Bravo Claudio',22,0,0,'Manchester City',1,'G',33,181,73,'Chile');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Caballero Willy',17,0,0,'Manchester City',13,'G',34,188,79,'Argentina');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Clichy Gael',25,1,0,'Manchester City',22,'D',30,171,70,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('De Bruyne Kevin',36,6,18,'Manchester City',17,'M',25,176,65,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Delph Fabian',7,1,0,'Manchester City',18,'M',26,191,83,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fernandinho',32,2,1,'Manchester City',25,'M',31,176,68,'Brazil');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fernando',15,0,0,'Manchester City',6,'M',28,186,75,'Brazil');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gabriel Jesus',10,7,4,'Manchester City',33,'F',19,188,81,'Brazil');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('García Aleix',4,0,0,'Manchester City',75,'M',19,188,82,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gundogan Ilkay',10,3,1,'Manchester City',8,'M',25,183,82,'Germany');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gunn Angus',0,0,0,'Manchester City',54,'G',20,178,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Iheanacho Kelechi',20,4,3,'Manchester City',72,'F',19,178,66,'Nigeria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Kolarov Aleksandar',29,1,1,'Manchester City',11,'D',30,191,81,'Serbia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Kompany Vincent',11,3,0,'Manchester City',4,'D',30,178,64,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Navas Jesús',24,0,0,'Manchester City',15,'M',30,178,74,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Nolito',19,4,2,'Manchester City',9,'F',29,176,67,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Otamendi Nicolás',30,1,1,'Manchester City',30,'D',28,183,78,'Argentina');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Patching Will',0,0,0,'Manchester City',85,'M',17,186,79,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Sagna Bacary',17,0,1,'Manchester City',3,'D',33,178,71,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Sané Leroy',26,5,3,'Manchester City',19,'M',20,178,70,'Germany');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Silva David',34,4,7,'Manchester City',21,'M',30,186,80,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Sterling Raheem',33,7,6,'Manchester City',7,'M',21,178,66,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Stones John',27,0,0,'Manchester City',24,'D',22,194,78,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Touré Yaya',25,5,0,'Manchester City',42,'M',33,191,88,'Cote d''''Ivoire');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Zabaleta Pablo',20,1,1,'Manchester City',5,'D',31,178,67,'Argentina');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Bailly Eric',25,0,0,'Manchester United',3,'D',22,183,74,'Cote d''''Ivoire');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Blind Daley',23,1,2,'Manchester United',17,'D',26,178,62,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Carrick Michael',23,0,0,'Manchester United',16,'M',34,168,68,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Darmian Matteo',18,0,0,'Manchester United',36,'D',26,175,75,'Italy');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('De Gea David',35,0,0,'Manchester United',1,'G',25,186,93,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Dearnley Zach',0,0,0,'Manchester United',48,'F',17,176,65,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fellaini Marouane',28,1,0,'Manchester United',27,'M',28,186,81,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fosu-Mensah Timothy',4,0,0,'Manchester United',24,'D',18,176,70,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gomes Angel',1,0,0,'Manchester United',47,'M',15,186,76,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Harrop Joshua',1,1,0,'Manchester United',46,'M',20,178,78,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Herrera Ander',31,1,6,'Manchester United',21,'M',26,188,79,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ibrahimovic Zlatan',28,17,5,'Manchester United',9,'F',34,186,75,'Sweden');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Johnstone Sam',0,0,0,'Manchester United',32,'G',23,178,76,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Jones Phil',18,0,0,'Manchester United',4,'D',24,191,87,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Lingard Jesse',25,1,2,'Manchester United',14,'M',23,186,88,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Martial Anthony',25,4,6,'Manchester United',11,'F',20,188,73,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mata Juan',25,6,3,'Manchester United',8,'M',28,178,68,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mitchell Demetri',0,0,0,'Manchester United',35,'F',19,180,78,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mkhitaryan Henrikh',24,4,1,'Manchester United',22,'M',27,183,82,'Armenia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('O''''Hara Kieran',0,0,0,'Manchester United',45,'G',20,176,67,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Pereira Joel',1,0,0,'Manchester United',40,'G',20,171,68,'Portugal');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Pogba Paul',30,5,4,'Manchester United',6,'M',23,183,75,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Rashford Marcus',32,5,1,'Manchester United',19,'F',18,181,76,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Rojo Marcos',21,1,0,'Manchester United',5,'D',26,186,77,'Argentina');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Romero Sergio',2,0,0,'Manchester United',20,'G',29,194,82,'Argentina');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Rooney Wayne',25,5,5,'Manchester United',10,'F',30,183,67,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Shaw Luke',11,0,1,'Manchester United',23,'D',21,178,73,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Smalling Chris',18,1,1,'Manchester United',12,'D',26,188,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Tuanzebe Axel',4,0,0,'Manchester United',38,'D',18,188,85,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Valencia Antonio',28,1,3,'Manchester United',25,'M',30,173,73,'Ecuador');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Willock Matty',0,0,0,'Manchester United',42,'M',19,188,84,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Young Ashley',12,0,1,'Manchester United',18,'M',31,178,73,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ayala Daniel',14,1,0,'Middlesbrough',4,'D',25,176,69,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Bamford Patrick',14,1,0,'Middlesbrough',20,'F',22,188,85,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Barragán Antonio',26,0,0,'Middlesbrough',17,'D',29,196,90,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Chambers Calum',25,2,1,'Middlesbrough',25,'D',21,194,87,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Clayton Adam',34,0,2,'Middlesbrough',8,'M',27,176,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('De Roon Marten',33,4,0,'Middlesbrough',14,'M',25,171,65,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Downing Stewart',30,1,3,'Middlesbrough',19,'M',31,178,64,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Espinoza Bernardo',11,0,0,'Middlesbrough',5,'D',27,186,75,'Colombia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fabio',24,0,0,'Middlesbrough',2,'D',26,181,76,'Brazil');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fischer Viktor',13,0,3,'Middlesbrough',11,'M',22,171,73,'Denmark');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Forshaw Adam',34,0,1,'Middlesbrough',34,'M',24,188,76,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Friend George',24,0,2,'Middlesbrough',3,'D',28,176,74,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fry Dael',0,0,0,'Middlesbrough',22,'D',18,183,77,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gestede Rudy',16,1,0,'Middlesbrough',29,'F',27,173,70,'Benin');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gibson Ben',38,1,1,'Middlesbrough',6,'D',23,176,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Guedioura Adlène',17,0,1,'Middlesbrough',27,'M',30,196,90,'Algeria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Guzan Brad',10,0,0,'Middlesbrough',12,'G',31,178,74,'United States');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Husband James',1,0,0,'Middlesbrough',40,'D',22,176,76,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Konstantopoulos Dimitrios',0,0,0,'Middlesbrough',1,'G',37,181,71,'Greece');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Leadbitter Grant',13,1,0,'Middlesbrough',7,'M',30,186,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Negredo Álvaro',36,9,4,'Middlesbrough',10,'F',30,181,70,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ramírez Gastón',24,2,3,'Middlesbrough',21,'M',25,194,88,'Uruguay');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Stuani Cristhian',23,4,0,'Middlesbrough',18,'F',29,183,75,'Uruguay');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Traoré Adama',27,0,1,'Middlesbrough',37,'M',20,176,72,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Valdés Víctor',28,0,0,'Middlesbrough',26,'G',34,186,77,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Austin Charlie',15,6,1,'Southampton',10,'F',27,186,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Bertrand Ryan',28,2,4,'Southampton',21,'D',26,178,71,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Boufal Sofiane',24,1,0,'Southampton',19,'M',22,194,85,'Morocco');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Cáceres Martín',1,0,0,'Southampton',12,'D',29,199,90,'Uruguay');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Cédric',30,0,0,'Southampton',2,'D',24,178,72,'Portugal');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Clasie Jordy',32,0,3,'Southampton',4,'M',25,183,82,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Davis Steven',33,0,3,'Southampton',8,'M',31,183,79,'Northern Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Forster Fraser',38,0,0,'Southampton',1,'G',28,181,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gabbiadini Manolo',11,4,0,'Southampton',20,'F',24,181,76,'Italy');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gardos Florin',0,0,0,'Southampton',5,'D',27,181,78,'Romania');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Hassen Mouez',0,0,0,'Southampton',40,'G',21,178,76,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Hesketh Jake',0,0,0,'Southampton',42,'M',20,183,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Hojbjerg Pierre-Emile',22,0,0,'Southampton',23,'M',20,171,70,'Denmark');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Isgrove Lloyd',0,0,0,'Southampton',27,'M',23,176,68,'Wales');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Lewis Harry',0,0,0,'Southampton',41,'G',18,183,73,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Long Shane',32,3,1,'Southampton',7,'F',29,186,82,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Martina Cuco',9,0,0,'Southampton',15,'D',26,183,78,'Curacao');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('McCarthy Alex',0,0,0,'Southampton',13,'G',26,188,80,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('McQueen Sam',13,0,0,'Southampton',38,'D',21,176,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Olomola Olufela',0,0,0,'Southampton',32,'F',18,194,87,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Pied Jérémy',4,0,0,'Southampton',26,'D',27,188,87,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Redmond Nathan',37,7,1,'Southampton',22,'M',22,176,71,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Reed Harrison',3,0,0,'Southampton',18,'M',21,186,82,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Rodríguez Jay',24,5,2,'Southampton',9,'F',26,178,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Romeu Oriol',35,1,0,'Southampton',14,'M',24,188,90,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Sims Josh',7,0,1,'Southampton',39,'M',19,183,90,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Stephens Jack',17,0,1,'Southampton',24,'D',22,163,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Tadic Dusan',33,3,5,'Southampton',11,'M',27,183,79,'Serbia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Targett Matt',5,0,0,'Southampton',33,'D',20,178,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Taylor Stuart',0,0,0,'Southampton',28,'G',35,176,81,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Van Dijk Virgil',21,1,0,'Southampton',17,'D',25,181,74,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ward-Prowse James',30,4,4,'Southampton',16,'M',21,191,77,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Yoshida Maya',23,1,0,'Southampton',3,'D',27,183,80,'Japan');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Adam Charlie',24,1,3,'Stoke City',16,'M',30,181,72,'Scotland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Afellay Ibrahim',12,0,0,'Stoke City',14,'M',30,170,80,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Allen Joe',36,6,2,'Stoke City',4,'M',26,196,90,'Wales');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Arnautovic Marko',32,6,5,'Stoke City',10,'F',27,178,74,'Austria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Bachmann Daniel',0,0,0,'Stoke City',35,'G',22,176,76,'Austria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Bardsley Phil',15,0,0,'Stoke City',2,'D',31,181,71,'Scotland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Berahino Saido',17,0,0,'Stoke City',9,'F',22,186,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Bony Wilfried',10,2,0,'Stoke City',12,'F',27,181,70,'Cote d''''Ivoire');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Butland Jack',5,0,0,'Stoke City',1,'G',23,194,88,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Cameron Geoff',19,0,1,'Stoke City',20,'D',31,183,75,'United States');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Crouch Peter',27,7,2,'Stoke City',25,'F',35,176,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Diouf Mame',27,1,2,'Stoke City',18,'F',28,186,77,'Senegal');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Edwards Tom',0,0,0,'Stoke City',72,'D',17,186,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Given Shay',5,0,0,'Stoke City',24,'G',40,178,71,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Grant Lee',28,0,0,'Stoke City',33,'G',33,194,85,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Imbula Giannelli',12,0,0,'Stoke City',21,'M',23,199,90,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ireland Stephen',0,0,0,'Stoke City',7,'M',29,178,72,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Johnson Glen',23,0,0,'Stoke City',8,'D',31,183,82,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Martins Indi Bruno',35,1,0,'Stoke City',15,'D',24,183,79,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Muniesa Marc',10,1,0,'Stoke City',5,'D',24,181,70,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ngoy Julien',5,0,0,'Stoke City',45,'F',18,181,76,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Pieters Erik',36,0,1,'Stoke City',3,'D',27,181,78,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Shaqiri Xherdan',21,4,2,'Stoke City',22,'M',24,178,76,'Switzerland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Shawcross Ryan',35,1,1,'Stoke City',17,'D',28,183,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Sobhi Ramadan',17,0,1,'Stoke City',32,'F',19,171,70,'Egypt');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Verlinden Thibaud',0,0,0,'Stoke City',55,'M',17,176,68,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Walters Jonathan',23,4,2,'Stoke City',19,'F',32,183,73,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Whelan Glenn',30,0,1,'Stoke City',6,'M',32,186,82,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Anichebe Victor',18,3,0,'Sunderland',28,'F',28,183,78,'Nigeria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Asoro Joel',1,0,0,'Sunderland',29,'F',17,188,80,'Sweden');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Borini Fabio',24,2,0,'Sunderland',9,'F',25,176,70,'Italy');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Cattermole Lee',8,0,0,'Sunderland',6,'M',28,194,87,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Defoe Jermain',37,15,2,'Sunderland',18,'F',33,188,87,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Denayer Jason',24,0,0,'Sunderland',4,'D',21,176,71,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Djilobodji Papy',18,0,0,'Sunderland',5,'D',27,186,82,'Senegal');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Embleton Elliot',0,0,0,'Sunderland',40,'M',17,178,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gibson Darron',12,0,0,'Sunderland',24,'M',28,188,90,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gooch Lynden',11,0,0,'Sunderland',46,'M',20,183,90,'United States');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Greenwood Rees',0,0,0,'Sunderland',37,'F',20,163,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Honeyman George',5,0,0,'Sunderland',39,'M',21,183,79,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Januzaj Adnan',25,0,3,'Sunderland',44,'M',21,178,70,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Jones Billy',27,1,0,'Sunderland',2,'D',29,176,81,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Khazri Wahbi',23,2,0,'Sunderland',10,'M',25,181,74,'Tunisia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Kirchhoff Jan',7,0,0,'Sunderland',27,'M',25,191,77,'Germany');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Koné Lamine',30,1,0,'Sunderland',23,'D',27,183,80,'Cote d''''Ivoire');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Larsson Sebastian',21,0,1,'Sunderland',7,'M',31,181,72,'Sweden');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ledger Michael',2,0,0,'Sunderland',43,'D',18,170,80,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Lescott Joleon',2,0,0,'Sunderland',15,'D',33,196,90,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Love Donald',12,0,1,'Sunderland',22,'D',21,178,74,'Scotland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Maja Josh',0,0,0,'Sunderland',35,'F',17,176,76,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mannone Vito',9,0,0,'Sunderland',1,'G',28,181,71,'Italy');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Manquillo Javi',20,1,0,'Sunderland',21,'D',22,186,72,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('McNair Paddy',9,0,0,'Sunderland',19,'M',21,181,70,'Northern Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mika',0,0,0,'Sunderland',12,'G',25,194,88,'Portugal');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ndong Didier',31,1,0,'Sunderland',17,'M',22,183,75,'Gabon');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('O''''Shea John',28,0,1,'Sunderland',16,'D',35,176,72,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Oviedo Bryan',16,0,0,'Sunderland',3,'D',26,186,77,'Costa Rica');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Pickford Jordan',29,0,0,'Sunderland',13,'G',22,186,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Pienaar Steven',15,0,0,'Sunderland',20,'M',34,178,71,'South Africa');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Robson Ethan',0,0,0,'Sunderland',25,'M',19,194,85,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Robson Josh',0,0,0,'Sunderland',45,'D',18,199,90,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Robson Tom',0,0,0,'Sunderland',34,'D',20,178,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Rodwell Jack',20,0,1,'Sunderland',8,'M',25,183,82,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Stryjek Maksymilian',32,5,1,'Sunderland',32,'G',20,183,79,'Poland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Watmore Duncan',14,0,2,'Sunderland',14,'F',22,181,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Amat Jordi',17,0,0,'Swansea City',2,'D',24,181,76,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ayew Jordan',14,1,3,'Swansea City',3,'F',24,181,78,'Ghana');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Bastón Borja',18,1,0,'Swansea City',10,'F',23,178,76,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Birighitti Mark',0,0,0,'Swansea City',19,'G',25,183,75,'Australia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Britton Leon',16,0,0,'Swansea City',7,'M',33,171,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Carroll Tom',18,1,2,'Swansea City',42,'M',24,176,68,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Cork Jack',30,0,0,'Swansea City',24,'M',27,183,73,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Dyer Nathan',8,0,1,'Swansea City',12,'M',28,186,82,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fabianski Lukasz',37,0,0,'Swansea City',1,'G',31,183,78,'Poland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fer Leroy',34,6,2,'Swansea City',8,'M',26,188,80,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fernández Fede',27,0,2,'Swansea City',33,'D',27,176,70,'Argentina');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fulton Jay',0,0,0,'Swansea City',56,'M',22,194,87,'Scotland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gorre Kenji',0,0,0,'Swansea City',46,'M',21,188,87,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('James Daniel',0,0,0,'Swansea City',51,'M',18,176,71,'Wales');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ki Sung-Yueng',23,0,0,'Swansea City',4,'M',27,186,82,'South Korea');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Kingsley Stephen',13,0,0,'Swansea City',35,'D',21,178,75,'Scotland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Llorente Fernando',33,15,1,'Swansea City',9,'F',31,188,90,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mawson Alfie',27,4,0,'Swansea City',6,'D',22,183,90,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('McBurnie Oliver',5,0,0,'Swansea City',62,'F',20,163,70,'Scotland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Montero Jefferson',13,0,1,'Swansea City',20,'M',26,183,79,'Ecuador');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Narsingh Luciano',13,0,3,'Swansea City',28,'F',25,178,70,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Naughton Kyle',31,1,0,'Swansea City',26,'D',27,176,81,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Nordfeldt Kristoffer',1,0,0,'Swansea City',13,'G',27,181,74,'Sweden');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Olsson Martin',15,2,0,'Swansea City',16,'D',28,191,77,'Sweden');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Rangel Àngel',18,1,0,'Swansea City',22,'D',33,183,80,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Roberts Connor',0,0,0,'Swansea City',52,'D',20,181,72,'Wales');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Routledge Wayne',27,3,1,'Swansea City',15,'M',31,170,80,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Sigurdsson Gylfi',38,9,13,'Swansea City',23,'M',26,196,90,'Iceland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Tremmel Gerhard',11,0,0,'Swansea City',25,'G',37,178,74,'Germany');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Van der Hoorn Mike',8,1,1,'Swansea City',5,'D',23,176,76,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Alderweireld Toby',30,1,0,'Tottenham Hotspur',4,'D',27,181,71,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Alli Dele',37,18,7,'Tottenham Hotspur',20,'M',20,186,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Carter-Vickers Cameron',18,1,2,'Tottenham Hotspur',38,'D',18,181,70,'United States');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Davies Ben',23,1,3,'Tottenham Hotspur',33,'D',23,194,88,'Wales');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Dembélé Mousa',30,1,1,'Tottenham Hotspur',19,'M',29,183,75,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Dier Eric',36,2,0,'Tottenham Hotspur',15,'M',22,176,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Eriksen Christian',36,8,15,'Tottenham Hotspur',23,'M',24,186,77,'Denmark');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Janssen Vincent',27,2,2,'Tottenham Hotspur',9,'F',22,186,75,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Kane Harry',30,29,7,'Tottenham Hotspur',10,'F',22,178,71,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Lamela Erik',9,1,1,'Tottenham Hotspur',11,'M',24,194,85,'Argentina');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Lesniak Filip',0,0,0,'Tottenham Hotspur',44,'M',20,199,90,'Slovakia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Lloris Hugo',34,0,0,'Tottenham Hotspur',1,'G',29,178,72,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('López Pau',0,0,0,'Tottenham Hotspur',30,'G',21,183,82,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Nkoudou Georges-Kevin',8,0,0,'Tottenham Hotspur',14,'M',21,183,79,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Onomah Joshua',5,0,0,'Tottenham Hotspur',25,'M',19,181,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Rose Danny',18,2,2,'Tottenham Hotspur',3,'D',26,181,76,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Shashoua Samuel',0,0,0,'Tottenham Hotspur',43,'F',17,181,78,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Sissoko Moussa',25,0,2,'Tottenham Hotspur',17,'M',26,178,76,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Son Heung-Min',34,14,6,'Tottenham Hotspur',7,'F',24,183,75,'South Korea');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Trippier Kieran',12,0,5,'Tottenham Hotspur',16,'D',25,171,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Vertonghen Jan',33,0,0,'Tottenham Hotspur',5,'D',29,176,68,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Vorm Michel',5,0,0,'Tottenham Hotspur',13,'G',32,183,73,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Walker Kyle',33,0,5,'Tottenham Hotspur',2,'D',26,186,82,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Wanyama Victor',36,4,1,'Tottenham Hotspur',12,'M',25,183,78,'Kenya');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Wimmer Kevin',5,0,0,'Tottenham Hotspur',27,'D',23,188,80,'Austria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Winks Harry',21,1,1,'Tottenham Hotspur',29,'M',20,176,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Amrabat Nordin',29,0,3,'Watford',7,'M',29,194,87,'Morocco');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Arlauskis Giedrius',0,0,0,'Watford',34,'G',28,188,87,'Lithuania');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Behrami Valon',27,0,0,'Watford',11,'M',31,176,71,'Switzerland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Britos Miguel Ángel',27,1,2,'Watford',3,'D',31,186,82,'Uruguay');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Capoue Étienne',37,7,1,'Watford',29,'M',28,178,75,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Cathcart Craig',15,0,1,'Watford',15,'D',27,188,90,'Northern Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Cleverley Tom',27,0,2,'Watford',8,'M',26,183,90,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Deeney Troy',37,10,4,'Watford',9,'F',28,163,70,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Dja Djédjé Brice',0,0,0,'Watford',26,'D',25,183,79,'Cote d''''Ivoire');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Doucouré Abdoulaye',20,1,0,'Watford',16,'M',23,178,70,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Eleftheriou Andrew',1,0,0,'Watford',42,'D',18,176,81,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gilmartin Rene',0,0,0,'Watford',13,'G',29,181,74,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Gomes Heurelho',38,0,0,'Watford',1,'G',35,191,77,'Brazil');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Hoban Tommy',0,0,0,'Watford',31,'D',22,183,80,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Holebas José',33,2,4,'Watford',25,'D',32,181,72,'Greece');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ighalo Odion',18,1,1,'Watford',24,'F',27,170,80,'Nigeria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Janmaat Daryl',27,2,1,'Watford',22,'D',26,170,80,'Netherlands');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Kabasele Christian',16,2,0,'Watford',27,'D',25,196,90,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Kaboul Younes',23,2,0,'Watford',4,'D',30,178,74,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mariappa Adrian',7,0,0,'Watford',6,'D',29,176,76,'Jamaica');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Mason Brandon',2,0,0,'Watford',32,'D',18,181,71,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Niang Mbaye',16,2,2,'Watford',21,'F',21,186,72,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Okaka Stefano',19,4,0,'Watford',33,'F',26,181,70,'Italy');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Pantilimon Costel',2,0,0,'Watford',30,'G',29,194,88,'Romania');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Pereira Dion',2,0,0,'Watford',47,'M',17,183,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Pereyra Roberto',13,2,2,'Watford',37,'M',25,176,72,'Argentina');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Prodl Sebastian',33,1,1,'Watford',5,'D',29,186,77,'Austria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Rowan Charlie',0,0,0,'Watford',38,'D',18,186,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Sinclair Jerome',5,0,0,'Watford',19,'F',19,178,71,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Stewart Carl',19,1,1,'Watford',35,'M',19,194,85,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Success Isaac',1,0,0,'Watford',10,'F',20,199,90,'Nigeria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Watson Ben',4,0,0,'Watford',23,'M',31,178,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Zárate Mauro',3,0,0,'Watford',20,'F',29,183,82,'Argentina');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Zúñiga Juan',21,1,0,'Watford',18,'D',30,183,79,'Colombia');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Brunt Chris',31,3,4,'West Bromwich Albion',11,'M',31,181,70,'Northern Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Chadli Nacer',31,5,5,'West Bromwich Albion',22,'M',26,181,76,'Belgium');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Dawson Craig',37,4,0,'West Bromwich Albion',25,'D',26,181,78,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Evans Jonny',31,2,1,'West Bromwich Albion',6,'D',28,178,76,'Northern Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Field Sam',8,0,0,'West Bromwich Albion',47,'M',18,183,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fletcher Darren',38,2,3,'West Bromwich Albion',24,'M',32,170,80,'Scotland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Foster Ben',38,0,0,'West Bromwich Albion',1,'G',33,196,90,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Galloway Brendan',3,0,0,'West Bromwich Albion',20,'D',20,178,74,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Harper Rekeem',0,0,0,'West Bromwich Albion',34,'M',16,176,76,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Leko Jonathan',9,0,1,'West Bromwich Albion',45,'M',17,181,71,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Livermore Jake',37,1,1,'West Bromwich Albion',8,'M',26,186,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('McAuley Gareth',36,6,1,'West Bromwich Albion',23,'D',36,181,70,'Northern Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('McClean James',34,1,2,'West Bromwich Albion',14,'M',27,194,88,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Morrison James',31,5,2,'West Bromwich Albion',7,'M',30,183,75,'Scotland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Myhill Boaz',0,0,0,'West Bromwich Albion',13,'G',33,176,72,'Wales');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Nyom Allan',32,0,2,'West Bromwich Albion',2,'D',28,186,77,'Cameroon');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Palmer Alex',0,0,0,'West Bromwich Albion',40,'G',19,186,75,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Phillips Matt',0,0,0,'West Bromwich Albion',10,'M',25,178,71,'Scotland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Robson-Kanu Hal',29,3,2,'West Bromwich Albion',4,'F',27,194,85,'Wales');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Rondón José',38,8,2,'West Bromwich Albion',9,'F',26,199,90,'Venezuela');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Rose Jack',0,0,0,'West Bromwich Albion',38,'G',21,178,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Wilson Kane',0,0,0,'West Bromwich Albion',49,'D',16,183,82,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Wilson Marc',4,0,0,'West Bromwich Albion',12,'D',28,183,79,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Yacob Claudio',33,0,0,'West Bromwich Albion',5,'M',29,181,70,'Argentina');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Adrián',16,0,0,'West Ham United',13,'G',29,181,76,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Antonio Michail',29,9,3,'West Ham United',30,'M',26,181,78,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Arbeloa Álvaro',3,0,0,'West Ham United',5,'D',33,178,76,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ayew André',25,6,3,'West Ham United',20,'F',26,183,75,'Ghana');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Byram Sam',18,0,1,'West Ham United',22,'D',22,170,80,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Calleri Jonathan',16,1,0,'West Ham United',28,'F',22,196,90,'Argentina');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Carroll Andy',18,7,1,'West Ham United',9,'F',27,178,74,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Collins James',22,2,0,'West Ham United',19,'D',32,176,76,'Wales');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Cresswell Aaron',26,0,2,'West Ham United',3,'D',26,181,71,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Feghouli Sofiane',21,3,3,'West Ham United',7,'M',26,186,72,'Algeria');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fernandes Edimilson',28,0,0,'West Ham United',31,'M',20,181,70,'Switzerland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fletcher Ashley',16,0,0,'West Ham United',24,'F',20,194,88,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Fonte José',33,0,0,'West Ham United',23,'D',32,183,75,'Portugal');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Holland Nathan',0,0,0,'West Ham United',37,'M',18,176,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Kemp Dan',0,0,0,'West Ham United',68,'M',17,186,77,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Kouyaté Cheikhou',31,1,0,'West Ham United',8,'M',26,186,75,'Senegal');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Lanzini Manuel',35,8,2,'West Ham United',10,'M',23,178,71,'Argentina');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Makasi Moses',0,0,0,'West Ham United',46,'M',20,194,85,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Masuaku Arthur',13,0,1,'West Ham United',26,'D',22,199,90,'France');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Noble Mark',30,3,0,'West Ham United',16,'M',29,178,72,'England');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Nordtveit Havard',16,0,1,'West Ham United',4,'M',26,183,82,'Norway');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Obiang Pedro',22,1,1,'West Ham United',14,'M',24,183,79,'Spain');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Ogbonna Angelo',20,0,0,'West Ham United',21,'D',28,181,70,'Italy');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Quina Domingos',0,0,0,'West Ham United',36,'M',16,181,76,'Portugal');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Randolph Darren',22,0,0,'West Ham United',1,'G',29,181,78,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Reid Winston',30,2,2,'West Ham United',2,'D',28,178,76,'New Zealand');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Rice Declan',0,0,0,'West Ham United',41,'D',17,183,75,'Ireland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Sakho Diafra',4,1,0,'West Ham United',15,'F',26,194,88,'Senegal');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Snodgrass Robert',35,7,5,'West Ham United',11,'M',28,183,75,'Scotland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Spiegel Raphael',0,0,0,'West Ham United',34,'G',23,176,72,'Switzerland');
Insert into tb_player (PLAYER,GAME_COUNT,P_GOAL,P_ASSIST,TEAM,P_NO,POSITION,AGE,HEIGHT,WEIGHT,NATIONALITY) values ('Tore Gokhan',5,0,1,'West Ham United',17,'M',24,186,77,'Turkey');

select * from TB_TEAM;

ALTER TABLE tb_team ADD(team_name_kr varchar2(50));

	
UPDATE tb_team SET team_name_kr = 	'첼시 FC'	WHERE team_name=				'Chelsea';
UPDATE tb_team SET team_name_kr = 	'토트넘 핫스퍼 FC'	WHERE team_name=		'Tottenham Hotspur';
UPDATE tb_team SET team_name_kr = 	'맨체스터 시티 FC'	WHERE team_name=		'Manchester City';
UPDATE tb_team SET team_name_kr = 	'리버풀 FC'	WHERE team_name=			'Liverpool';
UPDATE tb_team SET team_name_kr = 	'아스널 FC'	WHERE team_name=			'Arsenal';
UPDATE tb_team SET team_name_kr = 	'맨체스터 유나이티드 FC'	WHERE team_name=	'Manchester United';
UPDATE tb_team SET team_name_kr = 	'에버턴 FC'	WHERE team_name=			'Everton';
UPDATE tb_team SET team_name_kr = 	'사우샘프턴 FC'	WHERE team_name=			'Southampton';
UPDATE tb_team SET team_name_kr = 	'AFC 본머스'	WHERE team_name=			'Bournemouth';
UPDATE tb_team SET team_name_kr = 	'웨스트 브로미치 알비온 FC'	WHERE team_name=	'West Bromwich Albion';
UPDATE tb_team SET team_name_kr = 	'웨스트햄 유나이티드 FC'	WHERE team_name=	'West Ham United';
UPDATE tb_team SET team_name_kr = 	'레스터 시티 FC'	WHERE team_name=			'Leicester City';
UPDATE tb_team SET team_name_kr = 	'스토크 시티 FC'	WHERE team_name=			'Stoke City';
UPDATE tb_team SET team_name_kr = 	'크리스탈 팰리스 FC'	WHERE team_name=		'Crystal Palace';
UPDATE tb_team SET team_name_kr = 	'스완지 시티 AFC'	WHERE team_name=		'Swansea City';
UPDATE tb_team SET team_name_kr = 	'번리 FC'	WHERE team_name=				'Burnley';
UPDATE tb_team SET team_name_kr = 	'왓포드 FC'	WHERE team_name=			'Watford';
UPDATE tb_team SET team_name_kr = 	'헐 시티 AFC'	WHERE team_name=			'Hull City';
UPDATE tb_team SET team_name_kr = 	'미들즈브러 FC'	WHERE team_name=			'Middlesbrough';
UPDATE tb_team SET team_name_kr = 	'선덜랜드 AFC'	WHERE team_name=			'Sunderland';

ALTER TABLE tb_player DROP COLUMN position 

select * from tb_team;
                                                              
