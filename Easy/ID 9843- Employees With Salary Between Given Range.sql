## ID 9843- Employees With Salary Between Given Range ##

Question:

Find all workers whose salary lies between 100,000 and 500,000 inclusive.

Solution:
  
-- Including 100,000 and 500,000
SELECT * 
FROM worker
WHERE SALARY BETWEEN 100000 AND 500000;

-- Not including 100,000 & 500,000, fetching only the between values
SELECT * 
FROM worker
WHERE SALARY > 100000 AND SALARY < 500000;
