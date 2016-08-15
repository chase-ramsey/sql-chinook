-- Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT
  i.*,
  COUNT(l.InvoiceLineId) 'Line items'
FROM Invoice i, InvoiceLine l
WHERE i.InvoiceId = l.InvoiceId
GROUP BY i.InvoiceId
