-- product name(s) of most expensive product
select ProductName, UnitPrice from products
where UnitPrice = 
(SELECT MAX(UnitPrice) FROM products);
-- order id, shipping name and address of all orders shipped via "fed shipping"
select OrderId, ShipName, ShipAddress from orders
where ShipVia = (select ShipperID from shippers where CompanyName = "Federal Shipping");
-- order ids of order that were "sasquatch ale" 34
select OrderID from `order details`
where ProductID = (select ProductID from products where ProductName = "Sasquatch Ale");
-- name of employee that sold 10266 id is 3
select FirstName, LastName from employees
where EmployeeID = (select EmployeeID from orders where OrderID = "10266");
-- name of customer that bought 10266
select ContactName from customers 
where CustomerID = (select CustomerID from orders where OrderID = "10266");