SELECT COUNT(*) AS total_invoices_2011
FROM Invoice
WHERE InvoiceDate LIKE "2011-%";