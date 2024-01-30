## ID 10315 - Cities With The Most Expensive Homes ##

Question:
Write a query that identifies cities with higher than average home prices when compared to the national average. Output the city names.

Solution:
WITH CTE AS 
(SELECT CITY, 
       AVG(MKT_PRICE) AS AVG_MKT_PRICE
FROM zillow_transactions
GROUP BY 1
HAVING AVG(MKT_PRICE) > (SELECT AVG(MKT_PRICE) FROM zillow_transactions)
)
SELECT CITY FROM CTE;
