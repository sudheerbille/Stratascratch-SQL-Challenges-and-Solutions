$$  ID 9844 - Employees Who Joined in February 2014 ##

Question:
  
Find all workers who joined on February 2014.

Solution:

SELECT * 
FROM worker
WHERE EXTRACT(YEAR_MONTH FROM JOINING_DATE) IN (201402);
