USE sql_store;

SELECT customer_id,
	first_name,
    points,
    'BRONZE' AS type
FROM customers
WHERE points < '2000'

UNION

SELECT customer_id,
	first_name,
    points,
    'SILVER' AS type
FROM customers
WHERE points > '2000' AND points < '3000'

UNION

SELECT customer_id,
	first_name,
    points,
    'GOLD' AS type
FROM customers
WHERE points > '3000'
ORDER BY first_name
