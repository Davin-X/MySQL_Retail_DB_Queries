--Query to get the revenue pending for pending_payments Monthly

SELECT department_name, extract(YEAR_MONTH FROM order_date) AS 'Year_Month',order_status,SUM(order_item_subtotal)
from retail_view where order_status='PENDING_PAYMENT'
GROUP BY extract(YEAR_MONTH FROM order_date),department_name,order_status;