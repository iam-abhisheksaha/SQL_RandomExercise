USE sql_store;

UPDATE orders
SET comments = "You are a maderchod"
WHERE customer_id in (SELECT customer_id
				FROM customers
				WHERE points > 3000)




