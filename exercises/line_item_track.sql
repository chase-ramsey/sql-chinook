-- Provide a query that includes the purchased track name with each invoice line item.

SELECT
  i.*,
  t.name
FROM InvoiceLine i, Track t
WHERE i.TrackId = t.TrackId
