## ID 9703 - Find the most common grade earned by bakeries ##

Question:

Find the most common grade earned by bakeries.

Solution:

WITH CTE AS(
SELECT GRADE,
       COUNT(*)
FROM los_angeles_restaurant_health_inspections
WHERE LOWER(OWNER_NAME) LIKE '%bakery%'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1)
SELECT GRADE FROM CTE;
