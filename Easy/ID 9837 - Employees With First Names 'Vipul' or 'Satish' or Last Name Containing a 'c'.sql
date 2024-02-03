## ID 9837 - Employees With First Names 'Vipul' or 'Satish' or Last Name Containing a 'c' ##

Question:

Find information on employees who have the first names 'Vipul' or 'Satish' or a last name that contains a 'c'.

Solution:
  
SELECT * 
FROM worker
WHERE FIRST_NAME IN ('Vipul','Satish')
AND LOWER(LAST_NAME) LIKE '%c%';
