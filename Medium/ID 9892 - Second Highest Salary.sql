Question:

Find the second highest salary of employees.

Solution:

SELECT SALARY FROM employee
ORDER BY SALARY DESC
LIMIT 1 OFFSET 1;
