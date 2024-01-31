## ID 2003 - Recent Refinance Submissions ##

Question:

Write a query that joins this submissions table to the loans table and returns the total loan balance on each user’s most recent ‘Refinance’ submission.
Return all users and the balance for each of them.

Solution :

WITH CTE AS (
SELECT L.USER_ID,
       L.CREATED_AT,
       S.BALANCE,
       L.TYPE,
       ROW_NUMBER()OVER(PARTITION BY USER_ID ORDER BY CREATED_AT DESC) AS RN
FROM loans L
INNER JOIN submissions S
ON L.ID = S.LOAN_ID
WHERE L.TYPE IN ('Refinance')
)

SELECT USER_ID,
       BALANCE
FROM CTE
WHERE RN IN (1);
