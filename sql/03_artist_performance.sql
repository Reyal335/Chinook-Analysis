with artist_performance as (
	select i.InvoiceId, i.InvoiceDate, il.UnitPrice, ar.Name
	from Invoice i 
	inner join InvoiceLine il 
	on i.InvoiceId = il.InvoiceId
	inner join Track t
	on il.TrackId = t.TrackId
	inner join Album a
	on a.AlbumId = t.AlbumId
	inner join Artist ar
	on ar.ArtistId = a.ArtistId
)

-- Artist Performance
SELECT Name AS "Artist", SUM(UnitPrice) as "Sales" 
FROM artist_performance 
GROUP BY "Artist"
ORDER BY "Sales" DESC