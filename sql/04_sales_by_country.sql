with country_sales as (
	select i.InvoiceId, i.InvoiceDate, il.UnitPrice, c.Country
	from Customer c
	inner join Invoice i
	on c.CustomerId = i.CustomerId
	inner join InvoiceLine il
	on i.InvoiceId = il.InvoiceId
)

-- Sales per Country
SELECT Country, SUM(UnitPrice) AS "Sales"
FROM country_sales
GROUP BY "Country"
ORDER BY "Sales" DESC