## ID 10355 - Employees With Same Birth Month ##

Quesstion : 
Identify the number of employees within each department that share the same birth month. Your output should list the department, birth month, 
and the number of employees from that department who were born in that month. If a month has no employees born in it within a specific department, 
report this month as having 0 employees. The "profession" column stores the department names of each employee.

Solution:

SELECT PROFESSION, 
       BIRTH_MONTH, 
       COALESCE(COUNT(EMPLOYEE_ID),0) AS NO_OF_EMPLOYEES
FROM employee_list
GROUP BY 1,
         2
ORDER BY 1,
         2;
