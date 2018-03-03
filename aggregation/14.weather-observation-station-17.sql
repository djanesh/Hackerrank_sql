/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT CAST(LONG_W as numeric(36,4))
FROM station
WHERE LAT_N = (SELECT MIN(LAT_N) 
              FROM station 
              WHERE LAT_N > 38.7780)