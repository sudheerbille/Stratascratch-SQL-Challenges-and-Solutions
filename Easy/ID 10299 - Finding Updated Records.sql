##ID 10299 - Finding Updated Records ##

Question:

We have a table with employees and their salaries, however, some of the records are old and contain outdated salary information. 
Find the current salary of each employee assuming that salaries increase each year. Output their id, first name, last name, department ID, and current salary. 
Order your list by employee ID in ascending order.

Table: ms_employee_salary

Table Structure:

ID: INT
FIRST_NAME: VARCHAR
LAST_NAME: VARCHAR
SALARY: INT
DEPARTMENT_ID: INT

Solution:

SELECT ID, 
FIRST_NAME, 
LAST_NAME, 
DEPARTMENT_ID, 
MAX(SALARY)
FROM ms_employee_salary
GROUP BY ID,
         FIRST_NAME,
         LAST_NAME,
         DEPARTMENT_ID
ORDER BY ID;
