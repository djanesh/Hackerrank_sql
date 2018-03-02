/*
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted 
alphabetically and displayed underneath its corresponding Occupation. 
The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.


Explanation

The first column is an alphabetically ordered list of Doctor names. 
The second column is an alphabetically ordered list of Professor names. 
The third column is an alphabetically ordered list of Singer names. 
The fourth column is an alphabetically ordered list of Actor names. 
The empty cell data for columns with less than the maximum number of names per occupation 
(in this case, the Professor and Actor columns) are filled with NULL values.
*/

Select Doctor, Professor, Singer, Actor
FROM (
Select Occupation, 
      Name, 
      Row_Number() Over(partition by Occupation Order by Name) hello
From Occupations) as subtable
Pivot (
Max(Name) for Occupation in ([Doctor], [Professor], [Singer], [Actor])
) as PivotTable;