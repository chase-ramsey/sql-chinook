-- Which country's customers spent the most?

SELECT
  Country,
  MAX(Total)
FROM
  (SELECT
    i.BillingCountry 'Country',
    SUM(i.Total) as Total
  FROM Invoice i
  GROUP BY i.BillingCountry) as CountrySales
