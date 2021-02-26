SELECT COUNT(*) AS total_invoices_2009
FROM Invoice
WHERE InvoiceDate LIKE "2009-%";