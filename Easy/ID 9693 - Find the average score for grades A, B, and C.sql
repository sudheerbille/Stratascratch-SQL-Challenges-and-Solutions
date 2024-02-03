## ID 9693 - Find the average score for grades A, B, and C ##

Question:

Find the average score for grades A, B, and C.
Output the results along with the corresponding grade (ex: 'A', avg(score)).

Solution:

SELECT GRADE, 
       AVG(SCORE) AS AVG_SCORE
FROM los_angeles_restaurant_health_inspections
GROUP BY 1;
