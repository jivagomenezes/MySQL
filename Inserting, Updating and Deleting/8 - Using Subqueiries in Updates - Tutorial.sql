USE sql_invoicing;

UPDATE invoices
SET payment_total = payment_total * 1.1
WHERE client_id IN
		(SELECT client_id
		FROM clients
		WHERE state IN ("CA", "NY"));