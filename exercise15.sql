USE sql_invoicing;

SELECT 
		payments.date,
		clients.name AS client,
        payments.amount,
        payment_methods.name  AS payment_method
        
FROM payments
JOIN clients 
	USING(client_id)
LEFT JOIN payment_methods
	ON payments.payment_method = payment_methods.payment_method_id