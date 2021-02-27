-- Provide a query that shows the total sales per country.

SELECT
    BillingCountry,
    "$" || ROUND(TOTAL(Total), 2) AS TotalSales
FROM
    Invoice
GROUP BY
    BillingCountry