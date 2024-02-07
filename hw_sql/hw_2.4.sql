SELECT Employee.EmployeeId,
       Employee.FirstName,
       Employee.LastName,
       COUNT(Customer.FirstName) AS number_of_customers
FROM Employee
JOIN Customer
ON EmployeeID = SupportRepId
GROUP BY EmployeeId;