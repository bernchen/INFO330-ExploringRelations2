/* (question-5.sql) What was the most purchased track of 2013? */
SELECT tracks.name as 'track name', COUNT(invoice_items.TrackId) as "number purchased"
FROM tracks, invoice_items, invoices
WHERE tracks.TrackId = invoice_items.TrackId 
AND invoice_items.InvoiceId = invoices.InvoiceId 
AND invoices.InvoiceDate LIKE '2013%'
GROUP BY tracks.name
ORDER BY COUNT(invoice_items.TrackId) DESC;