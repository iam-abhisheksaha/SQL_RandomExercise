USE sql_store;

SELECT products.product_id,
		products.name AS product_name,
        order_items.quantity
FROM products
LEFT JOIN order_items ON 
	products.product_id = order_items.product_id