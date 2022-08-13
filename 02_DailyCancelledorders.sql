--Query to get the number of cancelled orders daily


SELECT department_name, DATE(order_date),order_status,COUNT(order_id)
FROM retail_view WHERE order_status='CANCELED'
GROUP BY DATE(order_date), department_name, order_status  ;