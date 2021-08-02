create table Product (model varchar(50),
 maker varchar(50),
 type varchar(50),
 CONSTRAINT product_pk PRIMARY KEY (model));

create table Printer (serial_number varchar(50),
 model varchar(50),
 price number,
 color varchar(50),
 type number, 
 CONSTRAINT printer_pk PRIMARY KEY (serial_number),
 CONSTRAINT printer_2_product_fk
 FOREIGN KEY (model)
 REFERENCES Product(model));

 create table Laptop (serial_number varchar(50),
 model varchar(50),
 price number,
 speed number,
 ram integer,
 hd varchar(50),
 screen varchar(50),
 CONSTRAINT laptop_pk PRIMARY KEY (serial_number),
 CONSTRAINT laptop_2_product_fk
 FOREIGN KEY (model)
 REFERENCES Product(model));

create table PC (serial_number varchar(50),
 model varchar(50),
 price number,
 speed number,
 ram number,
 hd varchar(50),
 cd varchar(50),
 CONSTRAINT pc_pk PRIMARY KEY (serial_number),
 CONSTRAINT pc_2_product_fk
 FOREIGN KEY (model)
 REFERENCES Product(model));

create table Storage (storage_id varchar(50),
 model varchar(50),
 serial_number varchar(50),
 transfered_to varchar(50));

insert into Product values ('s-1', 'Hitachi', 'laptop');

insert into Product values ('s-2', 'Hitachi', 'laptop');

insert into Product values ('s-3', 'Hitachi', 'laptop');

insert into Product values ('s-4', 'Hitachi', 'laptop');

insert into Product values ('s-5', 'Hitachi', 'laptop');

insert into Product values ('r-1', 'Lenovo', 'laptop');

insert into Product values ('r-2', 'Lenovo', 'laptop');

insert into Product values ('r-3', 'Lenovo', 'laptop');

insert into Product values ('t-4', 'Lenovo', 'laptop');

insert into Product values ('y-5', 'Lenovo', 'laptop');

insert into Laptop values ('1234211', 's-1', 500, 600, 2048, '600', '15.6');

insert into Laptop values ('1234212', 's-2', 600, 600, 4096, '600', '15.6');

insert into Laptop values ('1234213', 's-3', 700, 600, 4096, '600', '17.3');

insert into Laptop values ('1234214', 's-4', 800, 800, 4096, '600', '17.3');

insert into Laptop values ('1234215', 's-5', 1200, 1200, 8192, '1000', '17.3');

insert into Laptop values ('1234216', 'r-1', 900, 600, 2048, '600', '15.6');

insert into Laptop values ('1234217', 'r-2', 950, 600, 4096, '600', '15.6');

insert into Laptop values ('1234218', 'r-3', 1100, 600, 4096, '600', '17.3');

insert into Laptop values ('1234219', 't-4', 1500, 800, 4096, '600', '17.3');

insert into Laptop values ('1234220', 'y-5', 1700, 1200, 8192, '1000', '17.3');

insert into Product values ('d1', 'Dell', 'pc');

insert into Product values ('d2', 'Dell', 'pc');

insert into Product values ('d3', 'Dell', 'pc');

insert into Product values ('da', 'Dell', 'pc');

insert into Product values ('d zero', 'Dell', 'pc');

insert into Product values ('ib', 'IBM', 'pc');

insert into Product values ('ib2', 'IBM', 'pc');

insert into Product values ('ib3', 'IBM', 'pc');

insert into Product values ('ib4', 'IBM', 'pc');

insert into Product values ('ib5', 'IBM', 'pc');

insert into Product values ('s-4-pc', 'Hitachi', 'pc');

insert into Product values ('s-5-pc', 'Hitachi', 'pc');

insert into PC values ('1234221', 'd1', 500, 600, 2048, '600', 'hitachi');

insert into PC values ('1234222', 'd2', 600, 600, 4096, '600', null);

insert into PC values ('1234223', 'd3', 700, 600, 4096, '600', null);

insert into PC values ('1234224', 'da', 800, 800, 4096, '600', 'phillips');

insert into PC values ('1234225', 'd zero', 1200, 1200, 8192, '1000', 'phillips');

insert into PC values ('1234226', 'ib', 900, 600, 2048, '600', 'Panasonic');

insert into PC values ('1234227', 'ib2', 950, 600, 4096, '600', null);

insert into PC values ('1234228', 'ib3', 1100, 600, 4096, '600', null);

insert into PC values ('1234229', 'ib4', 1500, 800, 4096, '600', null);

insert into PC values ('1234230', 'ib5', 1700, 1200, 8192, '1000', 'Samsung');

insert into PC values ('1234241', 's-4-pc', 1800, 800, 4096, '600', null);

insert into PC values ('1234242', 's-5-pc', 1000, 1200, 8192, '1000', null);

insert into Product values ('hp1', 'HP', 'printer');

insert into Product values ('hp2', 'HP', 'printer');

insert into Product values ('hp3', 'HP', 'printer');

insert into Product values ('hp4', 'HP', 'printer');

insert into Product values ('hp colour 1', 'HP', 'printer');

insert into Product values ('k1', 'Kyocera', 'printer');

insert into Product values ('k2', 'Kyocera', 'printer');

insert into Product values ('k3', 'Kyocera', 'printer');

insert into Product values ('k4', 'Kyocera', 'printer');

insert into Product values ('k5', 'Kyocera', 'printer');

insert into Printer values ('1234231', 'hp1', 300, 'white', 0);

insert into Printer values ('1234232', 'hp2', 355, 'black', 0);

insert into Printer values ('1234233', 'hp3', 599, 'red', 0);

insert into Printer values ('1234234', 'hp4', 800, 'gray', 0);

insert into Printer values ('1234235', 'hp colour 1', 1500 ,'gold', 1);

insert into Printer values ('1234236', 'k1', 200, 'white', 0);

insert into Printer values ('1234237', 'k2', 370, 'black', 0);

insert into Printer values ('1234238', 'k3', 400, 'red', 0);

insert into Printer values ('1234239', 'k4', 600, 'gray', 1);

insert into Printer values ('1234240', 'k5', 650, 'gold', 1);

insert into Storage values ('50', 's-1', '1234211', 51);

insert into Storage values ('50', 's-2', '1234212', 51);

insert into Storage values ('50', 's-3', '1234213', 51);

insert into Storage values ('50', 's-4', '1234214', null);

insert into Storage values ('50', 's-5', '1234215', null);

insert into Storage values ('50', 'r-1', '1234216', null);

insert into Storage values ('50', 'r-2', '1234217', null);

insert into Storage values ('50', 'r-3', '1234218', null);

insert into Storage values ('50', 't-4', '1234219', null);

insert into Storage values ('50', 'y-5', '1234220', null);

insert into Storage values ('50', 'd1', '1234221', null);

insert into Storage values ('50', 'd2', '1234222', null);

insert into Storage values ('50', 'd3', '1234223', null);

insert into Storage values ('50', 'da', '1234224', null);

insert into Storage values ('50', 'd zero', '1234225', null);

insert into Storage values ('50', 'ib', '1234226', null);

insert into Storage values ('50', 'ib2', '1234227', null);

insert into Storage values ('50', 'ib3', '1234228', 51);

insert into Storage values ('50', 'ib4', '1234229', 51);

insert into Storage values ('50', 'ib5', '1234230', 51);

insert into Storage values ('50', 'hp1', '1234231', null);

insert into Storage values ('50', 'hp2', '1234232', null);

insert into Storage values ('50', 'hp3', '1234233', null);

insert into Storage values ('50', 'hp4', '1234234', null);

insert into Storage values ('50', 'hp colour 1', '1234235', null);

insert into Storage values ('50', 'k1', '1234236', null);

insert into Storage values ('50', 'k2', '1234237', null);

insert into Storage values ('50', 'k3', '1234238', 51);

insert into Storage values ('50', 'k4', '1234239', 51);

insert into Storage values ('50', 'k5', '1234240', 51);

insert into Storage values ('51', 'ib3', '1234228', 52);

insert into Storage values ('51', 'ib4', '1234229', 52);

insert into Storage values ('51', 'ib5', '1234230', 52);

insert into Storage values ('51', 'k3', '1234238', 52);

insert into Storage values ('51', 'k4', '1234239', 55);

insert into Storage values ('51', 'k5', '1234240', 54);

insert into Storage values ('51', 's-1', '1234211', null);

insert into Storage values ('51', 's-2', '1234212', null);

insert into Storage values ('51', 's-3', '1234213', null);

insert into Storage values ('52', 'ib3', '1234228', null);

insert into Storage values ('52', 'ib4', '1234229', NULL);

insert into Storage values ('52', 'ib5', '1234230', null);

insert into Storage values ('52', 'k4', '1234239', 100);

insert into Storage values ('53', 'k5', '1234240', 100);

UPDATE Storage SET transfered_to='invalid_destination' WHERE transfered_to=100;

SELECT * FROM Product WHERE Maker='Dell';

SELECT * FROM Product WHERE Maker LIKE '%Dell%';

DELETE FROM Storage WHERE transfered_to='invalid_destination';

SELECT * FROM STORAGE WHERE transfered_to='invalid_destination';

SELECT PR.Model, PR.Price, P.Maker FROM Product P, Printer PR 
WHERE PR.Price = (SELECT MAX(Price) FROM Printer) AND P.Model=PR.Model;

SELECT L.Model, L.Price, P.Maker FROM Product P, Laptop L 
WHERE L.Price = (SELECT MAX(Price) FROM Laptop) AND P.Model=L.Model;

SELECT PC.Model, PC.Price, P.Maker FROM Product P, PC PC 
WHERE PC.Price = (SELECT MAX(Price) FROM PC) AND P.Model=PC.Model;

SELECT COUNT(*) FROM Product P WHERE P.Maker LIKE '%Hitachi%' AND P.Type = 'laptop';

SELECT PR.Serial_number,P.Maker, P.Model, PR.Price, P.Type FROM  
Product P, Printer PR WHERE P.Model=PR.Model 
UNION ALL   
SELECT PC.Serial_number,P.Maker, P.Model, PC.Price, P.Type FROM  
Product P, PC PC WHERE P.Model=PC.Model 
UNION ALL   
SELECT L.Serial_number,P.Maker, P.Model, L.Price, P.Type FROM  
Product P, Laptop L WHERE P.Model=L.Model 
ORDER BY Price DESC;

DECLARE @CantMakerPC AS INT; 
SET @CantMakerPC(SELECT COUNT(Maker) FROM Product WHERE Type='PC' GROUP BY Maker)  
DECLARE @CantMakerLaptop AS INT; 
SET @CantMakerLaptop(SELECT COUNT(Maker) FROM Product WHERE Type='Laptop' GROUP BY Maker)  
DECLARE @CantMakerPrinter AS INT; 
SET @CantMakerPrinter (SELECT COUNT(Maker) FROM Product WHERE Type='Printer' GROUP BY Maker); 
SELECT Maker FROM Product WHERE @CantMakerPrinter>@CantMakerLaptop  
OR @CantMakerPrinter>@CantMakerPC ; 
/

SELECT Maker FROM Product GROUP BY Maker HAVING 
SUM(CASE WHEN Type LIKE '%pc%' THEN 1 ELSE 0 END)>0 
AND SUM (CASE WHEN Type LIKE  '%printer%' THEN 1 ELSE 0 END)=0 
AND SUM (CASE WHEN Type LIKE  '%laptop%' THEN 1 ELSE 0 END)=0;

SELECT PC.Serial_number, P.Maker, PC.Price FROM Product P, PC PC WHERE 
PC.CD IS NULL AND PC.Price = (SELECT MAX(PC.Price) FROM PC PC) AND P.Model=PC.Model;

SELECT DISTINCT P.Maker, 
PC.Speed, PC.HD, PC.Serial_number, PC.Price, PC.Ram 
FROM Product P INNER JOIN PC ON P.Model=PC.Model 
WHERE PC.HD = (SELECT MIN(HD) FROM PC) AND 
PC.Ram = (SELECT MAX(Ram) FROM PC WHERE 
Speed= (SELECT MAX(Speed) FROM PC)) 
UNION  
SELECT DISTINCT P.Maker, 
Laptop.Speed, Laptop.HD, Laptop.Serial_number, Laptop.Price, Laptop.Ram 
FROM Product P INNER JOIN Laptop ON P.Model=Laptop.Model 
WHERE Laptop.HD = (SELECT MIN(HD) FROM PC) AND 
Laptop.Ram = (SELECT MAX(Ram) FROM PC WHERE 
Speed= (SELECT MAX(Speed) FROM PC)) ORDER BY Price ASC;

SELECT DISTINCT P.Maker, 
PC.Speed, PC.HD, PC.Serial_number, PC.Price, PC.Ram 
FROM Product P INNER JOIN PC ON P.Model=PC.Model 
WHERE PC.HD = (SELECT MIN(HD) FROM PC) AND 
PC.Ram = (SELECT MAX(Ram) FROM PC WHERE 
Speed= (SELECT MAX(Speed) FROM PC)) 
UNION  
SELECT DISTINCT P.Maker, 
Laptop.Speed, Laptop.HD, Laptop.Serial_number, Laptop.Price, Laptop.Ram 
FROM Product P INNER JOIN Laptop ON P.Model=Laptop.Model 
WHERE Laptop.HD = (SELECT MIN(HD) FROM PC) AND 
Laptop.Ram = (SELECT MAX(Ram) FROM PC WHERE 
Speed= (SELECT MAX(Speed) FROM PC)) ORDER BY Price DESC;

