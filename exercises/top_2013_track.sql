-- Provide a query that shows the most purchased track of 2013.

SELECT
  TrackName,
  MAX(TotalSales)
FROM
  (SELECT
    t.Name as TrackName,
    SUM(l.UnitPrice) as TotalSales
  FROM Track t, InvoiceLine l, Invoice i
  WHERE t.TrackId = l.TrackId
  AND l.InvoiceId = i.InvoiceId
  AND STRFTIME('%Y', i.InvoiceDate) = '2013'
  GROUP BY t.Name)
