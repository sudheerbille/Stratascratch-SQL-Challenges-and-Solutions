## ID 2056 - Number of Shipments Per Month ##

Question:

Write a query that will calculate the number of shipments per month. The unique key for one shipment is a combination of shipment_id and sub_id.
Output the year_month in format YYYY-MM and the number of shipments in that month.

Soltuion:

WITH CTE AS(
SELECT YEAR(SHIPMENT_DATE) AS yr,
       MONTH(SHIPMENT_DATE) AS mn,
       SHIPMENT_ID
FROM amazon_shipment
)
SELECT COUNT(SHIPMENT_ID),
       CONCAT(yr,'-',0,mn) AS DATE_YM
FROM CTE
GROUP BY 2;
