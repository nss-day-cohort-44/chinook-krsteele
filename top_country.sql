-- Which country's customers spent the most?

SELECT
    Country,
    MAX(TotalSales)
FROM
    (
        SELECT
            BillingCountry AS Country,
            ROUND(SUM(Total), 2) AS TotalSales
        FROM
            Invoice
        GROUP BY
            Country
    );