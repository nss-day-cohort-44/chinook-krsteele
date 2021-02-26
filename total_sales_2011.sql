SELECT SUM(Total) AS Total_Sales_2011
FROM Invoice
WHERE InvoiceDate LIKE "2011-%";