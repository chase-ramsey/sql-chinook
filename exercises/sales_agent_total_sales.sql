-- Provide a query that shows total sales made by each sales agent.

SELECT
  e.EmployeeId,
  e.FirstName || ' ' || e.LastName 'Employee Name',
  SUM(i.Total) 'Total Sales'
FROM Employee e, Invoice i, Customer c
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId
