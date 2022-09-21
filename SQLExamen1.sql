create database Examen;

Use Examen;

create table Customers(
	CustomerID Int PRIMARY KEY Identity,
	CompanyName varchar(100),
	ContactName varchar(100),
	ContactTitle varchar (100),
	Address varchar (150),
	City varchar (100),
	Region varchar (100),
	PostalCode int,
	Country varchar (100),
	Phone varchar (20),
	Fax varchar (20)
	);

create table CustomerCustomerDemo(
	CustomerTypeID int,
	CustomerID int,
	foreign key (CustomerID) References Customers (CustomerID),
	foreign key (CustomerTypeID) References CustomerDemographics (CustomerTypeID)
	)

create table CustomerDemographics(
	CustomerTypeID int primary key identity,
	CustomerDesc varchar(200)
)

create table Categories(
	CategoryID int primary key identity,
	CategoryName varchar(200),
	Description varchar(200),
	Picture varchar(200)
);

create table Suppliers(
	SupplierID int primary key identity,
	CompanyName varchar(200),
	ContactName varchar(200),
	ContactTitle varchar(200),
	Address varchar(200),
	City varchar(200),
	Region varchar(200),
	Postalcode int,
	Country varchar(200),
	Phone varchar(20),
	Fax varchar(200),
);

create table Products(
	ProductID int primary key identity,
	ProductName varchar(200),
	SupplierID int,
	CategoryID int,
	QuantityPerUnit int,
	UnitPrice int,
	UnitInStock int,
	UnitOnOrder int,
	ReorderLevel int,
	Discontinued binary,
	foreign key (SupplierID) References Suppliers (SupplierID),
	foreign key (CategoryID) References Categories (CategoryID)
);

create table Shipper(
	ShipperID int primary key identity,
	CompanyName varchar(200),
	Phone varchar(20)
);

create table Employees(
	EmployeeID int primary key identity,
	LastName varchar(200),
	FirstName varchar(200),
	Title varchar(200),
	TitleOfCourtesy varchar(200),
	BirthDate varchar(200),
	HireDate varchar(200),
	Address varchar(200),
	City varchar(200),
	Region varchar(200),
	PostalCode int,
	Country varchar(200),
	HomePhone varchar(20),
	Extencion varchar(10),
	Photo varchar(200),
	Notes varchar(200),
	ReportsTo varchar(200),
	PhotoPath varchar(200),
	foreign key (EmployeeID) references Employees (EmployeeID)
);

create table Region(
	RegionID int primary key identity,
	RegionDescription varchar(200)
	);

create table Territories(
	TerritoryID int primary key identity,
	TerritoryDescription varchar(200),
	RegionID int,
	foreign key (RegionID) references Region (RegionID)
);

create table EmployeeTerritories(
	EmployeeID int Primary key identity,
	Territory int
);

create table Orders(
	OrderID int primary key identity,
	CustomerID int,
	EmployeeID int,
	ShipperID int,
	OrderDate varchar(200),
	RequiredDate varchar(200),
	ShippedDate varchar(200),
	ShipVia varchar(200),
	Freight varchar(200),
	ShipName varchar(200),
	ShipAddress varchar(200),
	ShipCity varchar(200),
	ShipRegion varchar(200),
	ShipPostalCode int,
	ShipCountry varchar(200),
	foreign key (CustomerID) references Customers (CustomerID),
	foreign key (EmployeeID) references Employees (EmployeeID),
	foreign key (ShipperID) references Shipper (ShipperID)
);

create table OrderDetails(
	OrderID int,
	ProductID int,
	UnitPrice int,
	Quantity int,
	Discount int,
	foreign key (OrderID) references Orders (OrderID),
	foreign key (ProductID) references Products (ProductID)
	);

select * from Suppliers;

drop table employees;

