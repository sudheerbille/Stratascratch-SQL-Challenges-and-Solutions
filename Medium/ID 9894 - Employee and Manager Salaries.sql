Question:

Find employees who are earning more than their managers. Output the employee's first name along with the corresponding salary.

Solution:

SELECT E1.FIRST_NAME,
       E1.SALARY
FROM employee E1
INNER JOIN employee E2
ON E1.MANAGER_ID = E2.ID
WHERE E1.SALARY > E2.SALARY;
