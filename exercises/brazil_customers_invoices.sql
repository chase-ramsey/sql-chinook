SELECT
  c.FirstName || ' ' || c.LastName as FullName,
  i.InvoiceId,
  i.InvoiceDate,
  i.BillingCountry
From Customer c, Invoice i
WHERE c.Country = 'Brazil'
gs
