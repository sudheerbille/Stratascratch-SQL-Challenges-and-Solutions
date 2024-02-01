## ID 2005 -Share of Active Users ## 

Question:

Output share of US users that are active. Active users are the ones with an "open" status in the table.

WITH CTE AS (
SELECT COUNT(CASE WHEN STATUS IN ('open') THEN 1 END) AS ACTIVE_USERS,
       COUNT(COUNTRY) AS TOTAL_USERS
FROM fb_active_users
WHERE COUNTRY IN ('USA'))
  
SELECT (ACTIVE_USERS/TOTAL_USERS) AS ACTIVE_USERS_SHARE FROM CTE;
