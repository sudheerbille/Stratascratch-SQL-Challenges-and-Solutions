## ID 9838 - Employees Without First Names 'Vipul' or 'Satish' or Last Name Containing a 'c' ##

Question:

Find information on employees who do not have the first names 'Vipul' or 'Satish' or a last name that contains a 'c'.

Solution:

SELECT * 
FROM worker
WHERE FIRST_NAME NOT IN ('Vipul','Satish')
AND LOWER(LAST_NAME) LIKE '%c%';
