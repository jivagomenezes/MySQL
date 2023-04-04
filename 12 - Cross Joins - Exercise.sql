USE sql_store;
SELECT 
	s.name AS shipper,
    p.name AS product
FROM shippers s
CROSS JOIN products p
order by s.name