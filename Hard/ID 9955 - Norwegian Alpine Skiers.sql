## ID 9955 - Norwegian Alpine Skiers ##

Question:
Find all Norwegian alpine skiers who participated in 1992 but didn't participate in 1994. Output unique athlete names.

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

SELECT NAME 
FROM olympics_athletes_events
WHERE TEAM IN ('Norway')
AND YEAR IN (1992)
AND SPORT IN ('Alpine Skiing')
AND ID NOT IN (SELECT ID 
FROM olympics_athletes_events
WHERE TEAM IN ('Norway')
AND YEAR IN (1994)
AND SPORT IN ('Alpine Skiing')
GROUP BY 1)
GROUP BY 1;
