-- Which sales agent made the most in sales over all?

SELECT
    MAX(TotalSales) TotalOverAllSales,
    EmployeeName
FROM
    (
        SELECT
            "$" || ROUND(TOTAL(i.total), 2) TotalSales,
            e.FirstName || ' ' || e.LastName AS EmployeeName
        FROM
            Invoice i,
            Employee e,
            Customer c
        WHERE
            i.CustomerId = c.CustomerId
            AND c.SupportRepId = e.EmployeeId
        GROUP BY
            EmployeeName
    ) AS Sales