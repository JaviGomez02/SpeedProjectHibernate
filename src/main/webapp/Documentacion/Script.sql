CREATE TABLE USUARIO(
USERNAME VARCHAR(50),
PASSWORDD VARCHAR(50),
CONSTRAINT PK_USUARIO PRIMARY KEY(USERNAME)
);


CREATE TABLE CATALOG
O(
ID_CATALOGO NUMERIC(5),
NOMBRE VARCHAR(50),
DESCRIPCION VARCHAR(150),
CONSTRAINT PK_CATALOGO PRIMARY KEY(ID_CATALOGO)
);

CREATE TABLE ZAPATILLA(
ID NUMERIC(5),
NAME VARCHAR(50),
PRICE FLOAT(5,2),
SIZES NUMERIC(2),
RELEASEDATE DATE,
STOCK BOOLEAN,
IDCATALOGO_ZAP NUMERIC(5),
CONSTRAINT PK_ZAPATILLA PRIMARY KEY(ID),
CONSTRAINT FK_ZAPATILLA FOREIGN KEY (IDCATALOGO_ZAP) REFERENCES CATALOGO(ID_CATALOGO)
);

INSERT INTO CATALOGO (ID_CATALOGO,NOMBRE,DESCRIPCION) VALUES (1,"Nike","Nike es una empresa multinacional estadounidense dedicada al diseño, desarrollo, fabricación y comercialización de equipamiento deportivo.");
INSERT INTO CATALOGO (ID_CATALOGO,NOMBRE,DESCRIPCION) VALUES (2,"Adidas","Adidas es una de las marcas más reconocidas en el mercado deportivo, es la favorita por muchos atletas y produce además de calzado deportivo.");
INSERT INTO CATALOGO (ID_CATALOGO,NOMBRE,DESCRIPCION) VALUES (3,"Reebook","Reebok es una empresa estadounidense de zapatillas, ropa, y accesorios deportivos, subsidiaria del grupo Authentic Brands Group.");
INSERT INTO CATALOGO (ID_CATALOGO,NOMBRE,DESCRIPCION) VALUES (4,"Puma","El logotipo fue creado en 1968, inspirado en el puma, felino salvaje que se caracteriza por su velocidad, fuerza y agilidad.");
INSERT INTO CATALOGO (ID_CATALOGO,NOMBRE,DESCRIPCION) VALUES (5,"Jordan","La zapatilla Jordan llegó a estar cuando Nike, marca de zapatillas de deporte muy conocida, necesitaba una manera de animar las ventas.");

insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (1, 'Western palm tanager (unidentified)', 116.03, 36, '2004-12-23', false, 3);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (2, 'Duck, mountain', 169.05, 44, '2014-05-24', true, 2);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (3, 'Legaan, water', 178.41, 49, '2014-11-01', true, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (4, 'Godwit, hudsonian', 127.33, 47, '2016-06-16', false, 2);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (5, 'Striped skunk', 176.08, 37, '2009-03-18', true, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (6, 'Monkey, vervet', 125.32, 51, '2010-10-11', true, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (7, 'Bateleur eagle', 161.31, 39, '2016-08-26', true, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (8, 'Marmot, hoary', 95.32, 37, '2003-12-07', false, 2);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (9, 'Pronghorn', 158.11, 43, '2022-09-01', false, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (10, 'Gray duiker', 161.28, 48, '2018-07-18', false, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (11, 'Lapwing (unidentified)', 155.96, 37, '2007-10-03', false, 2);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (12, 'Sulfur-crested cockatoo', 81.93, 42, '2022-04-07', false, 3);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (13, 'Caracara, yellow-headed', 64.87, 46, '2002-07-10', true, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (14, 'Sloth, hoffman''s', 187.73, 36, '2019-04-28', false, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (15, 'Raven, white-necked', 165.31, 40, '2018-10-26', false, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (16, 'Ocelot', 71.26, 37, '2004-02-18', false, 2);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (17, 'Dog, raccoon', 101.02, 38, '2013-11-25', true, 3);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (18, 'Heron, yellow-crowned night', 162.61, 40, '2001-07-01', true, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (19, 'Wolf spider', 140.62, 45, '2022-04-19', false, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (20, 'Capuchin, white-fronted', 93.91, 51, '2003-04-06', false, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (21, 'Black-tailed prairie dog', 97.31, 47, '2001-11-03', false, 2);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (22, 'Indian tree pie', 135.81, 37, '2009-06-03', true, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (23, 'Kingfisher, malachite', 129.29, 42, '2013-10-17', false, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (24, 'Shrike, southern white-crowned', 132.47, 38, '2001-04-02', true, 3);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (25, 'Butterfly, canadian tiger swallowtail', 123.37, 40, '2019-04-30', false, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (26, 'Blue-tongued skink', 99.01, 49, '2016-12-25', true, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (27, 'Cat, tiger', 68.34, 44, '2018-05-09', true, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (28, 'Wallaby, whip-tailed', 184.91, 44, '2020-09-02', true, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (29, 'Hedgehog, south african', 122.87, 50, '2011-10-01', true, 3);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (30, 'Springbok', 139.58, 49, '2008-12-04', false, 2);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (31, 'Common wallaroo', 119.65, 39, '2014-08-03', false, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (32, 'Guanaco', 155.37, 45, '2008-12-21', true, 2);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (33, 'Galapagos penguin', 171.34, 43, '2003-12-17', false, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (34, 'Common mynah', 159.06, 45, '2004-03-16', true, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (35, 'Horned puffin', 164.97, 39, '2019-08-04', false, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (36, 'Macaw, red and blue', 173.72, 43, '2016-09-07', false, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (37, 'Striated heron', 64.76, 36, '2003-01-27', true, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (38, 'Blue-breasted cordon bleu', 87.06, 41, '2019-03-18', true, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (39, 'Black-tailed tree creeper', 57.6, 44, '2018-03-08', false, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (40, 'Rhea, greater', 148.44, 44, '2006-11-13', false, 2);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (41, 'Buttermilk snake', 107.67, 36, '2007-11-15', false, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (42, 'Bulbul, black-eyed', 144.05, 36, '2020-05-12', false, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (43, 'Lion, south american sea', 115.0, 40, '2005-05-21', true, 3);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (44, 'Squirrel, thirteen-lined', 144.1, 36, '2005-06-16', false, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (45, 'Mouse, four-striped grass', 53.11, 35, '2012-03-07', false, 2);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (46, 'Brazilian tapir', 51.92, 49, '2012-05-22', false, 2);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (47, 'Wambenger, red-tailed', 160.53, 51, '2011-07-21', true, 3);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (48, 'Eagle, long-crested hawk', 135.47, 41, '2002-04-12', true, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (49, 'Monitor, two-banded', 147.23, 50, '2021-11-08', false, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (50, 'Giant armadillo', 100.45, 45, '2017-11-08', false, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (51, 'Boubou, southern', 138.94, 49, '2009-03-02', true, 2);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (52, 'Badger, american', 180.92, 41, '2016-07-11', true, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (53, 'Porcupine, crested', 184.52, 46, '2012-11-20', false, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (54, 'Dingo', 102.25, 38, '2006-06-13', false, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (55, 'Crab, sally lightfoot', 128.83, 37, '2012-03-04', false, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (56, 'Indian red admiral', 159.24, 43, '2012-01-30', true, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (57, 'Waterbuck, common', 175.43, 38, '2016-03-30', false, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (58, 'Little brown dove', 118.4, 38, '2014-05-30', true, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (59, 'Owl, snowy', 68.15, 43, '2009-05-28', true, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (60, 'Osprey', 68.46, 47, '2010-03-10', true, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (61, 'Fox, grey', 89.04, 35, '2017-02-15', true, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (62, 'Azara''s zorro', 135.86, 36, '2019-07-26', false, 2);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (63, 'Currasow (unidentified)', 163.06, 40, '2018-05-19', false, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (64, 'Heron, yellow-crowned night', 94.22, 40, '2013-08-01', true, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (65, 'Peacock, blue', 169.37, 47, '2019-05-01', true, 3);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (66, 'Pelican, eastern white', 167.5, 38, '2005-04-12', false, 2);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (67, 'Lion, southern sea', 79.64, 41, '2010-04-23', false, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (68, 'Armadillo, seven-banded', 76.2, 35, '2018-09-11', false, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (69, 'Squirrel, nelson ground', 144.51, 35, '2014-07-23', false, 2);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (70, 'Steenbok', 184.53, 47, '2012-09-10', true, 3);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (71, 'Shrike, crimson-breasted', 158.57, 39, '2003-12-22', true, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (72, 'Magellanic penguin', 153.63, 46, '2001-05-11', false, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (73, 'Grey heron', 188.84, 43, '2019-01-22', true, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (74, 'Common shelduck', 189.56, 41, '2001-09-04', true, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (75, 'Oribi', 154.55, 45, '2019-11-01', false, 3);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (76, 'African darter', 50.24, 48, '2022-01-28', false, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (77, 'Skink, blue-tongued', 97.34, 37, '2005-02-04', true, 2);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (78, 'Galapagos mockingbird', 75.29, 48, '2003-07-21', false, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (79, 'Savannah deer', 170.98, 39, '2011-06-09', false, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (80, 'Zebra, plains', 147.4, 40, '2013-01-16', false, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (81, 'Pied butcher bird', 99.86, 45, '2000-12-26', false, 2);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (82, 'North American river otter', 83.82, 38, '2003-04-06', true, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (83, 'Wild turkey', 98.47, 46, '2006-11-18', false, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (84, 'Bird, pied butcher', 87.0, 47, '2002-07-08', false, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (85, 'Egret, cattle', 124.11, 40, '2011-05-26', true, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (86, 'White-headed vulture', 132.66, 41, '2021-03-29', false, 3);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (87, 'Plains zebra', 83.71, 45, '2020-05-03', false, 3);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (88, 'Tiger cat', 176.03, 43, '2019-07-13', true, 3);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (89, 'Polar bear', 103.03, 45, '2000-12-02', false, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (90, 'Giant otter', 155.82, 44, '2010-05-04', false, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (91, 'Teal, hottentot', 160.99, 46, '2013-11-10', true, 1);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (92, 'Spur-winged goose', 92.01, 35, '2002-01-23', false, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (93, 'Penguin, fairy', 122.87, 35, '2007-01-23', false, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (94, 'Goose, spur-winged', 93.76, 36, '2019-04-09', false, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (95, 'Ibex', 99.12, 44, '2022-05-31', false, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (96, 'Salmon pink bird eater tarantula', 77.08, 50, '2017-08-31', true, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (97, 'Blue shark', 57.27, 50, '2005-10-18', false, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (98, 'Greater kudu', 174.66, 43, '2015-04-08', false, 4);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (99, 'Hoary marmot', 136.27, 37, '2006-12-13', true, 5);
insert into ZAPATILLA (ID, NAME, PRICE, SIZES, RELEASEDATE, STOCK, IDCATALOGO_ZAP) values (100, 'Stork, greater adjutant', 120.84, 37, '2019-06-24', true, 4);

SELECT * FROM ZAPATILLA z, CATALOGO c WHERE c.ID_CATALOGO=1 AND c.ID_CATALOGO=z.IDCATALOGO_ZAP;

SELECT * FROM CATALOGO;

insert into USUARIO (USERNAME, PASSWORDD) values ('ckhalid0', 'TC6jvg0');
insert into USUARIO (USERNAME, PASSWORDD) values ('ghighman1', '7PRILk5DMU3');
insert into USUARIO (USERNAME, PASSWORDD) values ('drizon2', 'RPpjmaUKd9');
insert into USUARIO (USERNAME, PASSWORDD) values ('rveelers3', '1kq248Xf');
insert into USUARIO (USERNAME, PASSWORDD) values ('nsambells4', '3kZL9V');
insert into USUARIO (USERNAME, PASSWORDD) values ('rvinker5', 'eMC5orZQ');
insert into USUARIO (USERNAME, PASSWORDD) values ('alamond6', 'PW0UUYmMwQB0');
insert into USUARIO (USERNAME, PASSWORDD) values ('bpepperrall7', 'KrY771UuB');
insert into USUARIO (USERNAME, PASSWORDD) values ('dpacheco8', 'R19rqZniLcs');
insert into USUARIO (USERNAME, PASSWORDD) values ('lducarel9', 'jNtW00HYqm6');
insert into USUARIO (USERNAME, PASSWORDD) values ('mkulica', 'tD3LZFWPrY');
insert into USUARIO (USERNAME, PASSWORDD) values ('pgammieb', 'GUNshm');
insert into USUARIO (USERNAME, PASSWORDD) values ('vsnassellc', 'RJbv1o5RANMn');
insert into USUARIO (USERNAME, PASSWORDD) values ('jbellinod', 'H9FMvO');
insert into USUARIO (USERNAME, PASSWORDD) values ('pioannoue', '37lKVVU5');
insert into USUARIO (USERNAME, PASSWORDD) values ('fpaddief', 'E5elo1PL');
insert into USUARIO (USERNAME, PASSWORDD) values ('schallicombeg', 'hyLs1H');
insert into USUARIO (USERNAME, PASSWORDD) values ('akinzetth', '13jsro2G0');
insert into USUARIO (USERNAME, PASSWORDD) values ('wcockertoni', 'HEjmhxq');
insert into USUARIO (USERNAME, PASSWORDD) values ('cjillionsj', 'l0k3nYFrmMz');
insert into USUARIO (USERNAME, PASSWORDD) values ('mamnerk', 'KgLQ8392GA');
insert into USUARIO (USERNAME, PASSWORDD) values ('sabellsl', 'DJFvjlg6Og');
insert into USUARIO (USERNAME, PASSWORDD) values ('ajersonm', 'wXuR42');
insert into USUARIO (USERNAME, PASSWORDD) values ('hfrizzelln', 'i1gmqwVinhpd');
insert into USUARIO (USERNAME, PASSWORDD) values ('cchesnuto', '4hBIqDSLM');
insert into USUARIO (USERNAME, PASSWORDD) values ('inma', 'inma');

SELECT * FROM USUARIO;

SELECT * FROM CATALOGO c;

select * from ZAPATILLA z;
