## https://platform.stratascratch.com/coding/10002-find-the-advertising-channel-where-uber-spent-more-than-100k-usd-in-2019?code_type=3 ##

## ID 10002 - Find the advertising channel where Uber spent more than 100k USD in 2019 ##

Question:

Find the advertising channel where Uber spent more than 100k USD in 2019.

Table: uber_advertising

Table Structure:
year: int
advertising_channel: varchar
money_spent: int
customers_acquired: int

Solution:
SELECT ADVERTISING_CHANNEL 
FROM uber_advertising
WHERE YEAR IN (2019)
AND MONEY_SPENT > 100000
GROUP BY 1;
