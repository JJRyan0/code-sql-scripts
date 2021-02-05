DROP DATABASE IF EXISTS GameStore;
CREATE DATABASE GameStore;
USE GameStore;

CREATE TABLE Store(
Snum VARCHAR(4) NOT NULL, 
Street VARCHAR(40),
Area VARCHAR(20),
City VARCHAR(20), 
Post_Code VARCHAR(9) NOT NULL, 
Tel_No VARCHAR(12) NOT NULL, 
Fax_No VARCHAR(20),
PRIMARY KEY (Snum)
);

INSERT INTO Store VALUES (
"28c"," Park Ave Road","Linkstown","Dublin","D12","01-899612","01-8861234"
);

CREATE TABLE Customer(
Customer_Id int(25) NOT NULL,
Membership_Id int(25) NOT NULL,
Title CHAR(6) NULL,
First_Name VARCHAR(12) NOT NULL ,
Middle_Name VARCHAR(12) NOT NULL ,
Last_Name VARCHAR(15) NOT NULL ,
Gender_MF VARCHAR(7) NOT NULL ,
Date_Of_Birth DATE NOT NULL ,
Contact_Details VARCHAR(20) NOT NULL ,
PRIMARY KEY (Customer_Id)
);

INSERT INTO Customer VALUES (
"234","100012345","Mr","James","J","Byrne","M","1987-02-06","01-899612"
);

INSERT INTO Customer VALUES (
"245","100012355","Mr","Edward","James","Price","M","1977-04-09","01-199542"
);

INSERT INTO Customer VALUES (
"277","100012345","Mr","Frank","John","Murphy","M","1967-11-11","01-898432"
);

INSERT INTO Customer VALUES (
"289","100012345","Mr","Peter","S","Craig","M","1980-05-06","01-199792"
);

INSERT INTO Customer VALUES (
"334","100012345","Mr","Pat","William","Ryan","M","1968-07-01","01-194592"
);
CREATE TABLE Address(
Address_Id           int(25) NOT NULL,
Address_1            VARCHAR(30) NOT NULL,
Address_2            VARCHAR(30) NOT NULL,
City_Town            VARCHAR(18) NOT NULL, 
Province             VARCHAR(18) NOT NULL,
Country              VARCHAR(10) NOT NULL, 
PRIMARY KEY (Address_Id)
);

INSERT INTO Address VALUES (
"28","Claertown Ave","Hill St","Markethill","Leinster", "Ireland"
);

INSERT INTO Address VALUES (
"29","Johns Row","Carpenterstown","Wellingtonbridge","Leinster", "Ireland"
);

INSERT INTO Address VALUES (
"30","Chapel St","Mercantile","Wellingtonbridge","Munster", "Ireland"
);

INSERT INTO Address VALUES (
"40","Peters Lane","Village","Glenageary","Munster", "Ireland"
);

	
CREATE TABLE Employee(
Employee_ID          int(25) NOT NULL,
Employee_Full_Name   VARCHAR(30) NOT NULL,
Employee_Position    VARCHAR(20) NOT NULL,
Salary 		         DECIMAL(9,2),
Address		         VARCHAR(40),
Tel_Num		         VARCHAR(20),
Employee_Email       VARCHAR(15) NOT NULL,
Mobile_Device_Id     int(15) NOT NULL,
Gender               VARCHAR(3) NOT NULL,
DOB                  DATE NOT NULL,
Desktop_Id           VARCHAR(15) NOT NULL,
PRIMARY KEY (Employee_Id)
);

INSERT INTO Employee VALUES (
"13","JohnRyan","Cashier",32000,"15 Mannor St,Dublin","01-8455177","jryan@live.ie",1234678990,"M","1986-10-10","GS453917A"
);


INSERT INTO Employee VALUES (
"17","BillBanks","Assistant Manager",42000,"81 George St,Dublin","01-8493385","bbanks@live.ie",1234678997,"F","1980-01-12","GS452514A"
);

CREATE TABLE Commission
(
	Commission_Id        int(25) NOT NULL ,
	Commission_Amount    DECIMAL(5,3) NULL ,
	Commission_Date      DATE NOT NULL ,
	PRIMARY KEY (Commission_Id)
    );
INSERT INTO Commission VALUES (
"17000001",10.02,"2015-12-12"
);

INSERT INTO Commission VALUES (
"17000003",13.02,"2015-12-12"
);

INSERT INTO Commission VALUES (
"17000022",09.04,"2015-11-12"
);

INSERT INTO Commission VALUES (
"19000001",12.00,"2015-09-09"
);

CREATE TABLE Customer_Complaints_Support
(
	Customer_Support_Id  int(15) NOT NULL,
	Transaction_Date     DATE NOT NULL,
	Outcome              VARCHAR(200) NOT NULL,
	Customer_Id          int(25) NOT NULL,
	Employee_Id          int(25) NOT NULL,
PRIMARY KEY (Customer_id, Employee_id)
);

CREATE TABLE Rent_Renewal(
	Rent_Renewal_Id       int(25) NOT NULL,
	Payment_Freq          DATE NOT NULL,
	Payment_Due_Requested DATE NULL,
	Payment_Recieved      boolean NOT NULL,
	Automatic_Rollover    boolean NOT NULL,
PRIMARY KEY (Rent_Renewal_Id)
);
CREATE TABLE Fee
(
	Fee_Id                int(25) NOT NULL,
	Late_Fee_Amount       DECIMAL(4,2) NOT NULL,
	Fee_Issue_date        DATE NOT NULL,
	Rent_Renewal_ID       int(25) NOT NULL,
PRIMARY KEY (Rent_Renewal_Id)
);

CREATE TABLE Payment
(
	Payment_Id           int(25) NOT NULL,
	Payment_Date         DATE NOT NULL,
	Payment_Type         VARCHAR(15) NOT NULL,  
	Payment_Method       VARCHAR(15) NOT NULL,  
	Payment_Schedule     VARCHAR(15) NOT NULL,
	Payment_Amount	     DECIMaL(3,2) NOT NULL,
PRIMARY KEY (Payment_Id)
);
CREATE TABLE Reciept
(
	Reciept_Id           int(25) NOT NULL ,
	Reciept_Date         DATE NOT NULL ,
	Sent_By              VARCHAR(20) NOT NULL ,

PRIMARY KEY (Reciept_Id)
);
CREATE TABLE Games
(
	Game_ID             int(25) NOT NULL ,
	Game_Name           VARCHAR(50) NULL ,
	Last_Update         TIMESTAMP,
	Renewal_Date        DATE NOT NULL ,
	Rental_Status       VARCHAR(9) NOT NULL ,
	Release_Date        DATE NOT NULL ,
	Max_Rent_Time       varchar(13),
	Due_Date  	        DATE NOT NULL ,
PRIMARY KEY (Game_Id)
);

INSERT INTO Games Values(
"56","FIFA","2015-05-24","2015-06-24","Due","2014-05-01","One Month","2014-01-01"
);

INSERT INTO Games Values(
"59","Kill Zone","2015-06-24","2015-06-29","On Rent","2014-05-01","One Month","2014-01-01"
);

INSERT INTO Games Values(
"99","Mario Cart","2015-03-24","2015-05-29","On Rent","2014-05-01","One Month","2014-01-01"
);

CREATE TABLE Game_Platform
(
	Game_Platform_Code     int(25) NOT NULL ,
	Game_Platform_Name     VARCHAR(20) NOT NULL ,
	Game_Platform_Description VARCHAR(200) NOT NULL ,
	
PRIMARY KEY (Game_Platform_Code)
);
INSERT INTO Game_Platform Values(
"5","PS4","Sony Playstation 4"
);

INSERT INTO Game_Platform Values(
"3","Xbox","Microsoft Xbox360"
);

INSERT INTO Game_Platform Values(
"1","Nintendo Wii","Unknown"
);


CREATE TABLE Rental
(
	Rental_Id          INT(10) NOT NULL ,
	Rental_Date        VARCHAR(20) NOT NULL ,
	Rental_Amount	   DECIMAL (3,2) ,
	Return_Date        DATE NOT NULL ,
PRIMARY KEY (Rental_Id)
);
INSERT INTO Rental VALUES (
"284","2015-06-24","04.50","2015-07-29"
);

INSERT INTO Rental VALUES (
"2855","2015-06-26","05.90","2015-07-30"
);

INSERT INTO Rental VALUES (
"28589","2015-06-23","03.90","2015-07-28"
);

INSERT INTO Rental VALUES (
"245","2015-06-21","04.50","2015-07-29"
);

CREATE TABLE Stock_Order_Details
(
  Order_Num    int(11) NOT NULL,
  Order_Quant int(11) NOT NULL,
  Order_Date  DATE NOT NULL,
Population_Timestamp TIMESTAMP,

PRIMARY KEY (Order_Num)
);

CREATE TABLE Stock_Inventory
(
	Stock_Id             INT(10) NOT NULL ,
	Rental_Id            VARCHAR(20) NOT NULL ,
	Store_Id             int(25) NOT NULL ,
	Game_Id              int(25) NOT NULL ,
	Movie_ID             int(25) NOT NULL ,
	Population_Timestamp TIMESTAMP,
PRIMARY KEY (Stock_Id)
);
CREATE TABLE Discount
(
	Discount_Id          int(25) NOT NULL ,
	Discount_Amount      DECIMAL(3,2) NULL ,
	Discount_Type        VARCHAR(20) NULL ,
	Total_Amount         int(25) NOT NULL ,
	Rental_Id            int(25) NOT NULL ,
	Reciept_Id           int(25) NOT NULL,
    Renewal_Id           int(25) NOT NULL,
	Population_Timestamp TIMESTAMP, 
Primary Key (Discount_Id)
);

)
ALTER TABLE Stock_Order_Details add CONSTRAINT r_ibfk_1 FOREIGN KEY (Renewal_Id) REFERENCES Rent_Renewal (Renewal_Id)
ALTER TABLE Stock_Order_Details add CONSTRAINT r_ibfk_2 FOREIGN KEY (Game_Id) REFERENCES Game (Game_Id)
ALTER TABLE Stock_Order_Details add CONSTRAINT r_ibfk_3 FOREIGN KEY (Customer_Id) REFERENCES Customer (Customer_Id)
ALTER TABLE Stock_Order_Details add CONSTRAINT r_ibfk_4 FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id)
);

)
ALTER TABLE Stock_inventory add CONSTRAINT invent_ibfk_1 FOREIGN KEY (Renewal_Id) REFERENCES Rent_Renewal (Renewal_Id),
ALTER TABLE Stock_inventory add CONSTRAINT invent_ibfk_2 FOREIGN KEY (Game_Id) REFERENCES Game (Game_Id),
ALTER TABLE Stock_inventory add CONSTRAINT invent_ibfk_3 FOREIGN KEY (Customer_Id) REFERENCES Customer (Customer_Id),
ALTER TABLE Stock_inventory add CONSTRAINT invent_ibfk_4 FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id)
);

)
ALTER TABLE Discount ADD CONSTRAINT dis_ibfk_1 FOREIGN KEY (Renewal_Id) REFERENCES Rent_Renewal (Renewal_Id)
ALTER TABLE Discount ADD CONSTRAINT dis_ibfk_2 FOREIGN KEY (Game_Id) REFERENCES Game (Game_Id),
ALTER TABLE Discount ADD CONSTRAINT dis_ibfk_3 FOREIGN KEY (Customer_Id) REFERENCES Customer (Customer_Id),
ALTER TABLE Discount ADD CONSTRAINT dis_ibfk_4 FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id),
ALTER TABLE Discount ADD CONSTRAINT dis_ibfk_5 FOREIGN KEY (Payment_Id) REFERENCES Payment (Payment_Id),
);

ALTER TABLE Rental ADD CONSTRAINT rental_ibfk_1 FOREIGN KEY (Renewal_Id) REFERENCES Rent_Renewal (Renewal_Id),
ALTER TABLE Rental ADD CONSTRAINT rental_ibfk_2 FOREIGN KEY (Game_Id) REFERENCES Game (Game_Id),
ALTER TABLE Rental ADD CONSTRAINT rental_ibfk_3 FOREIGN KEY (Customer_Id) REFERENCES Customer (Customer_Id),
ALTER TABLE Rental ADD CONSTRAINT rental_ibfk_4 FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id),
);

)
ALTER TABLE Game_Platform ADD CONSTRAINT Platform_ibfk_1 FOREIGN KEY (Renewal_Id) REFERENCES Rent_Renewal (Renewal_Id),
ALTER TABLE Game_Platform ADD CONSTRAINT Platform_ibfk_2 FOREIGN KEY (Rental_Id) REFERENCES Rental (Rental_Id),
ALTER TABLE Game_Platform ADD CONSTRAINT Platform_ibfk_3 FOREIGN KEY (Customer_Id) REFERENCES Customer (Customer_Id),
ALTER TABLE Game_Platform ADD CONSTRAINT Platform_ibfk_4 FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id),
ALTER TABLE Game_Platform ADD CONSTRAINT Platform_ibfk_5 FOREIGN KEY (Order_Num) REFERENCES Stock_Order_Details (Order_Num)
);

)
ALTER TABLE Games ADD CONSTRAINT Plat_ibfk_1 FOREIGN KEY (Renewal_Id) REFERENCES Rent_Renewal (Renewal_Id),
ALTER TABLE Games ADD CONSTRAINT Plat_ibfk_2 FOREIGN KEY (Rental_Id) REFERENCES Rental (Rental_Id),
ALTER TABLE Games ADD CONSTRAINT Plat_ibfk_3 FOREIGN KEY (Customer_Id) REFERENCES Customer (Customer_Id),
ALTER TABLE Games ADD CONSTRAINT Plat_ibfk_4 FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id),
ALTER TABLE Games ADD CONSTRAINT Plat_ibfk_5 FOREIGN KEY (Order_Num) REFERENCES Stock_Order_Details (Order_Num)
);

)
ALTER TABLE Reciept ADD CONSTRAINT Payment_ibfk_1 FOREIGN KEY (Rent_Renewal_Id) REFERENCES Rent_Renewal (Rent_Renewal_Id),
ALTER TABLE Reciept ADD CONSTRAINT Payment_ibfk_2 FOREIGN KEY (Invoice_Id) REFERENCES Invoice (Invoice_Id),
ALTER TABLE Reciept ADD CONSTRAINT Payment_ibfk_3 FOREIGN KEY (Rental_Id) REFERENCES Rental (Rental_Id),
ALTER TABLE Reciept ADD CONSTRAINT Payment_ibfk_4 FOREIGN KEY (Customer_Id) REFERENCES Customer (Customer_Id),
ALTER TABLE Reciept ADD CONSTRAINT Payment_ibfk_6 FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id),
ALTER TABLE Reciept ADD CONSTRAINT Payment_ibfk_7 FOREIGN KEY (Reciept_Id) REFERENCES Reciept (Reciept_Id),
ALTER TABLE Reciept ADD CONSTRAINT Payment_ibfk_8 FOREIGN KEY (Fee_Id) REFERENCES Fee (Fee_Id),
);

)
ALTER TABLE Payment ADD CONSTRAINT Payment_ibfk_1 FOREIGN KEY (Rent_Renewal_Id) REFERENCES Rent_Renewal (Rent_Renewal_Id),
ALTER TABLE Payment ADD CONSTRAINT Payment_ibfk_2 FOREIGN KEY (Invoice_Id) REFERENCES Invoice (Invoice_Id),
ALTER TABLE Payment ADD CONSTRAINT Payment_ibfk_3 FOREIGN KEY (Rental_Id) REFERENCES Rental (Rental_Id),
ALTER TABLE Payment ADD CONSTRAINT Payment_ibfk_4 FOREIGN KEY (Customer_Id) REFERENCES Customer (Customer_Id),
ALTER TABLE Payment ADD CONSTRAINT Payment_ibfk_5 FOREIGN KEY (Payment_Id) REFERENCES Payment (Payment_Id),
ALTER TABLE Payment ADD CONSTRAINT Payment_ibfk_6 FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id),
ALTER TABLE Payment ADD CONSTRAINT Payment_ibfk_7 FOREIGN KEY (Reciept_Id) REFERENCES Reciept (Reciept_Id),
ALTER TABLE Payment ADD CONSTRAINT Payment_ibfk_8 FOREIGN KEY (Fee_Id) REFERENCES Fee (Fee_Id),
);

)
ALTER TABLE fee ADD CONSTRAINT fee_ibfk_1 FOREIGN KEY (Rent_Renewal_Id) REFERENCES Rent_Renewal (Rent_Renewal_Id),
ALTER TABLE fee ADD CONSTRAINT fee_ibfk_2 FOREIGN KEY (Stock_Id) REFERENCES Stock_Inventory (Stock_Id),
ALTER TABLE fee ADD CONSTRAINT fee_ibfk_3 FOREIGN KEY (Rental_Id) REFERENCES Rental (Rental_Id),
ALTER TABLE fee ADD CONSTRAINT fee_ibfk_4 FOREIGN KEY (Customer_Id) REFERENCES Customer (Customer_Id),
ALTER TABLE fee ADD CONSTRAINT fee_ibfk_5 FOREIGN KEY (Payment_Id) REFERENCES Payment (Payment_Id),
);

)
ALTER TABLE Rent_Renewal ADD CONSTRAINT renew_ibfk_1 FOREIGN KEY (Rent_Renewal_Id) REFERENCES Rent_Renewal (Rent_Renewal_Id),
ALTER TABLE Rent_Renewal ADD CONSTRAINT renew_ibfk_2 FOREIGN KEY (Stock_Id) REFERENCES Stock_Inventory (Stock_Id),
ALTER TABLE Rent_Renewal ADD CONSTRAINT renew_ibfk_3 FOREIGN KEY (Rental_Id) REFERENCES Rental (Rental_Id),
ALTER TABLE Rent_Renewal ADD CONSTRAINT renew_ibfk_4 FOREIGN KEY (Customer_Id) REFERENCES Customer (Customer_Id),
);

)
ALTER TABLE Customer_Complaints_Support ADD CONSTRAINT support_ibfk_1 FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id),
ALTER TABLE Customer_Complaints_Support ADD CONSTRAINT support_ibfk_2 FOREIGN KEY (Store_Id) REFERENCES Store (Store_Id),
ALTER TABLE Customer_Complaints_Support ADD CONSTRAINT support_ibfk_3 FOREIGN KEY (Rental_Id) REFERENCES Rental (Rental_Id),
ALTER TABLE Customer_Complaints_Support ADD CONSTRAINT support_ibfk_4 FOREIGN KEY (Customer_Id) REFERENCES Customer (Customer_Id),
);

)
ALTER TABLE Commission ADD CONSTRAINT commission_ibfk_1 FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id),
ALTER TABLE Commission ADD CONSTRAINT commission_ibfk_2 FOREIGN KEY (Store_Id) REFERENCES Store (Store_Id),
ALTER TABLE Commission ADD CONSTRAINT commission_ibfk_3 FOREIGN KEY (Rental_Id) REFERENCES Rental (Rental_Id),
ALTER TABLE Commission ADD CONSTRAINT commission_ibfk_4 FOREIGN KEY (Customer_Id) REFERENCES Customer (Customer_Id),
ALTER TABLE Commission ADD CONSTRAINT commission_ibfk_3 FOREIGN KEY (Movie_Id) REFERENCES Movie (Movie_Id),
ALTER TABLE Commission ADD CONSTRAINT commission_ibfk_3 FOREIGN KEY (Game_Id) REFERENCES Game (Game_Id)
);

)
ALTER TABLE Empolyee ADD CONSTRAINT employee_ibfk_1 FOREIGN KEY (Address_Id) REFERENCES Address (Address_Id),
ALTER TABLE Empolyee ADD CONSTRAINT employee_ibfk_2 FOREIGN KEY (Store_Id) REFERENCES Store (Store_Id),
ALTER TABLE Empolyee ADD CONSTRAINT employee_ibfk_3 FOREIGN KEY (Rental_Id) REFERENCES Rental (Employee_Id),
ALTER TABLE Empolyee ADD CONSTRAINT employee_ibfk_4 FOREIGN KEY (Customer_Id) REFERENCES Customer (Customer_Id),
ALTER TABLE Empolyee ADD CONSTRAINT employee_ibfk_5 FOREIGN KEY (Customer_Support_Id) REFERENCES Customer_Complaints_Support (Customer_Support_Id),
ALTER TABLE Empolyee ADD CONSTRAINT employee_ibfk_6 FOREIGN KEY (Commission_Id) REFERENCES Commission (Commission_Id),
);

)
ALTER TABLE Address ADD CONSTRAINT address_ibfk_1 FOREIGN KEY (Address_Id) REFERENCES Address (Address_Id),
ALTER TABLE Address ADD CONSTRAINT address_ibfk_2 FOREIGN KEY (Store_Id) REFERENCES Store (Store_Id),
ALTER TABLE Address ADD CONSTRAINT address_ibfk_3 FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id),
ALTER TABLE Address ADD CONSTRAINT address_ibfk_4 FOREIGN KEY (Customer_Id) REFERENCES Customer (Customer_Id),
ALTER TABLE Address ADD CONSTRAINT  City_Town CHECK (City_Town IN ('Abbeyfeale', 'Abbeyleix', 'Abbeyshrule', 'Achill', 'Adare', 'Adrigole', 'Aghaboe', 'Aghadowey', 'Allihies',
 'Anascaul', 'Annacotty', 'Annaghdown', 'Annagry', 'Annalong', 'Annamoe', 'Annestown', 'Antrim Town', 'Ardagh', 'Ardagh', 
 'Ardara', 'Ardee', 'Ardfinnan', 'Ardglass', 'Ardgroom', 'Ardmore', 'Ardrahan', 'Ards', 'Arigna', 'Arklow', 'Armagh Town',
 'Arranmore Island', 'Artane', 'Arthurstown', 'Arvagh', 'Ashbourne', 'Ashford', 'Ashtown', 'Askeaton', 'Athboy', 'Athea', 
 'Athenry', 'Athleague', 'Athlone', 'Athlone', 'Athy', 'Aughavas', 'Augher', 'Aughnacliffe', 'Aughnacloy', 'Aughrim', 
 'Aughrim', 'Avoca', 'Bagenalstown', 'Bailieborough', 'Balbriggan', 'Balgriffin', 'Balla', 'Ballacolla', 'Ballagh', 
 'Ballaghaderreen', 'Ballickmoyler', 'Ballina', 'Ballina', 'Ballinagh', 'Ballinakill', 'Ballinakill', 'Ballinalee', 
 'Ballinamallard', 'Ballinamore', 'Ballinamuck', 'Ballinascarty', 'Ballinasloe', 'Ballincar', 'Ballincollig', 'Ballinderry',
 'Ballineen', 'Ballinfull', 'Ballingarry', 'Ballingeary', 'Ballinhassig', 'Ballinlough', 'Ballinode', 'Ballinrobe', 'Ballinskelligs',
 'Ballinteer', 'Ballintogher', 'Ballintoy', 'Ballintubber', 'Ballintubber', 'Ballisodare', 'Ballitore', 'Ballon', 'Ballsbridge',
 'Ballyadams', 'Ballybay', 'Ballybofey', 'Ballybrit', 'Ballybrittas', 'Ballybunion', 'Ballycasey', 'Ballycastle', 'Ballycastle',
 'Ballyclare', 'Ballyconneely', 'Ballyconnell', 'Ballycotton', 'Ballydehob', 'Ballyduff', 'Ballyfermot', 'Ballyferriter', 
 'Ballyfin', 'Ballyfoyle', 'Ballygally', 'Ballygar', 'Ballygarvan', 'Ballygawley', 'Ballygawley', 'Ballyglunin', 'Ballyhack', 
 'Ballyhaunis', 'Ballyheigue', 'Ballyhugh', 'Ballyjamesduff', 'Ballylane', 'Ballylickey', 'Ballyliffin', 'Ballylongford', 
 'Ballymacarbry', 'Ballymahon', 'Ballymena', 'Ballymoe', 'Ballymoney', 'Ballymoney', 'Ballymore', 'Ballymore Eustace', 
 'Ballymote', 'Ballymun', 'Ballynahinch', 'Ballyneety', 'Ballynoe', 'Ballynure', 'Ballyragget', 'Ballyroan', 'Ballyshannon', 
 'Ballytiwnan', 'Ballyvaughan', 'Ballyvolane', 'Ballyvourney', 'Ballywalter', 'Baltimore', 'Baltinglass', 'Baltray', 'Banagher', 
 'Banbridge', 'Bandon', 'Bangor', 'Bangor Erris', 'Bannow', 'Bansha', 'Banteer', 'Bantry', 'Barefield', 'Barna', 'Barnesmore',
 'Barntown', 'Batterstown', 'Bawnboy', 'Bealadangan', 'Beara', 'Beaufort', 'Beaumont', 'Belcoo', 'Belfast City', 'Belfield',
 'Bellaghy', 'Bellanaleck', 'Belleek', 'Bellewstown', 'Bellharbour', 'Belmullet', 'Belturbet', 'Bennettsbridge', 'Bere Island', 
 'Bettystown', 'Birdhill', 'Birr', 'Bishopstown', 'Blacklion', 'Blackpool', 'Blackrock', 'Blackrock', 'Blackrock', 'Blackwater',
 'Blackwatertown', 'Blanchardstown', 'Blaney', 'Blarney', 'Blennerville', 'Blessington', 'Bodyke', 'Bohernabreena', 'Booterstown', 
 'Borris', 'Borris-in-Ossory', 'Borrisokane', 'Boyle', 'Brandon', 'Brannockstown', 'Bray', 'Bridgetown', 'Brittas Bay', 'Broadford', 
 'Broadford', 'Brookeborough', 'Brosna', 'Broughshane', 'Bruckless', 'Bruff', 'Bruree', 'Bunbeg', 'Bunclody', 'Buncrana', 'Bundoran',
 'Bunmahon', 'Bunratty', 'Burnfoot', 'Burren', 'Burtonport', 'Bushmills', 'Butlerstown', 'Butlerstown', 'Buttevant', 'Bweeng', 
 'Cabinteely', 'Caherdaniel', 'Caherlistrane', 'Cahir', 'Cahirciveen', 'Cahore', 'Callan', 'Camolin', 'Camp', 'Campile', 
 'Cape Clear', 'Cappamore', 'Cappoquin', 'Caragh Lake', 'Carbury', 'Carlingford', 'Carlow Town', 'Carna', 'Carndonagh', 'Carne', 
 'Carnew', 'Carney', 'Carnlough', 'Carnmore', 'Carraroe', 'Carrick', 'Carrickfergus', 'Carrickmacross', 'Carrick-on-Shannon', 
 'Carrick-on-Suir', 'Carrigaholt', 'Carrigaline', 'Carrigallen', 'Carrigans', 'Carrigart', 'Carrigeen', 'Carrigtwohill', 'Carron', 
 'Cashel', 'Cashel', 'Cashel Bay', 'Castlebaldwin', 'Castlebar', 'Castlebellingham', 'Castleblayney', 'Castlebridge', 'Castlecomer', 
 'Castleconnell', 'Castlecoote', 'Castlecove', 'Castledawson', 'Castlederg', 'Castledermot', 'Castlegar', 'Castlegregory',
 'Castleisland', 'Castleknock', 'Castlelyons', 'Castlemaine', 'Castlemartyr', 'Castlepollard', 'Castlerea', 'Castlerock',
 'Castletown', 'Castletown Geoghegan', 'Castletownbere', 'Castletownroche', 'Castletownshend', 'Castletroy', 'Castlewarren',
 'Castlewellan', 'Cavan Town', 'Celbridge', 'Chapelizod', 'Charlestown', 'Charleville', 'Cheekpoint', 'Christchurch',
 'Churchill', 'Churchtown', 'Churchtown', 'Citywest', 'Clane', 'Clare Island', 'Clarecastle', 'Claregalway', 'Claremorris', 
 'Clarinbridge', 'Clashmore', 'Claudy', 'Cleggan', 'Clifden', 'Clifden', 'Cliffony', 'Cloghan', 'Cloghane', 'Clogheen', 'Clogher',
 'Clogherhead', 'Cloghran', 'Clonakilty', 'Clonaslee', 'Clonbur', 'Clondalkin', 'Clondra', 'Clonee', 'Clonegal', 'Clones',
 'Clonmacnoise', 'Clonmel', 'Clonmellon', 'Clonmore', 'Clonnagh', 'Clonsilla', 'Clonskeagh', 'Clontarf', 'Cloughmills', 'Cloyne', 'Coachford', 'Coagh', 'Coalisland', 'Cobh', 'Coleraine', 'Collinstown', 'Collon', 'Collooney', 'Comber', 'Cong', 'Conna', 
 'Cookstown', 'Cookstown', 'Coolaney', 'Coolock', 'Cooraclare', 'Cootehill', 'Corbally', 'Cork Airport', 'Cork City Centre', 'Corofin', 
 'Corrandulla', 'Corrnamona', 'Costelloe', 'Courtmacsherry', 'Courtown', 'Craigavon', 'Cratloe', 'Craughwell', 'Crawfordsburn', 'Creggs', 'Croagh', 'Croom', 'Cross', 'Cross', 'Crossgar',
 'Crosshaven', 'Crossmaglen', 'Crossmolina', 'Crumlin', 'Crumlin', 'Culdaff', 'Cullybackey', 'Curracloe', 'Curry', 
 'Cushendall', 'Cushendun', 'Daingean', 'Dalkey', 'Deansgrange', 'Delgany', 'Delvin', 'Derry City', 'Derrybeg', 'Derrygonnelly',
 'Derrylin', 'Derrynamuck', 'Derrynane', 'Dingle', 'Docklands', 'Donabate', 'Donaghadee', 'Donaghmede', 'Donaghmore', 'Donard',
 'Donegal Town', 'Doneraile', 'Donnybrook', 'Donnycarney', 'Donore', 'Dooagh', 'Doolin', 'Doon', 'Doon', 'Doonbeg', 'Dooradoyle',
 'Douglas', 'Downings', 'Downpatrick', 'Draperstown', 'Drimnagh', 'Drimoleague', 'Drinagh', 'Dripsey', 'Drogheda', 'Dromahair', 
 'Dromara', 'Dromard', 'Dromineer', 'Dromod', 'Dromore', 'Dromore', 'Dromore West', 'Drumcliffe', 'Drumcondra', 'Drumcondrath', 'Drumcong', 'Drumkeeran', 'Drumlish', 'Drumshanbo', 'Dublin Airport', 'Dublin City Centre', 'Dublin Road', 'Duleek', 'Dun Laoghaire', 'Dunadry', 'Dunboyne', 'Dunbrody', 'Duncannon', 'Dundalk', 'Dundonald', 'Dundrum', 'Dundrum', 'Dundrum', 'Dunfanaghy', 'Dungannon', 'Dungarvan', 'Dungarvan', 'Dungiven', 'Dungloe', 'Dunkineely', 'Dunlavin', 'Dunleer', 'Dunlewey', 'Dunloe', 'Dunmanway', 'Dunmore', 'Dunmore East', 'Dunquin', 'Dunshaughlin', 'Durrow', 'Durrus', 'Easkey', 'Edenderry', 'Edgeworthstown', 'Eglinton', 'Elphin', 'Emlaghmore', 'Emo', 'Emyvale', 'Enfield', 'Ennis', 'Enniscorthy', 'Enniscrone', 'Enniskerry', 'Enniskillen', 'Ennistymon', 'Eyeries', 'Eyre Square', 'Eyrecourt', 'Fahan', 'Fairview', 'Faithlegg', 'Falcarragh', 'Fanad', 'Fanad Head', 'Fanore', 'Farranfore', 'Feakle', 'Feeny', 'Ferbane', 'Fermoy', 'Ferns', 'Ferrycarrig', 'Fethard', 'Fethard-on-Sea', 'Finglas', 'Finnea', 'Fintown', 'Firhouse', 'Fivemiletown', 'Florencecourt', 'Fore', 'Forkhill', 'Fossa', 'Fota', 'Foulksmills', 'Foxford', 'Foxrock', 'Foynes', 'Freshford', 'Frosses', 'Furbo', 'Galbally', 'Galway City', 'Gap of Dunloe', 'Garrison', 'Garryvoe', 'Garvagh', 'Geevagh', 'Gilford', 'Glandore', 'Glanmire', 'Glanworth', 'Glaslough', 'Glasnevin', 'Glasson', 'Glen of Aherlow', 'Glen of the Downs', 'Glenageary', 'Glenamaddy', 'Glenariffe', 'Glenarm', 'Glenavy', 'Glenbeigh', 'Glencar', 'Glencar', 'Glencolmcille', 'Glencree', 'Glencullen', 'Glendalough', 'Glenealy', 'Glenfarne', 'Glengarriff', 'Glenmore', 'Glenties', 'Glenveagh', 'Glenville', 'Glin', 'Glounthaune', 'Goleen', 'Goresbridge', 'Gorey', 'Gort', 'Gortahork', 'Gortin', 'Gougane Barra', 'Gowran', 'Grafton St and South William St', 'Graiguenamanagh', 'Granard', 'Grange', 'Grangecon', 'Greencastle', 'Greenore', 'Greyabbey', 'Greystones', 'Groomsport', 'Gurteen', 'Gweedore', 'Harolds Cross', 'Haulbowline', 'Headford', 'Helens Bay', 'Herbertstown', 'Hillsborough', 'Hollymount', 'Hollymount', 'Hollywood', 'Holycross', 'Holywood', 'Hook Head', 'Howth', 'Inch', 'Inch', 'Inchicore', 'Inchigeelagh', 'Inchydoney', 'Inishbofin', 'Inishere', 'Inishmaan', 'Inishmor', 'Inishowen', 'Iniskeen', 'Inistioge', 'Inniscarra', 'Innisfree', 'Innishannon', 'Inverin', 'Irelands Eye', 'Irvinestown', 'Islandbridge', 'Islandmagee', 'Jenkinstown', 'Johnstown', 'Johnstown', 'Julianstown', 'Keadue', 'Keady', 'Keel', 'Kells', 'Kells', 'Kells', 'Kenagh', 'Kenmare', 'Kesh', 'Keshcarrigan', 'Kilbeggan', 'Kilcar', 'Kilcock', 'Kilcolgan', 'Kilcoole', 'Kilcormac', 'Kilcornan', 'Kilcullen', 'Kildare', 'Kildare Town', 'Kildysart', 'Kilfenora', 'Kilfinane', 'Kilgarvan', 'Kilkee', 'Kilkeel', 'Kilkelly', 'Kilkenny City', 'Kilkerrin', 'Kilkieran', 'Kill', 'Killadeas', 'Killala', 'Killaloe', 'Killamaster', 'Killarney', 'Killary', 'Killeavy', 'Killenard', 'Killenaule', 'Killerrig', 'Killeshandra', 'Killeshin', 'Killeshin', 'Killester', 'Killimer', 'Killinchy', 'Killiney', 'Killorglin', 'Killotteran', 'Killurin', 'Killybegs', 'Killykeen', 'Killylea', 'Killyleagh', 'Kilmacanogue', 'Kilmacrennan', 'Kilmacthomas', 'Kilmainham', 'Kilmallock', 'Kilmanagh', 'Kilmeaden', 'Kilmessan', 'Kilmihil', 'Kilmore', 'Kilmore Quay', 'Kilmuckridge', 'Kilnaleck', 'Kilpedder', 'Kilquade', 'Kilrane', 'Kilrea', 'Kilross', 'Kilrush', 'Kilsaran', 'Kilsheelan', 'Kiltegan', 'Kilternan', 'Kiltimagh', 'Kimmage', 'Kincasslagh', 'Kingscourt', 'Kinlough', 'Kinnegad', 'Kinnitty', 'Kinsalebeg', 'Kinsealy', 'Kinvara', 'Kircubbin', 'Knock', 'Knockbridge', 'Knockcroghery', 'Knockferry', 'Knocklyon', 'Knocknacarra', 'Knockree', 'Knocktopher', 'Kylemore', 'Kylemore', 'Laghey', 'Lahinch', 'Lanesborough', 'Laragh', 'Larne', 'Lauragh', 'Laytown', 'Leenane', 'Leighlinbridge', 'Leitrim Village', 'Leixlip', 'Leopardstown', 'Letterfrack', 'Letterkenny', 'Lettermacaward', 'Lettermore', 'Liffey Valley', 'Lifford', 'Limavady', 'Limerick City', 'Limerick Junction', 'Linsfort', 'Lisbellaw', 'Lisburn', 'Liscannor', 'Lisdoonvarna', 'Lismore', 'Lisnaskea', 'Lispole', 'Lissey Cassey', 'Lissivigeen', 'Listowel', 'Longford Town', 'Lough Arrow', 'Lough Gill', 'Lough Gowna', 'Lough Gur', 'Loughgall', 'Loughlinstown', 'Loughrea', 'Louisburgh', 'Louth Town', 'Lucan', 'Lurgan', 'Lusk', 'Lyreacrompane', 'Maam', 'Macreddin Village', 'Maghera', 'Magherafelt', 'Malahide', 'Malin', 'Manorhamilton', 'Marble Hill', 'Marino', 'Markethill', 'Martinstown', 'Maynooth', 'Meelick', 'Milford', 'Millbrook', 'Millisle', 'Milltown', 'Milltown', 'Miltown Malbay', 'Mitchelstown', 'Moate', 'Mohill', 'Moira', 'Monaghan Town', 'Monasteraden', 'Monasterboice', 'Monasterevan', 'Moneymore', 'Monivea', 'Mountcharles', 'Mountmellick', 'Mountnugent', 'Mountrath', 'Mountshannon', 'Moville', 'Moy', 'Moyard', 'Moycullen', 'Moylough', 'Moyvalley', 'Muckamore', 'Muff', 'Mullagh', 'Mullaghbawn', 'Mullaghbawn', 'Mullaghmore', 'Mullahoran', 'Mullinavat', 'Mullinavat', 'Mullingar', 'Mulrany', 'Multyfarnham', 'Mungret', 'Murrisk', 'Murroe', 'Murvagh', 'Myshall', 'Naas', 'Narraghmore', 'Navan', 'Nenagh', 'New Quay', 'New Ross', 'Newbawn', 'Newbridge', 'Newcastle', 'Newcastle', 'Newcastlewest', 'Newgrange', 'Newmarket-on-Fergus', 'Newport', 'Newport', 'Newry', 'Newtownabbey', 'Newtownards', 'Newtownbutler', 'Newtowncashel', 'Newtownforbes', 'Newtownmountkennedy', 'Newtownstewart', 'Nobber', 'North Slob', 'Oakpark', 'OBriens Bridge', 'OCallaghans Mills', 'Oldbridge', 'Oldcastle', 'Omagh', 'Omeath', 'Oola', 'Oranmore', 'Oughterard', 'Pallasgreen', 'Pallaskenry', 'Partry', 'Passage East', 'Patrickswell', 'Pettigo', 'Piltown', 'Plumbridge', 'Pontoon', 'Portadown', 'Portaferry', 'Portarlington', 'Portavogie', 'Portballintrae', 'Portglenone', 'Portlaoise', 'Portmagee', 'Portnoo', 'Portrush', 'Portsalon', 'Portstewart', 'Portumna', 'Punchestown', 'Quilty', 'Quin', 'Raharney', 'Raheen', 'Ramelton', 'Randalstown', 'Rasharkin', 'Rath Cairn', 'Rathangan', 'Rathdowney', 'Rathdrum', 'Rathfriland', 'Rathgormack', 'Rathkeale', 'Rathlin', 'Rathmullan', 'Rathnew', 'Rathvilly', 'Ratoath', 'Recess', 'Redcastle', 'Renmore', 'Renvyle', 'Richhill', 'Ring', 'Riverstown', 'Robertstown', 'Rockcorry', 'Rockwood', 'Rooskey', 'Rooskey', 'Rosapenna', 'Roscahill', 'Roscommon Town', 'Roscrea', 'Rosenallis', 'Rosmuck', 'Rosses Area', 'Rosses Point', 'Rossinver', 'Rosslare', 'Rosslare Harbour', 'Rosslea', 'Rossnowlagh', 'Rostrevor', 'Roundwood', 'Ruan', 'Saint Mullins', 'Saintfield', 'Sallins', 'Saltmills', 'Scarriff', 'Seaforde', 'Shanagolden', 'Shannon', 'Shannon Harbour', 'Shannonbridge', 'Shercock', 'Shillelagh', 'Sion Mills', 'Sixmilebridge', 'Sixmilecross', 'Skellig Islands', 'Skreenbeg', 'Slane', 'Slieve na Calliagh', 'Slieverue', 'Sligo Town', 'Smithborough', 'Sneem', 'Spanish Point', 'Speenogue', 'Strabane', 'Strabane', 'Stradbally', 'Straffan', 'Strandhill', 'Strangford', 'Strangford Lough', 'Stranorlar', 'Strokestown', 'Summerhill', 'Summerhill', 'Swinford', 'Taghmon', 'Tagoat', 'Tallow', 'Tandragee', 'Tara', 'Tarbert', 'Templeboy', 'Templeglantine', 'Templemore', 'Templepatrick', 'Termonbarry', 'Termonfeckin', 'Terryglass', 'The Curragh', 'Thomastown', 'Thurles', 'Timahoe', 'Tinahely', 'Tipperary Town', 'Tobermore', 'Tomhaggard', 'Toome', 'Tory Island', 'Tourmakeady', 'Tralee', 'Tramore', 'Trim', 'Tuamgraney', 'Tubbercurry', 'Tulla', 'Tullamore', 'Tullaroan', 'Tullow', 'Tully', 'Tullyallen', 'Tyrrellspass', 'Urlingford', 'Valentia Island', 'Ventry', 'Virginia', 'Waringstown', 'Warrenpoint', 'Waterfoot', 'Waterford City Centre', 'Waterville', 'Wellingtonbridge', 'Westport', 'Wexford Town', 'Whitehead', 'Wicklow Mountains', 'Wicklow Town', 'Woodenbridge', 'Woodstown')),
ALTER TABLE Address ADD CONSTRAINT  Province CHECK (Province IN ('Leinster', 'Ulster', 'Munster', 'Connacht')),
ALTER TABLE Address ADD CONSTRAINT  Country CHECK (Country IN ('Ireland')),
);

)
ALTER TABLE Customer ADD CONSTRAINT customer_ibfk_1 FOREIGN KEY (Rental_Id) REFERENCES Rental (Rental_Id),
ALTER TABLE Customer ADD CONSTRAINT customer_ibfk_2 FOREIGN KEY (Payment_Id) REFERENCES Payment (Payment_Id)
ALTER TABLE Customer ADD CONSTRAINT customer_ibfk_3 FOREIGN KEY (Customer_Support_Id) REFERENCES Customer_Complaints_Support (Customer_Support_Id)
ALTER TABLE Customer ADD CONSTRAINT customer_ibfk_4 FOREIGN KEY (Rent_Renewal_Id) REFERENCES Rent_Renewal (Rent_Renewal_Id),
ALTER TABLE Customer ADD CONSTRAINT customer_ibfk_7 FOREIGN KEY (Reciept_Id) REFERENCES Reciept (Reciept_Id),
ALTER TABLE Customer ADD CONSTRAINT customer_ibfk_8 FOREIGN KEY (Fee_Id) REFERENCES Fee (Fee_Id),
ALTER TABLE Customer ADD CONSTRAINT customer_ibfk_9 FOREIGN KEY (Discount_Id) REFERENCES Discount (Discount_Id)
);

)
ALTER TABLE Store ADD CONSTRAINT Store_ibfk_1 FOREIGN KEY (Address_Id) REFERENCES Address (Address_Id),
ALTER TABLE Store ADD CONSTRAINT Store_ibfk_2 FOREIGN KEY (Stock_Id) REFERENCES Stock_Inventory (Stock_Id)
ALTER TABLE Store ADD CONSTRAINT Store_ibfk_3 FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id)
ALTER TABLE Store ADD CONSTRAINT Store_ibfk_4 FOREIGN KEY (Customer_Id) REFERENCES Customer (Customer_Id)
);
















