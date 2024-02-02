## ID 9932 - Women In The Olympics Before World War 2 ##

Question:

Find unique names women who participated in an Olympics before World War 2. Let's consider the year 1939 as the start of WW2.

Solution:

SELECT NAME 
FROM olympics_athletes_events
WHERE SEX IN ('F')
AND YEAR < 1939
GROUP BY 1;

