USE sql_invoicing;

CREATE TABLE invoices_archived AS
SELECT invoices.invoice_id,
		invoices.number,
		clients.name AS client,
        invoices.invoice_total,
        invoices.payment_total
FROM invoices
JOIN clients ON
	invoices.client_id = clients.client_id
WHERE payment_date IS NOT NULL