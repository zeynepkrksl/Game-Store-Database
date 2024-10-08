--product
INSERT INTO Product VALUES(1000,'Consoles','Xbox',350.00);
INSERT INTO Product VALUES(1001,'Consoles','PlayStation',150.00);
INSERT INTO Product VALUES(1002,'Consoles','PlayStation 3',250.00);
INSERT INTO Product VALUES(1003,'Consoles','PlayStation 4',400.00);

INSERT INTO Product VALUES(1004,'Games','Dead by daylight',400.00);
INSERT INTO Product VALUES(1005,'Games','Grand Theft Auto V',400.00);
INSERT INTO Product VALUES(1006,'Games','Counter-Strike: Global Offensive',900.00);
INSERT INTO Product VALUES(1007,'Games','Final Fantasy XV',1400.00);
INSERT INTO Product VALUES(1008,'Games','Persona 5',2000.00);
INSERT INTO Product VALUES(1009,'Games','Limbo',1400.00);
INSERT INTO Product VALUES(1010,'Games','Transistor',437.00);
INSERT INTO Product VALUES(1011,'Games','Bastion',400.00);
INSERT INTO Product VALUES(1012,'Games','Risk of Rain',400.00);

INSERT INTO Product VALUES(1013,'Accessories','Xbox one battery',400.00);
INSERT INTO Product VALUES(1014,'Accessories','Xbox one battery',400.00);
INSERT INTO Product VALUES(1015,'Accessories','Xbox one charger',300.00);
INSERT INTO Product VALUES(1016,'Accessories','Xbox one controller',200.00);
INSERT INTO Product VALUES(1017,'Accessories','PS4 battery',500.00);
INSERT INTO Product VALUES(1018,'Accessories','PS4 battery',500.00);
INSERT INTO Product VALUES(1019,'Accessories','PS4 charger',300.00);
INSERT INTO Product VALUES(1020,'Accessories','PS4 controller',600.00);
INSERT INTO Product VALUES(1021,'Accessories','PS4 controller',600.00);
INSERT INTO Product VALUES(1022,'Accessories','Wii battery',400.00);
INSERT INTO Product VALUES(1023,'Accessories','Wii battery',400.00);
INSERT INTO Product VALUES(1024,'Accessories','Wii charger',300.00);
INSERT INTO Product VALUES(1025,'Accessories','Wii controller',200.00);
INSERT INTO Product VALUES(1026,'Accessories','Wii headset',200.00);

INSERT INTO Product VALUES(1027,'Games','Dark Soul 3',1390.00);
INSERT INTO Product VALUES(1028,'Games','INSIDE',2000.00);
INSERT INTO Product VALUES(1029,'Games','Project CARS',1400.00);
INSERT INTO Product VALUES(1030,'Games','Portal',437.00);
INSERT INTO Product VALUES(1031,'Games','Batman: Arkham Knight',400.00);
INSERT INTO Product VALUES(1032,'Accessories','PS3 battery,charger & controller set',700.00);
INSERT INTO Product VALUES(1033,'Accessories','PS2 battery, charger & controller set',650.00);
INSERT INTO Product VALUES(1034,'Accessories','PS2 battery, charger & controller set',850.00);
INSERT INTO Product VALUES(1036,'Games','Possessed',300.00);

--Consoles
INSERT INTO Consoles VALUES(1000, 'XBox',20,'popular video game');
INSERT INTO Consoles VALUES(1001, 'Playstation',20,'version 1. Size user upgradable.');
INSERT INTO Consoles VALUES(1002, 'Playstation 3',20,'version 3. Size user upgradable to 500GB.');
INSERT INTO Consoles VALUES(1003, 'Playstation 4',500,'version 4. Size user upgradable to 1TB.');
--Accessories
INSERT INTO Accessories VALUES(1013, 'Xbox one battery','varied sizes available. Great reviews.');
INSERT INTO Accessories VALUES(1014, 'Xbox one battery','largest size available. Great reviews.');
INSERT INTO Accessories VALUES(1015, 'Xbox one charger','In stock');
INSERT INTO Accessories VALUES(1016, 'Xbox one controller','black and metallic colors');
INSERT INTO Accessories VALUES(1017, 'PS4 battery','all sizes');
INSERT INTO Accessories VALUES(1018, 'PS4 battery','largest size');
INSERT INTO Accessories VALUES(1019, 'PS4 charger','extendible cord');
INSERT INTO Accessories VALUES(1020, 'PS4 controller','colors: black, red, gray, blue, white');
INSERT INTO Accessories VALUES(1021, 'Wii headset','Striker P1 Black');
INSERT INTO Accessories VALUES(1022, 'Wii battery','NS-GWII1106');
INSERT INTO Accessories VALUES(1023, 'Wii battery','NS-GWII1108');
INSERT INTO Accessories VALUES(1024, 'Wii charger','NS-GWII1106');
INSERT INTO Accessories VALUES(1025, 'Wii controller','WII U - GA');
INSERT INTO Accessories VALUES(1026,'Wii headset','Striker P1 White' );
INSERT INTO Accessories VALUES(1032,'PS3 battery,charger & controller set','All sizes & colors in stock.');
INSERT INTO Accessories VALUES(1033,'PS2 battery,charger & controller set','All sizes & colors in stock.');
INSERT INTO Accessories VALUES(1034,'PS2 battery,charger & controller set','All sizes & colors in stock.');
--Games
INSERT INTO Games VALUES(1004, 'Dead by daylight',16,'{Horror, Survival, Horror, Multiplayer, Co-op}');
INSERT INTO Games VALUES(1005, 'Grand Theft Auto V',16,'{Open World, Action, Multiplayer, First-Person}');
INSERT INTO Games VALUES(1006, 'Counter-Strike: Global Offensive',8,'{FPS, Multiplayer, Shooter, Action, Team-Based}');
INSERT INTO Games VALUES(1007, 'Final Fantasy XV',8,'{Action, RPG}');
INSERT INTO Games VALUES(1008, 'Persona 5',12,'{RPG, social simulation}');
INSERT INTO Games VALUES(1009, 'Limbo',10,'{Adventure, Indie}');
INSERT INTO Games VALUES(1010, 'Transistor', 8, '{Action, Indie, RPG}');
INSERT INTO Games VALUES(1011, 'Bastion',8,'{Action, Indie, RPG}');
INSERT INTO Games VALUES(1012, 'Risk of Rain', 8,'{Action, Indie, RPG}');
INSERT INTO Games VALUES(1027, 'Dark Soul 3',16, '{Action, RPG}');
INSERT INTO Games VALUES(1028, 'INSIDE',4,'{Atmospheric, Dark, Indie, Adventure, Puzzle}');
INSERT INTO Games VALUES(1029, 'Project CARS',4,'{Racing, Simulation, Driving, Realistic, Sports}');
INSERT INTO Games VALUES(1030, 'Portal',8, '{Puzzle, First-Person, Singleplayer, Sci-fi, Action}');
INSERT INTO Games VALUES(1031, 'Batman: Arkham Knight',8,'{Batman, Action, OpenWorld, Superhero, Dark}');
INSERT INTO Games VALUES(1036,'Possessed',12,'{Horror, Action, Simulation}');
--Customer
INSERT INTO Customer VALUES(100,'John Smith', '1234567890', '123 Main St, Cityville', 'john.smith@email.com', '2000-05-15', 'M');
INSERT INTO Customer VALUES(101,'Emily Johnson', '9876543210', '456 Oak St, Townsville', 'emily.j@email.com', '1985-08-22', 'F');
INSERT INTO Customer VALUES(102,'Michael Davis', '5557890123', '789 Pine St, Villagetown', 'michael.d@email.com', '1982-12-10', 'M');
INSERT INTO Customer VALUES(103,'Sarah Brown', '1239876543', '101 Elm St, Hamletville', 'sarah.b@email.com', '1995-02-28', 'F');
INSERT INTO Customer VALUES(104,'Kevin Miller', '7890123456', '202 Maple St, Borough', 'kevin.m@email.com', '1988-07-07', 'M');
INSERT INTO Customer VALUES(105,'Jessica White', '3456789012', '303 Birch St, County', 'jessica.w@email.com', '1993-04-18', 'F');
INSERT INTO Customer VALUES(106,'Daniel Taylor', '8901234567', '404 Cedar St, Township', 'daniel.t@email.com', '1979-11-03', 'M');
INSERT INTO Customer VALUES(107,'Olivia Clark', '2345678901', '505 Redwood St, Metro', 'olivia.c@email.com', '1998-09-09', 'F');
INSERT INTO Customer VALUES(108,'Christopher Hall', '6789012345', '606 Pine St, Suburb', 'chris.h@email.com', '1980-03-26', 'M');
INSERT INTO Customer VALUES(109,'Sophia Garcia', '9012345678', '707 Oak St, Village', 'sophia.g@email.com', '1991-06-14', 'F');
INSERT INTO Customer VALUES(110,'Benjamin Martin', '5678901234', '808 Maple St, City', 'ben.m@email.com', '1987-01-19', 'M');
INSERT INTO Customer VALUES(111,'Ava Anderson', '1234567890', '909 Birch St, Town', 'ava.a@email.com', '1996-08-07', 'F');
INSERT INTO Customer VALUES(112,'Nathan Rodriguez', '9876543210', '111 Pine St, Hamlet', 'nathan.r@email.com', '1983-04-30', 'M');
INSERT INTO Customer VALUES(113,'Zoe Martinez', '5557890123', '222 Oak St, Village', 'zoe.m@email.com', '1986-10-12', 'F');
INSERT INTO Customer VALUES(114,'Samuel Turner', '1239876543', '333 Cedar St, City', 'sam.turner@email.com', '1994-02-14', 'M');
INSERT INTO Customer VALUES(115,'Lily Johnson', '7890123456', '444 Redwood St, Town', 'lily.j@email.com', '1989-05-27', 'F');
INSERT INTO Customer VALUES(116,'Ethan Davis', '3456789012', '555 Elm St, Borough', 'ethan.d@email.com', '1978-12-01', 'M');
INSERT INTO Customer VALUES(117,'Grace Wilson', '8901234567', '666 Maple St, County', 'grace.w@email.com', '1997-03-10', 'F');
INSERT INTO Customer VALUES(118,'Aiden Thomas', '2345678901', '777 Birch St, Township', 'aiden.t@email.com', '1981-09-03', 'M');
INSERT INTO Customer VALUES(119,'Isabella Harris', '6789012345', '888 Pine St, Metro', 'isabella.h@email.com', '1992-07-22', 'F');
INSERT INTO Customer VALUES(120,'Logan Lewis', '9012345678', '999 Oak St, Suburb', 'logan.l@email.com', '1984-06-09', 'M');
INSERT INTO Customer VALUES(121,'Mia Turner', '5678901234', '121 Cedar St, Village', 'mia.t@email.com', '1999-01-28', 'F');
INSERT INTO Customer VALUES(122,'Jackson Wright', '1234567890', '232 Redwood St, City', 'jackson.w@email.com', '1985-04-15', 'M');
INSERT INTO Customer VALUES(123,'Harper Adams', '9876543210', '343 Elm St, Town', 'harper.a@email.com', '1990-08-22', 'F');
INSERT INTO Customer VALUES(124,'Wyatt Martinez', '5557890123', '454 Maple St, Hamlet', 'wyatt.m@email.com', '1979-12-10', 'M');
INSERT INTO Customer VALUES(125,'Addison Johnson', '1239876543', '565 Birch St, Village', 'addison.j@email.com', '1996-02-28', 'F');
INSERT INTO Customer VALUES(126,'Andrew White', '7890123456', '676 Pine St, Borough', 'andrew.w@email.com', '1988-07-07', 'M');
INSERT INTO Customer VALUES(127,'Scarlett Miller', '3456789012', '787 Oak St, County', 'scarlett.m@email.com', '1993-04-18', 'F');
INSERT INTO Customer VALUES(128,'Grayson Taylor', '8901234567', '898 Cedar St, Township', 'grayson.t@email.com', '1979-11-03', 'M');
INSERT INTO Customer VALUES(129,'Penelope Clark', '2345678901', '909 Redwood St, Metro', 'penelope.c@email.com', '1998-09-09', 'F');
INSERT INTO Customer VALUES(130,'Oliver Hall', '6789012345', '1010 Pine St, Suburb', 'oliver.h@email.com', '1980-03-26', 'M');
INSERT INTO Customer VALUES(131,'Amelia Garcia', '9012345678', '1111 Oak St, Village', 'amelia.g@email.com', '1991-06-14', 'F');
INSERT INTO Customer VALUES(132,'Lucas Martin', '5678901234', '1212 Maple St, City', 'lucas.m@email.com', '1987-01-19', 'M');
INSERT INTO Customer VALUES(133,'Harper Anderson', '1234567890', '1313 Birch St, Town', 'harper.a@email.com', '1996-08-18', 'M');
--customer orders
INSERT INTO Customer_Orders VALUES(200,'2015-09-29',1024,1,105,"ordered");
INSERT INTO Customer_Orders VALUES(201,'2016-02-25',1006,2,104,"ordered");
INSERT INTO Customer_Orders VALUES(202,'2016-03-02',1002,1,107,"ordered");
INSERT INTO Customer_Orders VALUES(203,'2016-04-23',1010,2,100,"ordered");
INSERT INTO Customer_Orders VALUES(204,'2016-05-23',1017,3,104,"in the list");
INSERT INTO Customer_Orders VALUES(205,'2016-05-22',1011,1,103,"in the list");
INSERT INTO Customer_Orders VALUES(206,'2016-05-19',1011,2,101,"ordered");
INSERT INTO Customer_Orders VALUES(207,'2016-05-14',1021,4,103,"ordered");
INSERT INTO Customer_Orders VALUES(208,'2016-05-23',1017,1,102,"in the list");
INSERT INTO Customer_Orders VALUES(209,'2016-05-21',1016,1,103,"in the list");
INSERT INTO Customer_Orders VALUES(210,'2016-04-27',1011,1,101,"ordered");
INSERT INTO Customer_Orders VALUES(211,'2016-05-14',1023,1,103,"ordered");
INSERT INTO Customer_Orders VALUES(212,'2016-03-23',1017,1,102,"ordered");
INSERT INTO Customer_Orders VALUES(213,'2016-05-22',1015,1,103,"in the list");
INSERT INTO Customer_Orders VALUES(214,'2016-05-09',1013,2,101,"ordered");
INSERT INTO Customer_Orders VALUES(215,'2016-05-04',1021,1,107,"ordered");
INSERT INTO Customer_Orders VALUES(216,'2016-06-25',1023,1,109,"ordered");
INSERT INTO Customer_Orders VALUES(217,'2016-06-02',1028,2,108,"ordered");
INSERT INTO Customer_Orders VALUES(218,'2016-05-22',1011,2,110,"ordered");
INSERT INTO Customer_Orders VALUES(219,'2016-05-23',1019,1,114,"ordered");
INSERT INTO Customer_Orders VALUES(220,'2016-05-22',1013,1,108,"in the list");
INSERT INTO Customer_Orders VALUES(221,'2016-05-29',1021,2,111,"ordered");
INSERT INTO Customer_Orders VALUES(222,'2016-05-14',1021,1,103,"ordered");
INSERT INTO Customer_Orders VALUES(223,'2016-05-23',1017,1,109,"in the list");
INSERT INTO Customer_Orders VALUES(224,'2016-06-21',1026,2,102,"aborted");
INSERT INTO Customer_Orders VALUES(225,'2016-05-27',1031,1,111,"ordered");
INSERT INTO Customer_Orders VALUES(226,'2016-05-14',1021,2,113,"ordered");
INSERT INTO Customer_Orders VALUES(227,'2016-03-23',1019,1,106,"ordered");
INSERT INTO Customer_Orders VALUES(228,'2016-05-22',1018,1,108,"in the list");
INSERT INTO Customer_Orders VALUES(229,'2016-05-19',1014,1,101,"ordered");
INSERT INTO Customer_Orders VALUES(230,'2016-05-21',1019,1,107,"ordered");
INSERT INTO Customer_Orders VALUES(231,'2017-05-04',1021,1,107,"ordered");
INSERT INTO Customer_Orders VALUES(232,'2017-06-25',1023,1,109,"ordered");
INSERT INTO Customer_Orders VALUES(233,'2017-06-02',1028,2,108,"aborted");
INSERT INTO Customer_Orders VALUES(234,'2017-05-22',1011,2,110,"ordered");
INSERT INTO Customer_Orders VALUES(235,'2017-05-23',1019,1,114,"ordered");
INSERT INTO Customer_Orders VALUES(236,'2017-05-22',1013,1,108,"in the list");
INSERT INTO Customer_Orders VALUES(237,'2017-05-29',1021,2,111,"ordered");
INSERT INTO Customer_Orders VALUES(238,'2018-05-14',1021,1,103,"ordered");
INSERT INTO Customer_Orders VALUES(239,'2018-05-23',1017,1,109,"in the list");
INSERT INTO Customer_Orders VALUES(240,'2018-06-21',1026,2,102,"in the list");
INSERT INTO Customer_Orders VALUES(241,'2018-05-27',1031,1,111,"aborted");
INSERT INTO Customer_Orders VALUES(242,'2018-05-14',1021,2,113,"ordered");
INSERT INTO Customer_Orders VALUES(243,'2018-03-23',1019,1,106,"ordered");
INSERT INTO Customer_Orders VALUES(244,'2018-05-22',1018,1,108,"in the list");
INSERT INTO Customer_Orders VALUES(245,'2018-05-19',1014,1,101,"ordered");
INSERT INTO Customer_Orders VALUES(246,'2018-05-21',1019,1,107,"ordered");
INSERT INTO Customer_Orders VALUES(247,'2024-05-21',1037,2,134,"ordered");
--product inventory
INSERT INTO Product_Inventory VALUES(1000, 25);
INSERT INTO Product_Inventory VALUES(1001, 25);
INSERT INTO Product_Inventory VALUES(1002, 25);
INSERT INTO Product_Inventory VALUES(1003, 25);
INSERT INTO Product_Inventory VALUES(1004, 25);
INSERT INTO Product_Inventory VALUES(1005, 25);
INSERT INTO Product_Inventory VALUES(1006, 25);
INSERT INTO Product_Inventory VALUES(1007, 25);
INSERT INTO Product_Inventory VALUES(1008, 25);
INSERT INTO Product_Inventory VALUES(1009, 25);
INSERT INTO Product_Inventory VALUES(1010, 25);
INSERT INTO Product_Inventory VALUES(1011, 25);
INSERT INTO Product_Inventory VALUES(1012, 25);
INSERT INTO Product_Inventory VALUES(1013, 25);
INSERT INTO Product_Inventory VALUES(1014, 25);
INSERT INTO Product_Inventory VALUES(1015, 25);
INSERT INTO Product_Inventory VALUES(1016, 25);
INSERT INTO Product_Inventory VALUES(1017, 25);
INSERT INTO Product_Inventory VALUES(1018, 25);
INSERT INTO Product_Inventory VALUES(1019, 25);
INSERT INTO Product_Inventory VALUES(1020, 25);
INSERT INTO Product_Inventory VALUES(1021, 25);
INSERT INTO Product_Inventory VALUES(1022, 25);
INSERT INTO Product_Inventory VALUES(1023, 25);
INSERT INTO Product_Inventory VALUES(1024, 25);
INSERT INTO Product_Inventory VALUES(1025, 25);
INSERT INTO Product_Inventory VALUES(1026, 25);
INSERT INTO Product_Inventory VALUES(1027, 25);
INSERT INTO Product_Inventory VALUES(1028, 25);
INSERT INTO Product_Inventory VALUES(1029, 25);
INSERT INTO Product_Inventory VALUES(1030, 25);
INSERT INTO Product_Inventory VALUES(1031, 25);
INSERT INTO Product_Inventory VALUES(1032, 25);
INSERT INTO Product_Inventory VALUES(1033, 25);
INSERT INTO Product_Inventory VALUES(1034, 25);
INSERT INTO Product_Inventory VALUES(1037, 25);
--customer purchases
INSERT INTO Customer_Purchases VALUES(300,'2015-09-29',105,9853672145);
INSERT INTO Customer_Purchases VALUES(301,'2016-02-25',104,1024785369);
INSERT INTO Customer_Purchases VALUES(302,'2016-03-02',107,6548921073);
INSERT INTO Customer_Purchases VALUES(303,'2016-04-23',100,3289745610);
INSERT INTO Customer_Purchases VALUES(304,'2016-05-19',101,7451098632);
INSERT INTO Customer_Purchases VALUES(305,'2016-05-14',103,8901234567);
INSERT INTO Customer_Purchases VALUES(306,'2016-04-27',101,5032978164);
INSERT INTO Customer_Purchases VALUES(307,'2016-05-14',103,3798146520);
INSERT INTO Customer_Purchases VALUES(308,'2016-03-23',102,4658901723);
INSERT INTO Customer_Purchases VALUES(309,'2016-05-09',101,6398457102);
INSERT INTO Customer_Purchases VALUES(310,'2016-05-04',107,3174089526);
INSERT INTO Customer_Purchases VALUES(311,'2016-06-25',109,5081723649);
INSERT INTO Customer_Purchases VALUES(312,'2016-06-02',108,9265378041);
INSERT INTO Customer_Purchases VALUES(313,'2016-05-22',110,3712586904);
INSERT INTO Customer_Purchases VALUES(314,'2016-05-23',114,6543109278);
INSERT INTO Customer_Purchases VALUES(315,'2016-05-29',111,2497853016);
INSERT INTO Customer_Purchases VALUES(316,'2016-05-14',103,8912345670);
INSERT INTO Customer_Purchases VALUES(317,'2016-05-27',111,1234567890);
INSERT INTO Customer_Purchases VALUES(318,'2016-05-14',113,5678901234);
INSERT INTO Customer_Purchases VALUES(319,'2016-03-23',106,9876543210);
INSERT INTO Customer_Purchases VALUES(320,'2016-05-19',101,3456789012);
INSERT INTO Customer_Purchases VALUES(321,'2016-05-21',107,4567890123);
INSERT INTO Customer_Purchases VALUES(322,'2017-05-04',107,7890123456);
INSERT INTO Customer_Purchases VALUES(323,'2017-06-25',109,8901234561);
INSERT INTO Customer_Purchases VALUES(324,'2017-05-22',110,2345678901);
INSERT INTO Customer_Purchases VALUES(325,'2017-05-23',114,6789012345);
INSERT INTO Customer_Purchases VALUES(326,'2017-05-29',111,3450126789);
INSERT INTO Customer_Purchases VALUES(327,'2018-05-14',103,8765432109);
INSERT INTO Customer_Purchases VALUES(328,'2018-05-14',113,1098765432);
INSERT INTO Customer_Purchases VALUES(329,'2018-03-23',106,2109876543);
INSERT INTO Customer_Purchases VALUES(330,'2018-05-19',101,5432109876);
INSERT INTO Customer_Purchases VALUES(331,'2018-05-21',107,4321098765);

