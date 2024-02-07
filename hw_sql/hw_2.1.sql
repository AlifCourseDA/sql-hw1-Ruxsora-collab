SELECT Name,
       COUNT(DISTINCT(TrackId)) AS frequency 
FROM Track
GROUP BY Name
ORDER BY frequency DESC;


--- 6 tracks 5 times, 4 tracks 4 times, 21 tracks 3 times