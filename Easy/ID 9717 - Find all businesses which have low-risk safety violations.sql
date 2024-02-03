## ID 9717 - Find all businesses which have low-risk safety violations ##

Question:

Find all businesses which have low-risk safety violations.

Solution:

SELECT BUSINESS_NAME 
FROM sf_restaurant_health_violations
WHERE risk_category IN ('Low Risk')
GROUP BY 1;
