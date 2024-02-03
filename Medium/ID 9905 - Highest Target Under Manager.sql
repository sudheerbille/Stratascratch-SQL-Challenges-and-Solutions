##  ID 9905 - Highest Target Under Manager ##

Question:

Find the highest target achieved by the employee or employees who works under the manager id 13. Output the first name of the employee and target achieved. 
The solution should show the highest target achieved under manager_id=13 and which employee(s) achieved it.

Solution:

WITH CTE AS 
(SELECT FIRST_NAME,
       TARGET,
       DENSE_RANK()OVER(PARTITION BY MANAGER_ID ORDER BY TARGET DESC) AS RK
FROM salesforce_employees
WHERE MANAGER_ID IN (13)
)
SELECT FIRST_NAME,
       TARGET
FROM CTE
WHERE RK IN (1);

