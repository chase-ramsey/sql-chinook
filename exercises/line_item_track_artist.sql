-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT
  i.*,
  t.name 'Track',
  a.name 'Artist'
FROM InvoiceLine i, Track t, Album b, Artist a
WHERE i.TrackId = t.TrackId
AND t.AlbumId = b.AlbumId
AND b.ArtistId = a.ArtistId
GROUP BY i.InvoiceLineId
