## ID 9836 - Sort Workers in Ascending Order by First Name and Descending Order by Department ##

Question:

Sort workers in ascending order by the first name and then in descending order by department name.

Solution:

SELECT * 
FROM worker
ORDER BY FIRST_NAME ASC,
         DEPARTMENT DESC;
