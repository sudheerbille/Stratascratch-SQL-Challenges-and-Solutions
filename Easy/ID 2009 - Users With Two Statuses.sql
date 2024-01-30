## https://platform.stratascratch.com/coding/2009-users-with-two-statuses?code_type=3 ##

## ID 2009 - Users With Two Statuses ##

Question:
  
Find users who are both a viewer and streamer.

Table: twitch_sessions

Table Structure:
user_id: int
session_start: datetime
session_end: datetime
session_id: int
session_type: varchar

Solution:

SELECT USER_ID
FROM twitch_sessions
WHERE SESSION_TYPE IN ('streamer')
AND USER_ID IN(
SELECT USER_ID
FROM twitch_sessions
WHERE SESSION_TYPE IN ('viewer')
GROUP BY 1
)
GROUP BY 1
ORDER BY 1;
