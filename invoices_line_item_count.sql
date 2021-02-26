-- Provide a query that shows all Invoices 
-- but includes the # of invoice line items.

SELECT
i.InvoiceId,
i.CustomerId,
i.InvoiceDate,
i.BillingAddress,
i.BillingCity,
i.BillingState,
i.BillingCountry,
i.BillingPostalCode,
COUNT(InvoiceLine.InvoiceLineId) Line_Item_Count,
i.Total
FROM Invoice i, InvoiceLine
WHERE i.InvoiceId = InvoiceLine.InvoiceId
GROUP BY i.InvoiceId