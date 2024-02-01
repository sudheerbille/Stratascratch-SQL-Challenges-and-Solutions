## ID 2010 - Top Streamers ##

Question:

List the top 10 users who accumulated the most sessions where they had more streaming sessions than viewing. 
Return the user_id, number of streaming sessions, and number of viewing sessions.

Solution:

WITH CTE AS (
SELECT USER_ID,
       COUNT(CASE WHEN SESSION_TYPE IN ('streamer') THEN 1 END) AS STREAMING_SESSIONS,
       COUNT(CASE WHEN SESSION_TYPE IN ('viewer') THEN 1 END) AS VIEWING_SESSIONS
FROM twitch_sessions
GROUP BY 1
ORDER BY 1
)

SELECT * 
FROM CTE
WHERE STREAMING_SESSIONS > VIEWING_SESSIONS;

Note: Only one user has more streaming sessions than viewing sessions.
