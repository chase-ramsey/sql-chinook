SELECT
  e.FirstName || ' ' || e.LastName as FullName,
  i.*
FROM Invoice i, Employee e, Customer c
WHERE c.CustomerId = i.CustomerId
AND c.SupportRepId = e.EmployeeId
AND e.Title LIKE 'Sales%'
