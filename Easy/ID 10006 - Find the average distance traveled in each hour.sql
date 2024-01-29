## https://platform.stratascratch.com/coding/10006-find-the-average-distance-traveled-in-each-hour?code_type=3 ##

## ID 10006 - Find the average distance traveled in each hour ##

Question:

Find the average distance traveled in each hour.
Output the hour along with the corresponding average traveled distance.
Sort records by the hour in ascending order.

Table: lyft_rides

Table Structure:
index: int
weather: varchar
hour: int
travel_distance: float
gasoline_cost: float

Solution:

SELECT HOUR, 
       AVG(TRAVEL_DISTANCE) AS AVG_TRAVELLED_DISTANCE
FROM lyft_rides
GROUP BY 1
ORDER BY 1 ASC;
