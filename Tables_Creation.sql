USE db

-- Create the database
CREATE DATABASE COMPANY;
USE COMPANY;

--------------------------------------------------Youssef Tables---------------------------------------------------------

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    ContactNumber VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(255)
);



-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
);


----------------------------------------------Philobater Tables----------------------------------------------------------------

create table Employee ( 
	EmployeeID Int Primary Key, 
	FirstName varchar(20) not null, 
	LastName varchar(20) not null,
	DepartmentID int, 
	HireDate date not null, 
	Position varchar(30) not null, 
	Salary float check (salary>0)
);


-- Create the Department table
create table Department (
	DepartmentId int primary key,
	DepartmentName varchar(50) not null,
	DepartmentLocation varchar(50)
);


------------------------------------------------Ahmed Tables------------------------------------------------------------------------

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL
);


--------------------------------------------------Haneen Tables---------------------------------------------------------------------

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Budget DECIMAL(10, 2)
);


CREATE TABLE Assignments (
    AssignmentID INT PRIMARY KEY,
    EmployeeID INT,
    ProjectID INT,
    Role VARCHAR(100),
    StartDate DATE
);
