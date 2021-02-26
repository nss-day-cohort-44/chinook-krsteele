SELECT 
employee.FirstName || ' ' || employee.LastName AS Sales_Agent,
i.InvoiceId,
i.CustomerId,
i.InvoiceDate,
i.BillingAddress,
i.BillingCity,
i.BillingState,
i.BillingCountry,
i.BillingPostalCode,
i.Total
FROM Invoice AS i
    JOIN Customer ON i.CustomerId = Customer.CustomerId
    JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
ORDER BY Employee.LastName ASC;