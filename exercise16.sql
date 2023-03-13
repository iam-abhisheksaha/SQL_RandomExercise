USE sql_store;

SELECT shippers.shipper_id,
		shippers.name AS shipper,
        products.name AS product
FROM shippers
CROSS JOIN products

ORDER BY shippers.shipper_id