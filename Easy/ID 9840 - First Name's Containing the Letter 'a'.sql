## ID 9840 - First Name's Containing the Letter 'a' ##

Question:

Find all workers whose first name contains the letter 'a'. Output all columns for such workers.

Soltuion:

SELECT * 
FROM worker
WHERE LOWER(FIRST_NAME) LIKE '%a%';
