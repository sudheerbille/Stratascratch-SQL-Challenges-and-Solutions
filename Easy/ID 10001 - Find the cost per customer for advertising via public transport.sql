## https://platform.stratascratch.com/coding/10001-find-the-cost-per-customer-for-advertising-via-public-transport?code_type=3 ##

## ID 10001 - Find the cost per customer for advertising via public transport ##

Question:
  
Find the cost per customer for each advertising channel and year combination .
Include only channels that are advertised via public transport (advertising channel includes "bus" substring).
The cost per customer is equal to the total spent money divided by the total number of acquired customers through that advertising channel. 
Output advertising channel and its cost per customer.

Table: uber_advertising

Table Structure:

year: int
advertising_channel: varchar
money_spent: int
customers_acquired: int

Solution:

SELECT YEAR, 
       ADVERTISING_CHANNEL,
       ROUND((MONEY_SPENT / CUSTOMERS_ACQUIRED),2) AS COST_PER_CUSTOMER
FROM uber_advertising
WHERE ADVERTISING_CHANNEL LIKE '%bus%'
ORDER BY 1,
         2,
         3 DESC;
