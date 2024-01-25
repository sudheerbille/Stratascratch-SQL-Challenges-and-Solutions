## Highest Crime Rate - ID 10132 ##

Question:
Find the number of crime occurrences for each day of the week. Output the day alongside the corresponding crime count.

Table: sf_crime_incidents_2014_01

Table Structure : 

incidnt_num: float
category: varchar
descript: varchar
day_of_week: varchar
date: datetime
time: datetime
pd_district: varchar
resolution: varchar
address: varchar
lon: float
lat: float
location:varchar
id: int

Solution :

SELECT DAY_OF_WEEK, 
       COUNT(*) 
FROM sf_crime_incidents_2014_01
GROUP BY 1;
