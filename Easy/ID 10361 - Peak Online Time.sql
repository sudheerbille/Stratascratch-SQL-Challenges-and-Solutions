## ID 10361 - Peak Online Time.sql ##

Question:

You are given a dataset from Amazon that tracks and aggregates user activity on their platform in certain time periods. For each device type, find the time period 
with the highest number of active users.The output should contain 'user_count', 'time_period', and 'device_type', where 'time_period' is a concatenation 
of 'start_timestamp' and 'end_timestamp', like ; "start_timestamp to end_timestamp".

Solution:
WITH CTE AS (
SELECT DEVICE_TYPE,
       USER_COUNT,
       start_timestamp||' TO '||end_timestamp AS TIME_PERIOD,
       DENSE_RANK()OVER(PARTITION BY DEVICE_TYPE ORDER BY USER_COUNT DESC) AS RN
FROM USER_ACTIVITY
)
SELECT DEVICE_TYPE,
       USER_COUNT,
       TIME_PERIOD
FROM CTE
WHERE RN = 1;
