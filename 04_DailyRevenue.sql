--Query to get the revenue of complete or closed orders daily

SELECT department_name,DATE(order_date),order_status,COUNT(order_id),SUM(order_item_subtotal)
from retail_view WHERE order_status in ('COMPLETE','CLOSED')
GROUP BY DATE (order_date),department_name,order_status;