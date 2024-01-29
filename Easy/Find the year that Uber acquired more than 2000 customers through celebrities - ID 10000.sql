## https://platform.stratascratch.com/coding/10000-find-the-year-that-uber-acquired-more-than-2000-customers-through-celebrities?code_type=3 ##

## Find the year that Uber acquired more than 2000 customers through celebrities - ID 10000 ##

Question:
Find the year that Uber acquired more than 2000 customers through advertising using celebrities.

Table: uber_advertising

Table Structure:

year: int
advertising_channel: varchar
money_spent: int
customers_acquired: int

Solution:

SELECT YEAR 
FROM uber_advertising
WHERE ADVERTISING_CHANNEL IN ('celebrities')
AND CUSTOMERS_ACQUIRED > 2000
GROUP BY 1;
