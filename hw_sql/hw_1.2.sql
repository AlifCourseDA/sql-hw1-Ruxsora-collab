SELECT billingcountry, invoiceid, total
FROM Invoice
GROUP BY billingcountry
ORDER BY total ASC
LIMIT 5 ;