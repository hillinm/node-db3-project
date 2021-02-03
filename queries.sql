-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT p.ProductName, c.CategoryName
From Product as p
Join Category as c on p.CategoryId = c.Id  

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.id, s.CompanyName
FROM [Order] as o
JOIN Shipper as s on o.shipvia = s.Id
WHERE o.OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p.ProductName, o.Quantity
FROM Product as p
JOIN OrderDetail as o on p.id = o.ProductID
WHERE o.OrderId = '10251'
ORDER By p.ProductName

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.id, c.CompanyName, e.LastName
FROM [order] as o
JOIN Customer as c on o.CustomerId = c.Id
JOIN Employee as e on e.Id = o.employeeID