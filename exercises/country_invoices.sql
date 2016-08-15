-- Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT
  i.BillingCountry,
  COUNT(*) 'No. of invoices'
FROM Invoice i
GROUP BY BillingCountry
