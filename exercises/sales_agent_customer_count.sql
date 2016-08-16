-- Provide a query that shows the count of customers assigned to each sales agent.

-- Simple
SELECT
  e.EmployeeId,
  e.FirstName || ' ' || e.LastName 'Employee name',
  COUNT(*) 'No. of customers'
FROM Employee e, Customer c
WHERE e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId

-- Complicated
SELECT
  EmployeeId,
  FullName 'Employee name',
  COUNT(*) 'No. of customers'
FROM
  (SELECT
    e.FirstName || ' ' || e.LastName as FullName,
    e.EmployeeId,
    c.CustomerId
  FROM Employee e, Customer c
  WHERE c.SupportRepId = e.EmployeeId) as AgentCustomers
GROUP BY AgentCustomers.EmployeeId
