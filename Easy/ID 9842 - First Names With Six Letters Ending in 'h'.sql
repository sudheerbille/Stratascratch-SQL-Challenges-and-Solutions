## ID 9842 - First Names With Six Letters Ending in 'h' ##

Question:

Find all workers whose first name contains 6 letters and also ends with the letter 'h'.
Display all information about the workers in output.

Solution:

SELECT * 
FROM worker
WHERE RIGHT(FIRST_NAME,1) IN ('h')
AND LENGTH(FIRST_NAME) IN (6);
