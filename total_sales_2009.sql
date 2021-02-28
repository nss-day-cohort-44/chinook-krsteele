SELECT SUM(Total) AS Total_Sales_2009
FROM Invoice
WHERE InvoiceDate LIKE "2009-%";