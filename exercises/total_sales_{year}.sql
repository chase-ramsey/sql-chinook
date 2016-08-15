-- What are the respective total sales for each of those years (2009 and 2011)?

SELECT
  STRFTIME('%Y', i.InvoiceDate) as InvoiceYear,
  sum(i.Total) 'Total'
FROM Invoice i
WHERE InvoiceYear = '2009'
OR InvoiceYear = '2011'
GROUP BY InvoiceYear
