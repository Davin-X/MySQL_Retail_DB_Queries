--Query to get the revenue pending for pending_payments daily

SELECT department_name, DATE(order_date),order_status,SUM(order_item_subtotal)
from retail_view where order_status='PENDING_PAYMENT'
GROUP BY DATE (order_date), department_name, order_status;