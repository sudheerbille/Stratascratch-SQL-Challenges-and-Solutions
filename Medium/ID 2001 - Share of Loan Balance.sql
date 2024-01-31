## ID 2001 - Share of Loan Balance ##

Question:

Write a query that returns the rate_type, loan_id, loan balance ,
and a column that shows with what percentage the loan's balance contributes to the total balance among the loans of the same rate type.

Solution:

SELECT RATE_TYPE,
       LOAN_ID,
       BALANCE,
       (BALANCE/SUM(BALANCE)OVER(PARTITION BY RATE_TYPE))*100 AS PERCENTAGE_CONTRIBUTION
FROM submissions
GROUP BY 1,
         2,
         3;
