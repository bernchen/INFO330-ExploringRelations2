/*(question-6.sql) Find tracks (id, name and composer) that are part of a line in an invoice. 
(In other words, we're finding all the tracks that have actually been bought at some point--
if they're not in an invoice somewhere in the database, they've never been purchased.) */
SELECT tracks.TrackId, tracks.Name, tracks.Composer
FROM tracks
INNER JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId;