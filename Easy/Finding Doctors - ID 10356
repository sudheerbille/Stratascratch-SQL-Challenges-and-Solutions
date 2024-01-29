## Finding Doctors - ID 10356 ##

Question :
Find doctors with the last name of 'Johnson' in the employee list. The output should contain both their first and last names.

Table Structure:

first_name: varchar
last_name: varchar
profession: varchar
employee_id: int
birthday: datetime
birth_month: int

Solution :

SELECT first_name, last_name
FROM employee_list
WHERE last_name = 'Johnson'
AND profession = 'Doctor'
group by first_name, last_name
order by first_name, last_name;
