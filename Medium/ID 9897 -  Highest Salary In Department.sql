Question:

Find the employee with the highest salary per department.
Output the department name, employee's first name along with the corresponding salary.

Solution:

WITH CTE AS (
SELECT DEPARTMENT,
       FIRST_NAME,
       SALARY,
       DENSE_RANK() OVER (PARTITION BY DEPARTMENT ORDER BY SALARY DESC) AS RN
FROM employee
)

SELECT DEPARTMENT,
       FIRST_NAME,
       SALARY
FROM CTE
WHERE RN IN (1);
