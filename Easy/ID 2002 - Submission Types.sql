## https://platform.stratascratch.com/coding/2002-submission-types?code_type=3 ##

## ID 2002 - Submission Types ##

Question:

Write a query that returns the user ID of all users that have created at least one ‘Refinance’ submission and at least one ‘InSchool’ submission.

Table: loans

Table Structure:

id: int
user_id: int
created_at: datetime
status: varchar
type: varchar

Solution:
WITH CTE AS(
SELECT USER_ID,
       COUNT(CASE WHEN TYPE IN ('InSchool') THEN 1 END) AS InSchool,
       COUNT(CASE WHEN TYPE IN ('Refinance') THEN 1 END) AS Refinance
FROM loans
GROUP BY 1
ORDER BY 1 ASC
)

SELECT USER_ID 
FROM CTE
WHERE InSchool >=1 
AND Refinance >=1;
