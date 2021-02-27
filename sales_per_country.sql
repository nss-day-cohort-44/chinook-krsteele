-- Provide a query that shows the total sales per country.

SELECT
    i.BillingCountry,
    "$" || printf("%.2f", SUM(i.Total)) AS TotalSales
FROM
    Invoice i
GROUP BY
    i.BillingCountry;