USE sql_store;

UPDATE orders
SET comments ="Have more than 3000 points"
WHERE customer_id IN (
	SELECT customer_id
	FROM customers
	WHERE points > 3000)

