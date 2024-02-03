## ID 9702 - Number Of Unique Facilities And Inspections Per Municipality ##

Question:

Count the number of unique facilities per municipality zip code along with the number of inspections. 
Output the result along with the number of inspections per each municipality zip code. 
Sort the result based on the number of inspections in descending order.

Solution:

SELECT FACILITY_ZIP,
       COUNT(*) AS NUMBER_OF_INSPECTIONS
FROM los_angeles_restaurant_health_inspections
GROUP BY 1
ORDER BY 2 DESC;
