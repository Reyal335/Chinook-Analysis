with customer_invoices as (
	select * 
	from Customer c
	inner join Invoice i
	on c.CustomerId = i.CustomerId
	inner join InvoiceLine il
	on i.InvoiceId = il.InvoiceId
)

-- Top Customers
SELECT CONCAT(FirstName, " ", LastName) AS "Name",  SUM(UnitPrice) AS "Total"
FROM customer_invoices
GROUP BY "Name"

