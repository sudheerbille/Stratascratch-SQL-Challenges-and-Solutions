## ID 10013 - Positive Ad Channels ##

Question:
Find the advertising channel with the smallest maximum yearly spending that still brings in more than 1500 customers each year.

Solution:

WITH CTE AS(
SELECT YEAR,
       ADVERTISING_CHANNEL, 
       MONEY_SPENT,
       ROW_NUMBER()OVER(PARTITION BY YEAR ORDER BY MONEY_SPENT ASC) AS RN
FROM uber_advertising
WHERE CUSTOMERS_ACQUIRED >1500
)

SELECT YEAR,
       ADVERTISING_CHANNEL
FROM CTE
WHERE RN IN (1);
