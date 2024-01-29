## ID 10308 - Salaries Differences ##

Question:
  
Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments.
Output just the absolute difference in salaries.

Tables: db_employee, db_dept

Table's Structure:
  
db_employee:

id: int
first_name: varchar
last_name: varchar
salary: int
department_id: int

db_dept:

id: int
department: varchar

Solution:

WITH CTE AS (
SELECT ABS(MAX(CASE WHEN dept.department = 'marketing' THEN emp.salary ELSE 0 END)) AS HIGHEST_SALARY_IN_MARKETING,
       ABS(MAX(CASE WHEN dept.department = 'engineering' THEN emp.salary ELSE 0 END)) AS HIGHEST_SALARY_IN_ENGINEERING
FROM db_employee emp 
JOIN db_dept dept 
ON emp.department_id = dept.id
)

SELECT (HIGHEST_SALARY_IN_MARKETING - HIGHEST_SALARY_IN_ENGINEERING) AS SALARY_DIFFERENCE FROM CTE;
