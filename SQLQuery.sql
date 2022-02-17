use Northwind
--mostrar los productos de bodega
select * from Products
--mostrar nombre del producto y su codigo
select ProductName, ProductID from Products
--de la consulta anterior ordenarlo por el codigo del producto de menor a mayor
select ProductName, ProductID from Products
order by ProductID asc --desc(descendiente)
--de la consulta anteriora order pro el nombre del producto de la z-a
select ProductName, ProductID from Products
order by ProductName desc


select ProductName, ProductID, UnitPrice from Products
order by UnitPrice asc

select * from Categories

select ProductName, SupplierID, ProductID, UnitPrice from Products
where CategoryID = 2 and UnitPrice >= 10.00 and UnitPrice <= 40.00
order by UnitPrice asc

select ProductName, SupplierID, ProductID, UnitPrice from Products
where CategoryID = 2 and UnitPrice between 10 and 40


select * from Products
select * from Categories
select * from Suppliers

select Pro.ProductName, proveedor.CompanyName, pro.SupplierID, Cat.CategoryName, Cat.CategoryID, Pro.UnitPrice, proveedor.City, proveedor.Country
from Products as Pro, Categories as Cat, Suppliers as proveedor
where Pro.CategoryID = 2 and Pro.SupplierID = 2 and Cat.CategoryID = Pro.CategoryID and proveedor.SupplierID = Pro.SupplierID

/*mostrar el nombre del producto, codigo del proveedor, codigo categoria
  donde la categoria sea 2 y 4, los proveedores sera 3,5,14 y 20*/
select ProductName, SupplierID, CategoryID from Products
where CategoryID in(2,4) and SupplierID in(3,5,14,20)

select * from Customers

select * from Customers
where City like '%Ma%'