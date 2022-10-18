--CREATE DATABASE GamesStore
-----------------------------
--Add table with column names
-----------------------------
USE GamesStore
CREATE TABLE CustomerInfo (
    ID int PRIMARY KEY NOT NULL,
    First_NAME varchar(100),
    Last_Name varchar(100),
	Gender varchar(20),
	Age int
);
USE GamesStore
CREATE TABLE Games (
	GameID int PRIMARY KEY NOT NULL,
	Title varchar(225),
)
--Comand to add columns to an exsiting table
USE GamesStore
ALTER TABLE Games
ADD price int NOT NULL,
Stock int;
 ----------------
 --Create index
USE GamesStore
CREATE INDEX Games_Index
ON Games (Title);
----

USE GamesStore
CREATE TABLE Delivery (
	GameID int FOREIGN KEY REFERENCES Games(GameID),
	ID int FOREIGN KEY REFERENCES CustomerInfo(ID),
	Postcode varchar (20) NOT NULL,
	Street varchar (100),
	Country varchar (100)
 );

-----------------
-- Insert data into tables

USE GamesStore
INSERT INTO CustomerInfo
	(ID, First_Name, Last_Name, Gender, Age)
VALUES 
	(18354, 'John', 'Keats', 'M', 1700),
	(15434, 'Percy', 'Shelley','M', 1700),
	(43734, 'Mary', 'Shelley', 'F', 1700),
	(13616,  'William','Shakespeare', 'M', 1600),
	(47437,  'Lewis','Caroll', 'M', 1800),
	(47348,  'Grace', 'Alias', 'F', 1800);


-- Insert whole row into the column
USE GamesStore
INSERT INTO CustomerInfo (ID, First_Name, Last_Name, Gender, Age)
VALUES ( 0903455, 'John', 'Milton', 'M', 1600);

--
USE GamesStore
-- columns to insert into the database
INSERT INTO Games
	( GameID, Title, price, Stock)
--As the Game ID comes from a different datatable we do not add it to the VALUES
VALUES 
	('Sherlock Mystery', 30, 899),
	('Dragon Age', 32, 200),
	( 'Portal', 15, 654),
	( 'Europa',25, 1000),
	('Legion ',19, 543),
	( 'Final Fantasy', 12, 434);
--

USE GamesStore
INSERT INTO Delivery
	( Postcode, Street, Country)
VALUES 
	('T643H', 'Baker Street', 'England'),
	('H4574', 'Babylon Rd','Iran'),
	( 'J5446', 'Xanadu Place', 'China'),
	( 'HG455','Olympus', 'Greece'),
	('HUY57','Wonderland', 'England'),
	( 'JK7353', 'Camelot', 'Wales');
;

