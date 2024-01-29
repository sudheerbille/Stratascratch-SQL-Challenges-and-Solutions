## Odd-numbered ID's Hired in February - ID 10136  ##

Question:

Find employees who started in February and have odd-numbered employee IDs.

Table: Worker

Table Structure:

worker_id: int
first_name: varchar
last_name: varchar
salary: int
joining_date: datetime
department: varchar

Solution:

SELECT * FROM WORKER
WHERE MONTHNAME(JOINING_DATE) IN ('February')
AND MOD(WORKER_ID,2) NOT IN (0);
