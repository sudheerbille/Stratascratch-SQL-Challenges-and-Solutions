## ID 9933 - Find all Danish athletes who won a medal ##

Question:

Find all Danish athletes who won a medal.
Output unique names only.

Solution:

SELECT NAME
FROM olympics_athletes_events
WHERE TEAM IN ('Denmark')
AND MEDAL IS NOT NULL
GROUP BY 1;
