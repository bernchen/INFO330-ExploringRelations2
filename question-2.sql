/* (question-2.sql) Show the sales agent's full name and invoices associated with each sales agent. */
SELECT t1.FirstName, t1.LastName, invoices.*
FROM employees AS t1, invoices, customers
WHERE invoices.CustomerId = customers.CustomerId
AND customers.SupportRepId = t1.EmployeeId
AND Title = 'Sales Support Agent';