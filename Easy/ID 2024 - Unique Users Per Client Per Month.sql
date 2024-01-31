## ID 2024 - Unique Users Per Client Per Month ##

Question:

Write a query that returns the number of unique users per client per month

Solution:

SELECT CLIENT_ID,
       EXTRACT(MONTH FROM TIME_ID) AS MONTH,
       COUNT(DISTINCT USER_ID) AS USERS_NUM
FROM fact_events
GROUP BY 1,
         2;
