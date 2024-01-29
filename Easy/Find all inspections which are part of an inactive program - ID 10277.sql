## Find all inspections which are part of an inactive program - ID 10277 ##

Question:
  
Find all inspections which are part of an inactive program.

Table: los_angeles_restaurant_health_inspections

Table Structure:
serial_number: varchar
activity_date: datetime
facility_name: varchar
score: int
grade: varchar
service_code: int
service_description: varchar
employee_id: varchar
facility_address: varchar
facility_city: varchar
facility_id: varchar
facility_state: varchar
facility_zip: varchar
owner_id: varchar
owner_name: varchar
pe_description: varchar
program_element_pe: int
program_name: varchar
program_status: varchar
record_id: varchar

Solution:

SELECT * 
FROM los_angeles_restaurant_health_inspections
WHERE PROGRAM_STATUS IN ('INACTIVE');
