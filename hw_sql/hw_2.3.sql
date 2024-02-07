


SELECT
      billingcountry,
      Track.Bytes,
      Track.UnitPrice,
      Track.Bytes * Track.UnitPrice AS revenue 
       
FROM Invoice
JOIN InvoiceLine
USING (InvoiceId)
JOIN Track
USING (TrackId)
GROUP BY billingcountry
ORDER BY revenue DESC;