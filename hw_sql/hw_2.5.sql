SELECT 
       AlbumId, 
       COUNT(Name) AS length_of_album,
       bytes * unitprice AS revenue
FROM Track
GROUP BY AlbumId
ORDER BY  length_of_album DESC;

--- there is no correlation between length of album and revenue. 