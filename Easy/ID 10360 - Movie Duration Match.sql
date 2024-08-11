## ID 10360 - Movie Duration Match ##

Question:

As a data scientist at Amazon Prime Video, you are tasked with enhancing the in-flight entertainment experience for Amazon’s airline partners. 
Your challenge is to develop a feature that suggests individual movies from Amazon's content database that fit within a given flight's duration.For flight 101,
find movies whose runtime is less than or equal to the flight's duration.The output should list suggested movies for the flight, including 'flight_id', 'movie_id', 
and 'movie_duration'."

Solution:

SELECT fs.flight_id, 
       ec.movie_id,
       ec.duration AS movie_duration
FROM flight_schedule AS fs
LEFT JOIN entertainment_catalog AS ec
ON ec.duration <= fs.flight_duration
WHERE flight_id IN (101);
