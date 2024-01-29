## https://platform.stratascratch.com/coding/10009-find-the-total-costs-and-total-customers-acquired-in-each-year?code_type=3 ##

## ID 10009 - Find the total costs and total customers acquired in each year ##

Question:

Find the total costs and total customers acquired in each year.
Output the year along with corresponding total money spent and total acquired customers.

Table: uber_advertising

Table Structure:

year: int
advertising_channel: varchar
money_spent: int
customers_acquired: int

Solution:

SELECT YEAR, 
       SUM(MONEY_SPENT) AS TOTAL_MONEY_SPENT,
       SUM(CUSTOMERS_ACQUIRED) AS TOTAL_CUSTOMERS_ACQUIRED
FROM uber_advertising
GROUP BY 1
ORDER BY 1 ASC;
