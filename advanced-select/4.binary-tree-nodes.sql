/*
Binary Tree nodes
You are given a table, BST, containing two columns: N and P, where N 
represents the value of a node in Binary Tree, and P is the parent of N.
*/


Select t.N, (CASE WHEN P IS NULL THEN 'Root'
             WHEN (SELECT COUNT(*) from BST tn where tn.P = t.N) > 0 THEN 'Inner'
             ELSE "Leaf" END
)
FROM BST t
ORDER BY t.N