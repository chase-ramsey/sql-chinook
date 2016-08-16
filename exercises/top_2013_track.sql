-- Provide a query that shows the most purchased track of 2013.

SELECT
  TrackName,
  MAX(TotalSales)
FROM
  (SELECT
    t.Name as TrackName,
    SUM(l.UnitPrice) as TotalSales
  FROM Track t, InvoiceLine l
  WHERE t.TrackId = l.TrackId
  GROUP BY t.Name)
