--Query to get the revenue of complete or closed orders Monthly

SELECT  department_name, extract(YEAR_MONTH from order_date) as 'Year_Month', order_status, count(order_id), SUM(order_item_subtotal)
FROM retail_view WHERE order_status in('COMPLETE','CLOSED')
group by extract(YEAR_MONTH from order_date),department_name,order_status;