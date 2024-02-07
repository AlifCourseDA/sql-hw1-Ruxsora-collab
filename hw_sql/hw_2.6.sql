SELECT Name,
       COUNT(DISTINCT(TrackId)) AS frequency,
       bytes * unitprice AS revenue
FROM Track
GROUP BY Name
ORDER BY frequency, revenue DESC;


--- there is no correlation between times of tracks appearance in album and revenue