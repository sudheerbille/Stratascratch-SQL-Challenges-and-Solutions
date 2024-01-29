## - ID 10004 - Find all Lyft rides which happened on rainy days before noon ##

Question:
Find all Lyft rides which happened on rainy days before noon.

Table: lyft_rides

Table Structure:

INDEX: INT
WEATHER: VARCHAR
HOUR: INT
TRAVEL_DISTANCE: FLOAT
GASOLINE_COST: FLOAT

Solution:

SELECT * 
FROM lyft_rides
WHERE WEATHER IN ('rainy')
AND HOUR <= 12;
