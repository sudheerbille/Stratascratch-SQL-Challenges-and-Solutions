## https://platform.stratascratch.com/coding/10005-hour-of-highest-gas-expense?code_type=3 ##

## ID 10005 - Hour Of Highest Gas Expense ##

Question:

Find the hour with the highest gasoline cost. Assume there's only 1 hour with the highest gas cost.

Table: lyft_rides

Table Structure:
index: int
weather: varchar
hour: int
travel_distance: float
gasoline_cost: float

Solution:

SELECT HOUR 
FROM lyft_rides
WHERE GASOLINE_COST IN (SELECT MAX(GASOLINE_COST) FROM lyft_rides)
GROUP BY 1;
