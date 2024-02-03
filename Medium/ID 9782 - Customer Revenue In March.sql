## ID 9782 - Customer Revenue In March ##

Question: 

Calculate the total revenue from each customer in March 2019. Include only customers who were active in March 2019.
Output the revenue along with the customer id and sort the results based on the revenue in descending order.

Solution:

SELECT CUST_ID,
       SUM(TOTAL_ORDER_COST) AS REVENUE
FROM orders
WHERE MONTH(ORDER_DATE) IN (3)
AND YEAR(ORDER_DATE) IN (2019)
GROUP BY 1
ORDER BY 2 DESC;
