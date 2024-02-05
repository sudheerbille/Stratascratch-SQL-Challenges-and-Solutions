Question:

Find customers who have never made an order.
Output the first name of the customer.

Solution:

SELECT FIRST_NAME 
FROM customers C
LEFT JOIN orders O
ON C.ID = O.CUST_ID
WHERE O.CUST_ID IS NULL;
