/* (question-4.sql) Which sales agent made the most in sales in 2010? */
SELECT employees.FirstName, employees.LastName, SUM(invoices.Total) as 'total sales'
FROM employees, invoices, customers
WHERE invoices.CustomerId = customers.CustomerId
AND customers.SupportRepId = employees.EmployeeId
AND employees.Title = 'Sales Support Agent'
AND invoices.InvoiceDate LIKE '2010%'
GROUP BY employees.FirstName, employees.LastName
ORDER BY SUM(invoices.Total) DESC;