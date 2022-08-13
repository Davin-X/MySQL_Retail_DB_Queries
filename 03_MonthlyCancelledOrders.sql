--Query to get the number of cancelled orders Monthly

SELECT department_name, extract(YEAR_MONTH FROM order_date) AS 'Year_Month',order_status,COUNT(order_id)
FROM retail_view WHERE order_status='CANCELED'
GROUP BY extract(YEAR_MONTH FROM order_date),department_name,order_status;