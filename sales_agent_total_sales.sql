-- Provide a query that shows total sales 
-- made by each sales agent.

SELECT
e.FirstName || ' ' || e.LastName AS Sales_Agent,
"$" || ROUND(TOTAL(i.total), 2) Total_Sales
FROM Invoice i, Customer c, Employee e
WHERE i.customerId = c.CustomerId
    AND c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId;