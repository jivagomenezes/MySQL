SELECT order_id, po.product_id, quantity, unit_price
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
