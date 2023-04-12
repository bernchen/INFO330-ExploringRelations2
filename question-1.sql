/* (question-1.sql) Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil. */
SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry 
FROM customers, invoices
WHERE customers.CustomerId = invoices.CustomerId AND Country = 'Brazil';