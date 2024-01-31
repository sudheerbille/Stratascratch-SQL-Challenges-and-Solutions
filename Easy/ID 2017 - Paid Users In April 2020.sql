## ID 2017 - Paid Users In April 2020 ##

Question:

How many paid users had any calls in Apr 2020?

Solution:

SELECT COUNT(*) AS PAID_USERS
FROM rc_users RU
INNER JOIN rc_calls RC
ON RU.USER_ID = RC.USER_ID
WHERE RU.STATUS IN ('Paid')
AND EXTRACT(YEAR_MONTH FROM DATE) IN (202004);
