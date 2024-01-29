## ID 9883 - Find the oldest survivor per passenger class ##

Question:

Find the oldest survivor of each passenger class.
Output the name and the age of the survivor along with the corresponding passenger class.
Order records by passenger class in ascending order.

Table: titanic

Table_Structure:

passengerid: int
survived: int
pclass: int
name: varchar
sex: varchar
age: float
sibsp: int
parch: int
ticket: varchar
fare: float
cabin: varchar
embarked: varchar

Solution: 

WITH CTE AS
(
SELECT NAME,
       AGE,
       PCLASS,
       DENSE_RANK() OVER(PARTITION BY PCLASS ORDER BY AGE DESC) AS OLDEST
FROM titanic
WHERE SURVIVED IN (1)
)
SELECT NAME,
       AGE,
       PCLASS
FROM CTE
WHERE OLDEST IN (1);
