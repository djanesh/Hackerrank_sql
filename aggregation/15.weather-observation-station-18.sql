/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT CAST(ABS(MAX(LAT_N)- MIN(LAT_N)) + 
            ABS(MAX(LONG_W) - MIN(LONG_W)) 
            as numeric(36,4))
FROM station