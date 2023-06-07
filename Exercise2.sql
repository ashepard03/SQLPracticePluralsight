SELECT ProductID, ProductName, UnitPrice FROM northwind.products;
-- select products by id, name and price in ascending order
SELECT ProductID, ProductName, UnitPrice 
FROM northwind.products
ORDER BY UnitPrice;
-- products that are 7.50 or less
select ProductName from northwind.products
where UnitPrice <= 7.50;
-- products that have >= 100 units descending
select ProductName from northwind.products
where UnitsInStock >= 100;
ORDER BY DESC UnitPrice;
-- products that have >=100 units desc by price, iff 2 have same price asc by name
select ProductID, ProductName, UnitPrice from northwind.products
where UnitsInStock >= 100
ORDER BY DESC UnitPrice, ProductName;
-- no units on hand but, more than 1 on backorder 
select ProductID, ProductName, UnitPrice from northwind.products
where UnitsInStock = 0 AND UnitsOnOrder >= 1
order by ProductName;
-- table is called categories
-- lists all columns and rows of categories 
select * from northwind.categories;
-- lists all seafood items carried
select ProductName from northwind.proucts
where ProductId LIKE 8;
-- lists first and last names of employees
select FirstName, LastName from northwind.employees;
-- employees that have manager title
select FirstName, LastName from northwind.employeescategories
where Title LIKE "%manager%";
-- lists distinct job titles 
select distinct Title from northwind.employees;
-- information abt northwind suppliers
select * from northwind.suppliers;
-- list items that "Tokyo Traders" supplies to northwind
select * from northwind.products
where SupplierID = 4;
