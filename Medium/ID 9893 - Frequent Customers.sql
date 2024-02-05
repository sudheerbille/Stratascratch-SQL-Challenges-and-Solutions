Question:

Find customers who appear in the orders table more than three times.

Solution:

SELECT CUST_ID
FROM orders
GROUP BY 1
HAVING COUNT(*) > 3;
