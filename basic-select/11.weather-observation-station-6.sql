/*
Version with regular expression
*/

SELECT CITY 
FROM STATION 
WHERE CITY RLIKE '^[aeiou]';