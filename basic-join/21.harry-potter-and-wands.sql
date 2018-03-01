/*
Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.
*/

SELECT a.id, b.age, a.coins_needed, a.power 
FROM Wands as a
JOIN Wands_Property as b
ON a.code = b.code 
AND b.is_evil = 0
WHERE (a.power, a.code, a.coins_needed) IN (
SELECT power, code, MIN(coins_needed)
FROM Wands 
GROUP BY power, code)
ORDER BY a.power DESC, b.age DESC;
