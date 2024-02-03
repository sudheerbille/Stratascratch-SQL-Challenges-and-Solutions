## ID 9839 - Admin Department Workers ##

Question:

Find all workers and their details that work in the Admin department.

Solution:

SELECT * 
FROM worker_ws
WHERE DEPARTMENT IN ('Admin');
