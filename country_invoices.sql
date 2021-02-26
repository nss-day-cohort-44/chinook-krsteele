-- Provide a query that shows the # of invoices
--  per country. HINT: GROUP BY

SELECT BillingCountry, COUNT(InvoiceId) invoices_per
FROM Invoice
GROUP BY BillingCountry