## ID 9841 - First Name That Ends With The Letter 'a' ##

Question:

Find all workers whose first name ends with the letter 'a'.

Solution:

SELECT * 
FROM worker
WHERE RIGHT(FIRST_NAME,1) IN ('a');
