--Assignment Questions: Joins
--Database: salesdb
USE salesdb;

-- Question 1: Inner Join
SELECT 
	e.firstName,
	e.lastName,
    e.email,
    o.officeCode
FROM 
	employees AS e
INNER JOIN
	offices AS o
ON 
	e.officeCode=o.officeCode;
    
-- Question 2: Left Join 
SELECT 
	p.productName,
    p.productVendor,
    p.productLine
FROM
	products AS p
LEFT JOIN 
	productlines AS pl
ON
	p.productLine=pl.productLine;
    
-- Question 3: Right Join
SELECT 
	o.orderDate,
    o.shippedDate,
    o.status,
    c.customerNumber
FROM 
	orders AS o
RIGHT JOIN
	customers AS c
ON 
	o.customerNumber=c.customerNumber
LIMIT 10;