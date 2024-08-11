## ID 10362 - Top Monthly Sellers.sql ##

Question:
You are provided with a transactional dataset from Amazon that contains detailed information about sales across different products and marketplaces. Your task is to 
list the top 3 sellers in each product category for January.The output should contain 'seller_id' , 'total_sales' ,'product_category' , 'market_place', and 'month'.

Solution:

WITH CTE AS (
SELECT SELLER_ID,
       TOTAL_SALES,
       PRODUCT_CATEGORY,
       MARKET_PLACE,
       MONTH,
       DENSE_RANK()OVER(PARTITION BY PRODUCT_CATEGORY ORDER BY TOTAL_SALES DESC) AS RN
FROM SALES_DATA
WHERE MONTH IN ('2024-01')
)
SELECT SELLER_ID,
       TOTAL_SALES,
       PRODUCT_CATEGORY,
       MARKET_PLACE,
       MONTH
FROM CTE
WHERE RN <=3;
