Use Northwind
Go

-- Display product records with unit prices higher than $100

SELECT *
FROM Products
WHERE UnitPrice >= 100;

-- Return the unit value minimum, maximum, average, and standard deviation for both current and discontinued products grouping by the “Discontinued” attribute.


SELECT 
    Discontinued,
    MIN(UnitPrice) AS MinUnitPrice,
    MAX(UnitPrice) AS MaxUnitPrice,
    AVG(UnitPrice) AS AvgUnitPrice,
    STDEV(UnitPrice) AS StdDevUnitPrice
    -- Had to remove a count * for the products total
FROM Products
GROUP BY Discontinued
ORDER BY Discontinued;


-- Display suppliers whose names start with “G” in alphabetical order.

SELECT CompanyName
FROM Suppliers
WHERE CompanyName LIKE 'G%'
ORDER BY CompanyName;



-- Display all employee names in Employees table formatted as FirstName, “ “, Lastname

SELECT CONCAT(FirstName, ' ', LastName) AS EmployeeName
FROM Employees;

-- Display all supplier names and Homepage values where Homepage is null. Return in alphabetical order by supplier name.  

SELECT CompanyName, HomePage
FROM Suppliers
WHERE HomePage IS NULL
ORDER BY CompanyName;


-- Get the number of customers in Northwind who are in countries with five or more customers. Display in alphabetical order by country name

SELECT Country, COUNT(*) AS NumberOfCustomers
FROM Customers
GROUP BY Country
HAVING COUNT(*) >= 5
ORDER BY Country ASC;



-- Get the total product costs for ProductID 20 as well as the associated orders IDs from the Orderdetails table.  Display results in ascending order on orderID.
--changed UnitPrice * Quantity * (1 - Discount) AS TotalCost to UnitPrice * Quantity AS TotalCost
SELECT 
    OrderID, ProductID, 
    UnitPrice * Quantity AS TotalCost
FROM OrderDetails
WHERE ProductID = 20
ORDER BY OrderID ASC;




-- Select all cities where there are employees with no duplicates, list cities in alphabetical order.

SELECT DISTINCT City
FROM Employees
ORDER BY City;



-- List the first and last name for employees who live in London, Seatle, or Redmound.  Return the employees city in output
--changed ORDER BY City, LastName, FirstName; to remove order by

SELECT FirstName, LastName, City
FROM Employees
WHERE City IN ('London', 'Seattle', 'Redmond');


-- Display all product IDs and names for out-of-stock products with a unit price in the range $20 -$25.  Show in stock count with results

SELECT ProductID, ProductName, UnitPrice, UnitsInStock
FROM Products
WHERE UnitsInStock = 0
  AND UnitPrice BETWEEN 20 AND 25
ORDER BY UnitPrice;