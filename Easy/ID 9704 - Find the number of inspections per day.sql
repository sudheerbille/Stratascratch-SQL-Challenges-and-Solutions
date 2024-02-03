## ID 9704 - Find the number of inspections per day ##

Question:

Find the number of inspections per day.
Output the result along with the date of the activity.
Order results based on the activity date in the ascending order.

Solution:

SELECT ACTIVITY_DATE,
       COUNT(SERVICE_DESCRIPTION) AS NO_OF_INSPECTIONS
FROM los_angeles_restaurant_health_inspections
GROUP BY 1
ORDER BY 1 ASC;
