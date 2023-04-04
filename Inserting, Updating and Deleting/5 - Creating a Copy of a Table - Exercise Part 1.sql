USE sql_invoicing;
CREATE TABLE invoices_arquived
SELECT 
	i.invoice_id,
    i.number,
    c.name AS client,
    i.payment_total,
    i.invoice_total,
    i.invoice_date,
    i.payment_date,
    i.due_date
FROM invoices i
JOIN clients c
	USING (client_id)
WHERE payment_date IS NOT NULL