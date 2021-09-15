/*
Enter your query here.
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country

HAVING COUNT(CustomerID) > 5

ORDER BY COUNT(CustomerID) DESC;

select MIN(CHARACTER_LENGTH(CITY)) from STATION;

select MAX(CHARACTER_LENGTH(CITY)) from STATION;*/

SELECT CITY, (select MIN(CHARACTER_LENGTH(CITY)) from STATION)
FROM STATION
GROUP BY CITY
HAVING CHARACTER_LENGTH(CITY) = (select MIN(CHARACTER_LENGTH(CITY)) from STATION)
ORDER BY CITY ASC
LIMIT 1; 

SELECT CITY, (select MAX(CHARACTER_LENGTH(CITY)) from STATION)
FROM STATION
GROUP BY CITY
HAVING CHARACTER_LENGTH(CITY) = (select MAX(CHARACTER_LENGTH(CITY)) from STATION)
ORDER BY CITY ASC
LIMIT 1;
