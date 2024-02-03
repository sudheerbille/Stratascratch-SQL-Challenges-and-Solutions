## ID 10000 - Find the year that Uber acquired more than 2000 customers through celebrities ##

Question:
Find the year that Uber acquired more than 2000 customers through advertising using celebrities.

Solution:

SELECT YEAR 
FROM uber_advertising
WHERE ADVERTISING_CHANNEL IN ('celebrities')
AND CUSTOMERS_ACQUIRED > 2000
GROUP BY 1;
