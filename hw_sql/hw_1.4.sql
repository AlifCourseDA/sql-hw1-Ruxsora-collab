SELECT  DISTINCT 
        Email ,  
        firstname,  
        lastname 
FROM Customer
JOIN Invoice
ON Customer.CustomerId = Invoice.CustomerId
JOIN InvoiceLine
ON Invoice.Invoiceid = InvoiceLine.Invoiceid
JOIN Track
ON Track.TrackId = InvoiceLine.TrackId
JOIN Genre
ON Track.genreid = Genre.GenreId
WHERE genre.Name = 'Rock'
ORDER BY Customer.Email LIKE 's%' DESC
;