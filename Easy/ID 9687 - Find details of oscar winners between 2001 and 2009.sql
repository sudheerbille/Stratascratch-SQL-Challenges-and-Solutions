Question:

Find the details of oscar winners between 2001 and 2009.

Solution:
  
SELECT * 
FROM oscar_nominees
WHERE YEAR BETWEEN 2001 AND 2009
AND WINNER IN (1)
ORDER BY YEAR ASC;
