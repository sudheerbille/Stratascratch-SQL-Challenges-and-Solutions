## https://platform.stratascratch.com/coding/10127-calculate-samanthas-and-lisas-total-sales-revenue?code_type=3 ##

## ID 10127 - Calculate Samantha's and Lisa's total sales revenue ##

Question:

What is the total sales revenue of Samantha and Lisa?

Table: sales_performance

Table Structure:

salesperson: varchar
widget_sales: int
sales_revenue: int
id: int

Solution:

SELECT SUM(SALES_REVENUE) AS Total_sales
FROM sales_performance
WHERE SALESPERSON IN ('Samantha','Lisa');
