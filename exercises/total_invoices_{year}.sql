-- How many Invoices were there in 2009 and 2011?

-- Basic
SELECT
  COUNT(*) 'Number of Invoices: 2009 & 2011'
FROM Invoice i
WHERE i.InvoiceDate LIKE '2009%'
OR i.InvoiceDate LIKE '2011%'

-- Better
SELECT
  COUNT(i.InvoiceId) as TotalInvoices,
  STRFTIME('%Y', i.InvoiceDate) as InvoiceYear
FROM Invoice i
WHERE InvoiceYear = '2009'
OR InvoiceYear = '2011'
GROUP BY InvoiceYear
