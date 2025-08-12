## ID 10547 - Actor Rating Difference Analysis ##

Quesstion : 
You are given a dataset of actors and the films they have been involved in, including each film's release date and rating. 
For each actor, calculate the difference between the rating of their most recent film and their average rating across all
previous films (the average rating excludes the most recent one).

Return a list of actors along with their average lifetime rating, the rating of their most recent film, and the difference 
between the two ratings. If an actor has only one film, return 0 for the difference and their only film’s rating for both the 
average and latest rating fields.

Solution:

WITH CTE_NUMBER_OF_FILMS AS (
SELECT A.*,
       ROW_NUMBER()OVER(PARTITION BY ACTOR_NAME ORDER BY RELEASE_DATE DESC) AS RN,
       COUNT(*)OVER(PARTITION BY ACTOR_NAME) AS NO_OF_FILMS
FROM ACTOR_RATING_SHIFT AS A
),

CTE_LATEST_RATINGS AS (
SELECT ACTOR_NAME, 
       FILM_RATING AS LATEST_RATING
FROM CTE_NUMBER_OF_FILMS
WHERE RN = 1
),

CTE_AVG_RATINGS AS (
SELECT ACTOR_NAME,
       AVG(CASE WHEN NO_OF_FILMS = 1 THEN FILM_RATING ELSE FILM_RATING END) AS AVG_RATING
FROM CTE_NUMBER_OF_FILMS
GROUP BY ACTOR_NAME,
         NO_OF_FILMS
)
  
SELECT A.ACTOR_NAME,
       B.AVG_RATING, 
	   A.LATEST_RATING, 
	   (A.LATEST_RATING - B.AVG_RATING) AS RATING_DIFFERENCE
FROM CTE_LATEST_RATINGS AS A
LEFT JOIN CTE_AVG_RATINGS AS B
ON A.ACTOR_NAME = B.ACTOR_NAME
ORDER BY A.ACTOR_NAME ASC;
