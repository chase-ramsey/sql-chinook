-- Provide a query that shows the

  -- Invoice Total,
  -- Customer name,
  -- Country and
  -- Sale Agent name

-- for all invoices and customers.

SELECT
  i.Total 'Invoice Total',
  c.FirstName || ' ' || c.LastName 'Customer Name',
  i.BillingCountry 'Billing Country',
  e.FirstName || ' ' || e.LastName 'Employee Name'
FROM Invoice i, Customer c, Employee e
WHERE c.CustomerId = i.CustomerId
AND c.SupportRepId = e.EmployeeId
AND e.title LIKE 'Sales%'
