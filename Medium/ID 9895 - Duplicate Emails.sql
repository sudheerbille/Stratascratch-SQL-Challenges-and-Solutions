Question:

Find all emails with duplicates.

Solution:

SELECT EMAIL
FROM employee
GROUP BY 1
HAVING COUNT(*) > 1;
