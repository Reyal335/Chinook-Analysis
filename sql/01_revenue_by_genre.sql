with genre_sales as (
	select i.InvoiceId, i.InvoiceDate, il.UnitPrice, g.Name as 'Genre'
	from Invoice i 
	inner join InvoiceLine il 
	on i.InvoiceId = il.InvoiceId
	inner join Track t
	on il.TrackId = t.TrackId
	inner join Genre g
	on t.GenreId = g.GenreId
) 

-- Revenue By Genre
SELECT Genre, SUM(UnitPrice) AS "Total Sales"
FROM genre_sales 
GROUP BY Genre
ORDER BY "Total Sales" DESC

