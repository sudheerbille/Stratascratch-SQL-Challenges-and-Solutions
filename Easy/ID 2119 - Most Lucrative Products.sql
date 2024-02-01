## ID 2119 - Most Lucrative Products ##

Question:

You have been asked to find the 5 most lucrative products in terms of total revenue for the first half of 2022 (from January to June inclusive).
Output their IDs and the total revenue.

Soltuion:

SELECT PRODUCT_ID,
       SUM(UNITS_SOLD * COST_IN_DOLLARS) AS REVENUE
FROM online_orders
WHERE MONTH(DATE) BETWEEN 1 AND 6
AND YEAR(DATE) IN (2022)
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;
