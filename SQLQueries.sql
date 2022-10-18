-----------------------
--Queries
-----------------------

USE GamesStore
SELECT * FROM CustomerInfo
ORDER BY Age ASC;

SELECT * FROM CustomerInfo
WHERE First_NAME LIKE '%S';

SELECT * FROM CustomerInfo
WHERE Last_Name LIKE 's%';

USE GamesStore
SELECT TOP 1 *
FROM CustomerInfo

USE GamesStore
SELECT * FROM Delivery
WHERE Country IN ('England', 'China', 'Wales');

USE GamesStore
SELECT SUM(price)
FROM Games;


USE GamesStore
SELECT * FROM CustomerInfo
WHERE Age BETWEEN 1400 AND 1700;


--Nested SQL Query
USE GamesStore
SELECT Last_Name
FROM CustomerInfo
WHERE Age = ANY
  (SELECT Age
  FROM CustomerInfo
  WHERE Age > 1700);