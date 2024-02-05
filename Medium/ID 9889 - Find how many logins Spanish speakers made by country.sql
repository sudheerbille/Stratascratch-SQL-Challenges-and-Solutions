Question:

Find how many logins Spanish speakers made by country.
Output the country along with the corresponding number of logins.
Order records by the number of logins in descending order.

Solution:

SELECT LOCATION,
       COUNT(*) AS NO_OF_LOGINS
FROM playbook_events PE
INNER JOIN playbook_users PU
ON PE.USER_ID = PU.USER_ID
WHERE LANGUAGE IN ('spanish')
GROUP BY 1
ORDER BY 2 DESC;
