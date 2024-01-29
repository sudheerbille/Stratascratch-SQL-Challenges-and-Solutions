## URL: https://platform.stratascratch.com/coding/10184-order-all-countries-by-the-year-they-first-participated-in-the-olympics?code_type=3 ##

## Order all countries by the year they first participated in the Olympics - ID 10184 ##  

Question: 

Order all countries by the year they first participated in the Olympics.Output the National Olympics Committee (NOC) name along with the desired year.
Sort records by the year and the NOC in ascending order.

Table: olympics_athletes_events

Table Structure:

id: int
name: varchar
sex: varchar
age: float
height: float
weight: datetime
team: varchar
noc: varchar
games: varchar
year: int
season: varchar
city: varchar
sport: varchar
event: varchar
medal: varchar

Solution:
SELECT NOC, 
       MIN(YEAR) AS First_Participation
FROM olympics_athletes_events
GROUP BY NOC
ORDER BY YEAR, NOC;

