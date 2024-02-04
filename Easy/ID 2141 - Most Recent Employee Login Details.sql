Question:

Amazon's information technology department is looking for information on employees' most recent logins.
The output should include all information related to each employee's most recent login.

Solution:

WITH CTE AS (
SELECT *, 
       ROW_NUMBER()OVER(PARTITION BY WORKER_ID ORDER BY LOGIN_TIMESTAMP DESC) AS RN
FROM worker_logins
)

SELECT ID,
       WORKER_ID,
       LOGIN_TIMESTAMP,
       IP_ADDRESS,
       COUNTRY,
       REGION,
       CITY,
       DEVICE_TYPE
FROM CTE
WHERE RN IN (1);
       
