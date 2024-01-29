## ID 10003 - Lyft Driver Wages ##

Question:
Find all Lyft drivers who earn either equal to or less than 30k USD or equal to or more than 70k USD.
Output all details related to retrieved records.

Table: lyft_drivers

Table Structure:

INDEX: INT
START_DATE: DATETIME
END_DATE: DATETIME
YEARLY_SALARY: INT

Solution:

SELECT * 
FROM lyft_drivers
WHERE YEARLY_SALARY <= 30000 
OR YEARLY_SALARY >= 70000;
