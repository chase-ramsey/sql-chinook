-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT
  e.FirstName || ' ' || e.LastName as FullName,
  i.*
FROM Invoice i, Employee e, Customer c
WHERE c.CustomerId = i.CustomerId
AND c.SupportRepId = e.EmployeeId
AND e.Title LIKE 'Sales%'
