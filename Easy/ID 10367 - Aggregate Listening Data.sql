## ID 10367 - Aggregate Listening Data.sql ##

Question:

You're tasked with analyzing a Spotify-like dataset that captures user listening habits.For each user, calculate the total listening time and the count of unique songs
they've listened to. In the database duration values are displayed in seconds. Round the total listening duration to the nearest whole minute.The output should contain 
three columns: 'user_id', 'total_listen_duration', and 'unique_song_count'.

Solution:

SELECT USER_ID,
       COUNT(DISTINCT SONG_ID) AS UNIQUE_SONG_COUNT,
       SUM(ROUND(LISTEN_DURATION /60)) AS TOTAL_LISTEN_DURATION
FROM LISTENING_HABITS
GROUP BY USER_ID;
