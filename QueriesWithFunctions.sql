-- amount of suppliers
select count(CompanyName) from suppliers;
-- sum of employee salaries
select sum(Salary) from employees;
-- cheapest priced item 
select min(UnitPrice) from products;
-- average price of items 
select avg(UnitPrice) from products;
-- most expensive item
select max(UnitPrice) from products;
-- supplierid of each supplier and number of items they supply
select count(ProductName), SupplierID from products
group by SupplierID;
-- category id and avg price of items in category
select avg(UnitPrice), CategoryId from products
group by CategoryID;
-- for supppier that provide > 5 items, list number of items they supply
select count(ProductName), SupplierID from products
group by SupplierID
having count(ProductName) >= 5
order by SupplierID;
-- lsit id, name and inventory value and sort desc vaue then by name
select ProductID, ProductName, (UnitPrice * UnitsInStock) from products AS InventoryValue
order by InventoryValue desc, ProductName;
-- checking 8 
select * from products
where SupplierId like "7";


