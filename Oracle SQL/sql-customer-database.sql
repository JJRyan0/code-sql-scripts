###Structured Query Language (SQL) – Commands

#Create a database
CREATE DATABASE Database1;

#View all available databases
SHOW DATABASES;

#Drop/Delete a database
DROP DATABASE Database1;


#Create a Customers Table

#USE Database1;
CREATE TABLE CUSTOMERS(
   CustomerID   INT              NOT NULL,
   NAME VARCHAR (20)     NOT NULL,
   AGE  INT              NOT NULL,
   ADDRESS  CHAR (25) ,
   SALARY   DECIMAL (18, 2),       
   PRIMARY KEY (CustomerID)
)

#Create the Orders Table and add a relationship

#USE Database1;
CREATE TABLE ORDERS(
   OrderID   INT  NOT NULL,
   ITEM VARCHAR (30),
   CustomerID  INT  NOT NULL,
   AMOUNT  INT ,
   PRIMARY KEY (OrderID),
)




#Add Relationships
#If however, you have the table already created, use the following Alter command

#To create a FOREIGN KEY constraint on the "P_Id" column when the "Orders" table is already created, use the following SQL: MySQL / SQL Server / Oracle / MS Access:

ALTER TABLE Orders
ADD FOREIGN KEY (ItemID)
REFERENCES Items (ItemID)

#Drop a Table
DROP TABLE CUSTOMERS;

#Alter a table
ALTER TABLE CUSTOMERS ADD SEX char(1)

#Insert values into a Table

USE Database1;

INSERT INTO CUSTOMERS (CustomerID,NAME,AGE,ADDRESS,SALARY)
VALUES (1, 'David Hamill', 32, 'Ireland', 2000.00 );

INSERT INTO CUSTOMERS (CustomerID,NAME,AGE,ADDRESS,SALARY)
VALUES (2, 'George Clonney', 25, 'USA', 1500.00 );

INSERT INTO CUSTOMERS (CustomerID,NAME,AGE,ADDRESS,SALARY)
VALUES (3, 'Bill Gates', 23, 'USA', 2000.00 );

INSERT INTO CUSTOMERS (CustomerID,NAME,AGE,ADDRESS,SALARY)
VALUES (4, 'David Beckham', 25, 'UK', 6500.00 );

INSERT INTO CUSTOMERS (CustomerID,NAME,AGE,ADDRESS,SALARY)
VALUES (6, 'Nelson Mandella', 22, 'South Africa', 4500.00 );


INSERT INTO ORDERS (OrderID,ITEM, CustomerID,AMOUNT)
VALUES (101, 'Best of Jay Z', 1, '13.99');

INSERT INTO ORDERS (OrderID,ITEM, CustomerID,AMOUNT)
VALUES (102, 'U2 Greatest Hits', 3, '11.99');



Select values from a table
USE Database1;
Select * from CUSTOMERS

#OR

USE Database1;
Select CustomerID, NAME, SALARY FROM CUSTOMERS


#Add a condition

USE Database1;
Select CustomerID, NAME, ADDRESS, SALARY FROM CUSTOMERS WHERE SALARY > 1500;


Use ‘AND’ 
USE Database1;
SELECT CustomerID, NAME, SALARY 
FROM CUSTOMERS
WHERE SALARY > 2000 AND age < 25
Use ‘OR’
USE Database1;
SELECT CustomerID, NAME, SALARY 
FROM CUSTOMERS
WHERE SALARY > 2000 OR age < 25;
Update a record
USE Database1;
UPDATE CUSTOMERS
SET ADDRESS = 'Europe'
WHERE CustomerID = 1;


#Delete a record
USE Database1;
DELETE FROM CUSTOMERS
WHERE CustomerID = 6;

Select records ‘LIKE’
•	WHERE SALARY LIKE '200%' Finds any values that start with 200
•	WHERE SALARY LIKE '%200%' Finds any values that have 200 in any position
•	WHERE SALARY LIKE '_00% 'Finds any values that have 00 in the second and third positions
•	WHERE SALARY LIKE '2_%_% Finds any values that start with 2 and are at least 3 characters in length
•	WHERE SALARY LIKE '%2' Finds any values that end with 2
•	WHERE SALARY LIKE '_2%3' Finds any values that have a 2 in the second position and end with a 3
•	WHERE SALARY LIKE '2___3' Finds any values in a five-digit number that start with 2 and end with 3

Select the ‘TOP’ records
USE Database1;
SELECT * FROM CUSTOMERS
LIMIT 3;

Order By clause
USE Database1;
SELECT * FROM CUSTOMERS
ORDER BY NAME DESC;

Group By clause
If you want to know the total amount of salary for each customer

USE Database1;
SELECT NAME, SUM(SALARY) FROM CUSTOMERS
GROUP BY NAME;

Sorting results
Sorting first by name and then by salary

USE Database1;
SELECT * FROM CUSTOMERS
ORDER BY NAME, SALARY



