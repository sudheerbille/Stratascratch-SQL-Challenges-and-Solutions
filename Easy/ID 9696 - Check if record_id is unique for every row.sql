## ID 9696 - Check if record_id is unique for every row ##

Question:

Check if record_id is unique for every row.
Output the total record ids and total unique record ids for comparison.

Solution:

SELECT COUNT(RECORD_ID) AS TOTAL_RECORD_IDs,
       COUNT(DISTINCT RECORD_ID) AS UNIQUE_RECORD_IDs
FROM los_angeles_restaurant_health_inspections;
