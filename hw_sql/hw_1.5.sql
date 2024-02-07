SELECT 
      Customer.FirstName, 
      Customer.LastName, 
      Customer.Country, 
      InvoiceLine.unitprice,
      InvoiceLine.Quantity,
      (InvoiceLine.Unitprice * InvoiceLine.Quantity) AS amount_spent
FROM Customer
JOIN Invoice 
ON Invoice.CustomerId = Customer.CustomerId
JOIN InvoiceLine 
ON InvoiceLine.invoiceid = Invoice.InvoiceId
GROUP BY Customer.Country
ORDER BY amount_spent  DESC;
