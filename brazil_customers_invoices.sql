SELECT 
    c.FirstName || ' ' || c.LastName AS customer_name,
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
FROM Invoice AS i
    JOIN Customer AS c
        ON i.CustomerId = c.CustomerId
WHERE c.country = "Brazil";