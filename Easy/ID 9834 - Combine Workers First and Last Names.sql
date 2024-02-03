## ID 9834 - Combine Workers First and Last Names ##

Question:

Combine the first and last names of workers with a space in-between in a column 'full_name'.

Solution:

SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS FULL_NAME
FROM worker;
