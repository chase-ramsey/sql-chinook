-- Which sales agent made the most in sales over all?

SELECT
  AgentTotals.EID 'Employee ID',
  AgentTotals.FullName 'Name',
  MAX(AgentTotals.ATotal) 'Top sales total'
FROM (SELECT
    e.EmployeeId as EID,
    e.FirstName || ' ' || e.LastName as FullName,
    SUM(i.Total) as ATotal
  FROM Employee e, Invoice I, Customer c
  WHERE i.CustomerId = c.CustomerId
  AND c.SupportRepId = e.EmployeeId
  GROUP BY e.EmployeeId) as AgentTotals
