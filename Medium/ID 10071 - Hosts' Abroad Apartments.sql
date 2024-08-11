## ID 10071 - Hosts' Abroad Apartments.sql ##

Question:

Find the number of hosts that have accommodations in countries of which they are not citizens.

Solution:

SELECT COUNT(DISTINCT AH.HOST_ID) AS NO_OF_HOSTS
FROM AIRBNB_HOSTS AH
LEFT JOIN AIRBNB_APARTMENTS AA
ON AH.HOST_ID = AA.HOST_ID
WHERE AH.NATIONALITY <> AA.COUNTRY;
