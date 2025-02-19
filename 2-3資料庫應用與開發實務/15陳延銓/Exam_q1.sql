--任務一
--基本查詢
select * from Employees where HireDate >= '1993-1-1'

select * from Orders
where ShipPostalCode = '44087' or ShipPostalCode = '05022' or ShipPostalCode = '82520'

select top 6 with ties * from Products order by UnitsInStock desc

select * from Orders where ShippedDate is null

select * from OrderDetails where Quantity between 20 and 40

--統計查詢
select CategoryID, round(avg(UnitPrice),2) as AvgUnitPrice from Products
where CategoryID = '2' group by CategoryID 

select * from Products where UnitsInStock < ReorderLevel and UnitsOnOrder = 0

select OrderID, count(*) from OrderDetails group by OrderID having  count(*) > 5

select OrderID, ProductID, (UnitPrice * Quantity) * (1 - Discount) as 小計 from OrderDetails
where OrderID = '10263'

select SupplierID, COUNT(*) as CountType from Products group by SupplierID

select ProductID, avg(UnitPrice) as AvgUnitPrice, avg(Quantity) as AvgQuantity from OrderDetails
group by ProductID having avg(Quantity) > 10 order by ProductID

--任務二
select O.OrderID, CA.CategoryName, P.ProductName, P.UnitPrice, P.QuantityPerUnit,
round((OD.Quantity * OD.UnitPrice) * (1-OD.Discount), 0) as AvgUnitPrice, C.CustomerID, C.CompanyName,
C.ContactName, O.OrderDate, E.FirstName + E.LastName as EmployeesName, SH.CompanyName, S.CompanyName
from Orders as O
inner join OrderDetails as OD on O.OrderID = OD.OrderID
inner join Products as P on OD.ProductID = P.ProductID
inner join Categories as CA on CA.CategoryID = p.CategoryID
inner join Customers as C on c.CustomerID = O.CustomerID
inner join Employees as E on e.EmployeeID = O.EmployeeID
inner join Suppliers as S on S.SupplierID = P.SupplierID
inner join Shippers as Sh on sh.ShipperID = o.ShipVia
where Sh.CompanyName = 'United Package'

select * from Customers
where not exists (select * from Orders where Customers.CustomerID = Orders.CustomerID)

select e.EmployeeID, e.FirstName + e.LastName as EmployeeName, e.Title, e.Extension, e.Notes
from Employees as E where E.EmployeeID in (select distinct EmployeeID from Orders)

select P.* from Products as P
inner join OrderDetails as OD on P.ProductID = OD.ProductID
inner join Orders as O on O.OrderID = OD.OrderID
where year(O.OrderDate) =1998

select * from Products where ProductID in 
(Select ProductID from OrderDetails where OrderID in
(Select OrderID from Orders where year(OrderDate) = 1998))
Order by ProductID

--任務三
Create database [MySchool]
go
Use [MySchool]
go
Create Table [Department] (
	DeptID nchar(1) not null primary key,
	DeptName nvarchar(30) not null unique
)

Create Table [Course] (
	CourseID nchar(5) not null primary key,
	CourseName nvarchar(30) not null, 
	Credit int not null default 0,
	[Hour] int not null default 2,
	DeptID nchar(1) not null
)

Create Table [Student] (
	StuID nchar(10) not null Primary Key,
	StuName nvarchar(20) not null,
	Tel nvarchar(20) not null, 
	[Address] nvarchar(100),
	Birthday dateTime,
	DeptID nchar(1) not null,
	Foreign Key(DeptID) references [Department](DeptID)
)

Create Table [SelectionDetail] (
	StuID nchar(10) not null,
	CourseID nchar(5) not null,
	[Year] int default Year(getDate()),
	Term tinyint,
	score int default 0,
	Primary Key(StuID, CourseID),
	Foreign Key(StuID) references [Student](StuID),
	Foreign Key(CourseID) references [Course](CourseID)
)

--任務四
create proc InsertDeptmentData
	@AddDeptID nchar(1), @AddDeptName nvarchar(30)
as
begin
	declare @TmpID nchar(1) , @TmpName nvarchar(30)
	select @TmpID = DeptID from Department where DeptName = @AddDeptName
	select @TmpName = DeptName from Department where DeptID = @AddDeptID
	if (@TmpID is not null) print 'DeptName is Exist!'
	if (@TmpName is not null) print'DeptID is Exist!'
	if (@TmpID is null and @TmpName is null)
		insert into [Department] values (@AddDeptID, @AddDeptName)
end

exec InsertDeptmentData '3', '具現化系'

