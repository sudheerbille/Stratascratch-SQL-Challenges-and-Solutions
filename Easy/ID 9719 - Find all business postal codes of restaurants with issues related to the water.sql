## ID 9719 - Find all business postal codes of restaurants with issues related to the water ##

Question:

Find all business postal codes of restaurants with issues related to the water (violation description contains substring "water").

Solution:

SELECT BUSINESS_POSTAL_CODE
FROM sf_restaurant_health_violations
WHERE LOWER(VIOLATION_DESCRIPTION) LIKE '%water%'
GROUP BY 1;
