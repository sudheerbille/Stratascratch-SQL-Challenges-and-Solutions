Question:

Find all routine inspections where high-risks issues were found.

Solution:

SELECT *
FROM los_angeles_restaurant_health_inspections
WHERE SERVICE_DESCRIPTION IN ('ROUTINE INSPECTION')
AND PE_DESCRIPTION LIKE '%HIGH RISK%'
