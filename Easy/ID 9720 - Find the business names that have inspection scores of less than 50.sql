## ID 9720 - Find the business names that have inspection scores of less than 50 ##

Question:

Find the business names that scored less than 50 in inspections.
Output the result along with the corresponding inspection date and the score.

Solution:

SELECT BUSINESS_NAME
FROM sf_restaurant_health_violations
WHERE INSPECTION_SCORE < 50
GROUP BY 1;
