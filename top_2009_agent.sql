-- Which sales agent made the most in sales in 2009?

-- My attempt, which totally doesn't work
SELECT
DISTINCT e.FirstName || ' ' || e.LastName AS Sales_Agent,
ROUND(MAX(i.total), 2) Total_Sales
FROM Invoice i, Customer c, Employee e
WHERE i.customerId = c.CustomerId
    AND c.SupportRepId = e.EmployeeId
    AND (
        SELECT
        strftime('%Y', i.InvoiceDate) AS Invoice_Year
        FROM Invoice
        WHERE Invoice_Year = '2009'
        )
GROUP BY e.EmployeeId;

-- The answer Steve gave us this morning, 
-- that I doubt I ever could have arrived at on my own.
-- I mostly understand it, but I do have questions, 
-- which I feel discouraged from asking based on past interactions.

SELECT
    MAX(TotalSales),
    EmployeeName
FROM
    (
        SELECT
            "$" || printf("%.2f", SUM(i.Total)) AS TotalSales,
            e.FirstName || ' ' || e.LastName AS EmployeeName,
            strftime ('%Y', i.InvoiceDate) AS InvoiceYear
        FROM
            Invoice i,
            Employee e,
            Customer c
        WHERE
            i.CustomerId = c.CustomerId
            AND c.SupportRepId = e.EmployeeId
            AND InvoiceYear = '2009'
        GROUP BY
            EmployeeName,
            InvoiceYear
    ) AS Sales
