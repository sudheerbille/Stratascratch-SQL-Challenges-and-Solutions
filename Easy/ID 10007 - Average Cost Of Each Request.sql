## https://platform.stratascratch.com/coding/10007-average-cost-of-each-request?code_type=3 ##

## ID 10007 - Average Cost Of Each Request ##

Question:

Find the average cost of each request status.
Request status can be either 'success' or 'fail'.
Output the request status along with the average cost.

Table: uber_ride_requests

Table Structure:

request_id: int
request_status: varchar
distance_to_travel: float
monetary_cost: float
driver_to_client_distance: float

Solution:

SELECT REQUEST_STATUS,
       AVG(MONETARY_COST) AS AVG_COST
FROM uber_ride_requests
GROUP BY 1;
