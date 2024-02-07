WITH cus AS (
  SELECT firstname, lastname
  FROM Customer)

SELECT cus.firstname, cus.lastname, total
FROM Invoice AS i 
INNER JOIN cus 
ON customerid
ORDER BY total ASC;
