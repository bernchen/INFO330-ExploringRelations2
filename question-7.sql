/* (question-7.sql) Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice). 
Note that this is the inverse of the query in Question 6--we often want to "flip" a business question from "all" to "none" like this, so practicing it is useful.*/
SELECT tracks.TrackId, tracks.Name, tracks.Composer
FROM tracks
LEFT JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId
WHERE invoice_items.TrackId IS NULL;