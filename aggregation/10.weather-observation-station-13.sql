/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT CAST(ROUND(SUM(LAT_N),4) as numeric(36,4))
FROM station 
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345