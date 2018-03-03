
SELECT CAST(CEILING(AVG(CAST(Salary as float))- AVG(CAST(REPLACE(salary, '0', '') as float))) as INT)
FROM Employees;