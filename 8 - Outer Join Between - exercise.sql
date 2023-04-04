USE sql_store;

SELECT o.order_id, o.order_date, c.first_name, s.name, os.name AS status
FROM orders o
JOIN customers c
	USING (customer_id)
LEFT JOIN shippers s
	ON o.shipper_id = s.shipper_id
JOIN order_statuses os
	ON o.status = os.order_status_id

-- ORDER BY o.order_id 