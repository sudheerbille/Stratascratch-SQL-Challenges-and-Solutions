Question:

Find the employee who has achieved the highest target.
Output the employee's first name along with the achieved target and the bonus.

Solution:

SELECT FIRST_NAME,
       TARGET,
       BONUS
FROM employee
ORDER BY TARGET DESC
LIMIT 1;
