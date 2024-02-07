SELECT Album.title,
       Track.Bytes,
       Track.UnitPrice,
       Track.Bytes * Track.UnitPrice AS revenue 
FROM Track
JOIN Album
USING (AlbumId)
GROUP BY Album.Title;