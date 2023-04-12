/*(question-3.sql) Provide a query that includes the purchased track name AND artist name with each invoice line item. */
SELECT t1.Name as 'track name',  t2.Name as 'artist name', t3.*
FROM tracks AS t1, artists AS t2, invoice_items AS t3
WHERE t1.TrackId = t3.TrackId;