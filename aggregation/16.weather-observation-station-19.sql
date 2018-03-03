/*
Enter your query here.
Please append a semicolon ";" at the end of the query and 
enter your query in a single line to avoid error.
*/

SELECT CAST(SQRT(POWER((MAX(LAT_N) - MIN(LAT_N)),2) + 
                 POWER((MAX(LONG_W) - MIN(LONG_W)),2)) as numeric(36,4))
FROM station
