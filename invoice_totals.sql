SELECT
Invoice.total,
Customer.FirstName || ' ' || Customer.LastName AS Customer_Name,
Customer.Country,
employee.FirstName || ' ' || employee.LastName AS Sales_Agent_Name
FROM Invoice
    JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
    JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId;