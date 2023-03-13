USE sql_invoicing;

SELECT  payments.payment_id,payments.client_id,clients.name,payment_methods.name AS payment_method
FROM payments
JOIN payment_methods ON payments.payment_method = payment_methods.payment_method_id
JOIN clients ON clients.client_id = payments.client_id