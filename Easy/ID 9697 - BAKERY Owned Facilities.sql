## ID 9697 - BAKERY' Owned Facilities ##

Question:

Find the owner_name and the pe_description of facilities owned by 'BAKERY' where low-risk cases have been reported.

Solution:

SELECT OWNER_NAME,
       PE_DESCRIPTION 
FROM los_angeles_restaurant_health_inspections
WHERE LOWER(OWNER_NAME) LIKE '%bakery%'
AND PE_DESCRIPTION LIKE '%LOW%RISK%';


