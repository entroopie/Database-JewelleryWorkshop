/* MATERIALS */

INSERT INTO Materials
 VALUES(1,'gold',999);

INSERT INTO Materials
 VALUES(2,'gold',960);

INSERT INTO Materials
 VALUES(3,'gold',750);

INSERT INTO Materials
 VALUES(4,'silver',999);

INSERT INTO Materials
 VALUES(5,'silver',925);

INSERT INTO Materials
 (material_id, material_name)
 VALUES(6,'amethyst');

INSERT INTO Materials
 (material_id, material_name)
 VALUES(7,'pearls');

INSERT INTO Materials
 (material_id, material_name)
 VALUES(8,'stones');

INSERT INTO Materials
 VALUES(9,'white gold',999);

INSERT INTO Materials
 VALUES(10,'white gold',750);

/* CUSTOMERS */

INSERT INTO Customers
 VALUES(5364, 'Tomasz', 'Kowalski', 123456789);

INSERT INTO Customers
 VALUES(5663, 'Karol', 'Sienkiewicz', 943456710);

INSERT INTO Customers
 VALUES(9867, 'Konrad', 'Gójski', 583456711);

INSERT INTO Customers
 VALUES(1266, 'Ola', 'Pankiewiczówna', 243456712);

INSERT INTO Customers
 VALUES(3360, 'Daniel', 'Tokrywywiewicz', 823456713);

INSERT INTO Customers
 VALUES(5564, 'Pola', 'Kowalska', 123434789);

INSERT INTO Customers
 VALUES(1663, 'Henryk', 'Mickiewicz', 543766710);

INSERT INTO Customers
 VALUES(8667, 'Joanna', 'Wybredna', 583456511);

INSERT INTO Customers
 VALUES(1886, 'Ola', 'Pankiewiczówna', 212456712);

INSERT INTO Customers
 VALUES(6560, 'Cyryl', 'Podolski', 828766713);

/* PRODUCTS CATALOG */

INSERT INTO ProductsCatalog
 (product_id, prod_type, prod_subtype, size, sex, prod_width, prod_weight)
 VALUES(111,'ring','traditional',3,'Unisex',12,1);

INSERT INTO ProductsCatalog
 (product_id, prod_type, prod_subtype, sex, prod_length, prod_width, prod_weight)
 VALUES(211,'earrings','hanging','Woman',12.9,8.8,0.40);

INSERT INTO ProductsCatalog
 (product_id, prod_type, sex, prod_length, prod_weight)
 VALUES(311,'bracelet','Man',240,8.50);

INSERT INTO ProductsCatalog
 (product_id, prod_type, prod_subtype, sex, prod_length, prod_width, prod_weight)
 VALUES(355,'bracelet','leg','Woman',260,6.3,2.30);

INSERT INTO ProductsCatalog
 (product_id, prod_type, prod_subtype, sex, prod_length, prod_weight)
 VALUES(488,'necklace','chain','Woman',410,0.85);

INSERT INTO ProductsCatalog
 (product_id, prod_type, prod_subtype, size, sex)
 VALUES(141,'ring','modern',2,'Unisex');

INSERT INTO ProductsCatalog
 (product_id, prod_type, prod_subtype, sex, prod_length, prod_width, prod_weight)
 VALUES(272,'earrings','point','Unisex',12.2,3.8,0.15);

INSERT INTO ProductsCatalog
 (product_id, prod_type, sex, prod_length, prod_weight)
 VALUES(345,'bracelet','Man',230,6.50);

INSERT INTO ProductsCatalog
 (product_id, prod_type, prod_subtype, sex, prod_length, prod_width, prod_weight)
 VALUES(312,'bracelet','chain','Woman',290,9.3,4.30);

INSERT INTO ProductsCatalog
 (product_id, prod_type, prod_subtype, sex, prod_length, prod_weight)
 VALUES(463,'necklace','tight','Woman',405,0.65);

/* SUPPLIERS */

INSERT INTO Suppliers
 VALUES(1029876654,'Jubygo','Polna 4/3','Warszawa',908765354);

INSERT INTO Suppliers
 VALUES(5324326684,'Dolnywroc','Spokojna 32','Wroc³aw',102265354);

INSERT INTO Suppliers
 VALUES(8629653814,'Supthis','Do studzienki 61','Gdañsk',098435354);

INSERT INTO Suppliers
 VALUES(4529875624,'Govforsilver','Wiejska 4','Warszawa',788712354);

INSERT INTO Suppliers
 VALUES(4858326659,'Alalal','Jesienna 2','Warszawa',998766554);

INSERT INTO Suppliers
 VALUES(1956436664,'Ohoho','Batorego 1','Gdañsk',493984354);

INSERT INTO Suppliers
 VALUES(8658266446,'Niemampomyslu','Gdzieœ 87','Poznañ',195345354);

INSERT INTO Suppliers
 VALUES(5432872345,'Co?','£¹czna 12/6','Wroc³aw',998886444);

INSERT INTO Suppliers
 VALUES(1111876444,'What?','Polna 42','Poznañ',149836354);

INSERT INTO Suppliers
 VALUES(3332736123,'Que?','Jawoll 11','Wroc³aw',984365354);

/* BOXES */

INSERT INTO Boxes
 VALUES(111,10,15,1);

INSERT INTO Boxes
 VALUES(112,2,10,2);

INSERT INTO Boxes
 VALUES(113,10,10,3);

INSERT INTO Boxes
 VALUES(114,2,25,4);

INSERT INTO Boxes
 VALUES(115,10,20,5);

INSERT INTO Boxes
 VALUES(116,10,15,6);

INSERT INTO Boxes
 VALUES(117,12,10,7);

INSERT INTO Boxes
 VALUES(118,12,15,8);

INSERT INTO Boxes
 VALUES(119,12,5,9);

INSERT INTO Boxes
 VALUES(120,10,5,10);

/* AMOUNTS */

INSERT INTO Amounts
 VALUES(900,50.50,'ounces','2022-11-23',111);

INSERT INTO Amounts
 VALUES(904,100.00,'ounces','2022-09-01',112);

INSERT INTO Amounts
 VALUES(902,130.70,'ounces','2022-05-10',113);

INSERT INTO Amounts
 VALUES(906,200.10,'ounces','2022-07-10',114);

INSERT INTO Amounts
 VALUES(931,25.20,'ounces','2022-04-22',115);

INSERT INTO Amounts
 VALUES(932,0.50,'grams','2022-08-03',116);

INSERT INTO Amounts
 VALUES(940,350,'quantity','2022-09-12',117);

INSERT INTO Amounts
 VALUES(640,295,'quantity','2022-12-10',118);

INSERT INTO Amounts
 VALUES(320,10.15,'ounces','2022-11-10',119);

INSERT INTO Amounts
 VALUES(310,7.80,'ounces','2021-12-20',120);

INSERT INTO Amounts
 VALUES(950,76.50,'ounces','2022-12-10',111);

INSERT INTO Amounts
 VALUES(934,210.00,'ounces','2022-05-02',112);

INSERT INTO Amounts
 VALUES(922,90.70,'ounces','2022-03-20',113);

INSERT INTO Amounts
 VALUES(946,100.10,'ounces','2022-06-12',114);

INSERT INTO Amounts
 VALUES(961,35.20,'ounces','2022-06-12',115);

INSERT INTO Amounts
 VALUES(982,0.20,'grams','2022-11-04',116);

INSERT INTO Amounts
 VALUES(980,250,'quantity','2022-03-22',117);

INSERT INTO Amounts
 VALUES(630,235,'quantity','2022-11-12',118);

INSERT INTO Amounts
 VALUES(311,11.15,'ounces','2022-08-20',119);

INSERT INTO Amounts
 VALUES(353,3.80,'ounces','2022-12-10',120);

 /* DELIVERIES */

INSERT INTO Deliveries
 VALUES(900432123,50.50,'ounces','2022-11-23',1029876654,1,900);

INSERT INTO Deliveries
 VALUES(944322304,100.00,'ounces','2022-09-01',5324326684,2,904);

INSERT INTO Deliveries
 VALUES(903321122,130.70,'ounces','2022-05-10',8629653814,3,353);

INSERT INTO Deliveries
 VALUES(954323406,200.10,'ounces','2022-07-10',4529875624,4,311);

INSERT INTO Deliveries
 VALUES(954323431,25.20,'ounces','2022-04-22',4858326659,5,630);

INSERT INTO Deliveries
 VALUES(935432342,0.50,'grams','2022-08-03',3332736123,6,980);

INSERT INTO Deliveries
 VALUES(940123543,350,'quantity','2022-09-12',3332736123,7,982);

INSERT INTO Deliveries
 VALUES(654323440,295,'quantity','2022-12-10',1111876444,8,961);

INSERT INTO Deliveries
 VALUES(326543450,10.15,'ounces','2022-11-10',1111876444,9,946);

INSERT INTO Deliveries
 VALUES(313213450,7.80,'ounces','2021-12-20',5432872345,10,922);

 /* Contracts */

INSERT INTO Contracts
 VALUES(783,'2021-10-10',26,16000,1029876654);

INSERT INTO Contracts
 VALUES(733,'2022-06-10',26,16000,1029876654);

INSERT INTO Contracts
 VALUES(85,'2021-12-10',36,26000,5432872345);

INSERT INTO Contracts
 VALUES(728,'2022-07-10',16,16500,1029876654);

INSERT INTO Contracts
 VALUES(438,'2021-03-10',16,13700,5432872345);

INSERT INTO Contracts
 VALUES(122,'2022-02-10',12,11200,5324326684);

INSERT INTO Contracts
 VALUES(655,'2021-05-10',36,9000,8629653814);

INSERT INTO Contracts
 VALUES(322,'2022-07-10',10,6800,1956436664);

INSERT INTO Contracts
 VALUES(116,'2021-03-10',16,26000,1956436664);

INSERT INTO Contracts
 VALUES(663,'2022-03-10',50,30000,8629653814);

 /* Contents of product */

INSERT INTO ContentsOfProduct
 VALUES(1,0.20,'ounces',111,1);

INSERT INTO ContentsOfProduct
 VALUES(2,0.10,'ounces',211,2);

INSERT INTO ContentsOfProduct
 VALUES(3,0.30,'ounces',311,3);

INSERT INTO ContentsOfProduct
 VALUES(4,0.50,'ounces',355,4);

INSERT INTO ContentsOfProduct
 VALUES(5,0.10,'ounces',488,5);

INSERT INTO ContentsOfProduct
 VALUES(6,0.20,'ounces',141,9);

INSERT INTO ContentsOfProduct
 VALUES(7,0.10,'ounces',272,10);

INSERT INTO ContentsOfProduct
 VALUES(8,0.30,'ounces',345,4);

 INSERT INTO ContentsOfProduct
 VALUES(9,0.30,'ounces',345,2);

  INSERT INTO ContentsOfProduct
 VALUES(10,0.30,'ounces',345,6);

INSERT INTO ContentsOfProduct
 VALUES(11,0.50,'ounces',312,5);

INSERT INTO ContentsOfProduct
 VALUES(12,0.10,'grams',463,1);

INSERT INTO ContentsOfProduct
 VALUES(13,0.25,'ounces',111,2);

INSERT INTO ContentsOfProduct
 VALUES(14,1,'quantity',211,8);

INSERT INTO ContentsOfProduct
 VALUES(15,0.10,'grams',311,6);

INSERT INTO ContentsOfProduct
 VALUES(16,4,'quantity',355,7);

INSERT INTO ContentsOfProduct
 VALUES(17,0.25,'grams',488,6);

INSERT INTO ContentsOfProduct
 VALUES(18,3,'quantity',141,8);

 INSERT INTO ContentsOfProduct
 VALUES(19,3,'quantity',141,9);

  INSERT INTO ContentsOfProduct
 VALUES(20,3,'quantity',141,1);

INSERT INTO ContentsOfProduct
 VALUES(21,0.12,'grams',272,6);

INSERT INTO ContentsOfProduct
 VALUES(22,3,'quantity',345,7);

INSERT INTO ContentsOfProduct
 VALUES(23,0.40,'ounces',312,3);

INSERT INTO ContentsOfProduct
 VALUES(24,0.10,'ounces',463,1);

 INSERT INTO ContentsOfProduct
 VALUES(25,0.10,'ounces',463,6);

 INSERT INTO ContentsOfProduct
 VALUES(26,0.10,'ounces',463,7);

 INSERT INTO ContentsOfProduct
 VALUES(27,0.10,'ounces',463,9);

/* TRANSACTIONS */

INSERT INTO Transactions
 VALUES(875489568,'2022-09-11',1024,5364);

INSERT INTO Transactions
 VALUES(735483745,'2022-03-23',3821.40,5663);

INSERT INTO Transactions
 VALUES(478293847,'2022-04-21',1424.60,9867);

INSERT INTO Transactions
 VALUES(112343754,'2022-12-01',2344.32,9867);

INSERT INTO Transactions
 VALUES(546324237,'2022-01-02',2800,1266);

INSERT INTO Transactions
 VALUES(543235224,'2022-02-14',590.99,5364);

INSERT INTO Transactions
 VALUES(648223456,'2022-10-10',1234.10,3360);

INSERT INTO Transactions
 VALUES(192812354,'2022-11-11',1544.60,6560);

INSERT INTO Transactions
 VALUES(321247583,'2022-05-08',10022,6560);

INSERT INTO Transactions
 VALUES(385354354,'2022-05-30',8877.90,6560);

/* OFFERS */

INSERT INTO Offers
 VALUES(11,1024,'2021-12-12','2022-12-12',111);

INSERT INTO Offers
 VALUES(22,3821.40,'2020-11-12','2022-12-12',211);

INSERT INTO Offers
 VALUES(33,712.30,'2020-11-12','2022-12-12',311);

INSERT INTO Offers
 VALUES(44,2344.32,'2020-10-12','2022-12-12',355);

INSERT INTO Offers
 VALUES(55,700,'2021-12-12','2022-12-12',488);

INSERT INTO Offers
 VALUES(66,590.99,'2021-12-12','2022-12-12',141);

INSERT INTO Offers
 VALUES(77,617.05,'2019-01-12','2022-12-12',272);

INSERT INTO Offers
 VALUES(88,1544.60,'2020-12-12','2022-12-12',345);

INSERT INTO Offers
 VALUES(99,8998,'2021-12-12','2022-12-12',312);

INSERT INTO Offers
 VALUES(19,8877.90,'2019-12-12','2022-12-12',463);

/* ITEMS */

INSERT INTO Items
 VALUES(321,111,1,875489568);

INSERT INTO Items
 VALUES(543,211,1,735483745);

INSERT INTO Items
 VALUES(936,311,2,478293847);

INSERT INTO Items
 VALUES(286,355,1,112343754);

INSERT INTO Items
 VALUES(745,488,4,546324237);

INSERT INTO Items
 VALUES(387,141,1,543235224);

INSERT INTO Items
 VALUES(475,272,2,648223456);

INSERT INTO Items
 VALUES(533,345,1,192812354);

INSERT INTO Items
 VALUES(322,111,1,321247583);

INSERT INTO Items
 VALUES(323,312,1,321247583);

INSERT INTO Items
 VALUES(664,463,1,385354354);

/* CONCERNS */

INSERT INTO Concerns
 VALUES(1,783);

INSERT INTO Concerns
 VALUES(2,733);

INSERT INTO Concerns
 VALUES(3,85);

INSERT INTO Concerns
 VALUES(4,728);

INSERT INTO Concerns
 VALUES(5,438);

INSERT INTO Concerns
 VALUES(6,122);

INSERT INTO Concerns
 VALUES(7,655);

INSERT INTO Concerns
 VALUES(8,322);

INSERT INTO Concerns
 VALUES(9,116);

INSERT INTO Concerns
 VALUES(10,663);