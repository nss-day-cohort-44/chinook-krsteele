-- Provide a query that shows the count of customers 
-- assigned to each sales agent.

SELECT
    e.FirstName || ' ' || e.LastName AS SalesAgent,
    COUNT(c.supportRepId) CustomerCount
FROM
    customer c,
    employee e
WHERE
    c.supportRepId = e.EmployeeId
GROUP BY
    e.EmployeeId;