## ID 9718 - Find all businesses which have a phone number listed ##

Question:

Find all businesses which have a phone number.

Solution:

SELECT BUSINESS_NAME
FROM sf_restaurant_health_violations
WHERE BUSINESS_PHONE_NUMBER IS NOT NULL
GROUP BY 1;
