## Unique Highest Salary - ID 9919 ##

Question:
Find the highest salary among salaries that appears only once.

Table: employee

Table Structure:

id: int
first_name: varchar
last_name: varchar
age: int
sex: varchar
employee_title: varchar
department: varchar
salary: int
target: int
bonus: int
email: varchar
city: varchar
address: varchar
manager_id: int

Solution :

WITH CTE AS 
(
SELECT SALARY,
       COUNT(*) 
FROM employee
GROUP BY 1
HAVING COUNT(*) = 1
)

SELECT MAX(SALARY) AS HIGHEST_SALARY FROM CTE;
