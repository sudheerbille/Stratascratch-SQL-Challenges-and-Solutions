Question:

Find the second highest salary of employees.

Solution:

SELECT SALARY 
FROM employee
ORDER BY SALARY DESC
LIMIT 1 OFFSET 1;

OR

WITH CTE AS(
SELECT SALARY,
       DENSE_RANK()OVER(ORDER BY SALARY DESC) AS RN
FROM employee
)
SELECT SALARY 
FROM CTE 
WHERE RN IN (2);
