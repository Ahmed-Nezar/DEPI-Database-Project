-- Create the database
create database company;
use company;


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
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);



-- Insert initial data into Customers table
INSERT INTO Customers (CustomerID, CustomerName, ContactNumber, Email, Address)
VALUES
(1, 'Youssif Gehad', '1234567890', 'Youssif@gmail.com', '18 Abaas El 3akaad St. Nasr City. Cairo'),
(2, 'Ali Mohamed', '0987654321', 'Ali@gmail.com', '15 Ali Fahmy St. Giza'),
(3, 'Nada Hassan', '5555555555', 'Nada@gmail.com', '55 Orabi St. El Mohandiseen. Cairo');



-- Insert initial data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(1, 1, '2023-03-05', 100.00),
(2, 2, '2023-06-10', 200.00),
(3, 1, '2023-09-15', 150.00),
(4, 3, '2023-12-20', 250.00),
(5, 3, '2024-01-25', 300.00);



-- 1. Data Validation and Preparation of Scripts
-- a. Validation of Data
-- Select data to ensure it is correctly inserted
SELECT * FROM Customers;
SELECT * FROM Orders;



-- b. Prepare ALTER and UPDATE Scripts
-- Add foreign key constraints
ALTER TABLE Orders
ADD CONSTRAINT FK_CustomerOrder
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);



-- Additional updates for data consistency if needed 
-- Disable safe update mode
SET SQL_SAFE_UPDATES = 0;

-- Perform your update 
UPDATE Orders 
SET CustomerID = 1 
WHERE OrderID = 4;

-- Enable safe update mode again
SET SQL_SAFE_UPDATES = 1;



-- c. Final Testing and Validation
-- Validate relationships and data consistency
SELECT * FROM Orders WHERE CustomerID NOT IN (SELECT CustomerID FROM Customers);



-- Question 4 Customer Order Analysis
SELECT 
    LOWER(c.CustomerName) AS customer_name, 
    COUNT(o.OrderID) AS total_orders, 
    SUM(o.TotalAmount) AS total_amount_spent
FROM 
    customers c
JOIN 
    orders o ON c.CustomerID = o.CustomerID
GROUP BY 
    LOWER(c.CustomerName);




-- Create the Employee table
create table Employee( 
EmployeeID Int Primary Key, 
FirstName varchar(20) not null, 
LastName varchar(20) not null,
DepartmentID int, 
HireDate date not null, 
Position varchar(30) not null, 
Salary float check (salary>0)
);
-- Create the Department table
create table Department(
DepartmentId int primary key,
DepartmentName varchar(50) not null,
DepartmentLocation varchar(50)
);

-- Insert sample data
insert into Employee values(1,"Philopater","Mansour",1,"2024-07-01","Junior",8000);
insert into Employee values(2,"Yossif","Gehad",1,"2024-07-09","Junior",8000);
insert into Employee values(3,"Ahmed","Nezar",1,"2024-07-17","Junior",8000);
insert into Employee values(4,"Haneen","Alaa",1,"2024-07-18","Junior",8000);
insert into Employee values(5,"Hazem","Omar",1,"2021-02-15","Senior",20000);
insert into Employee values(6,"Enjy","Moussa",2,"2020-01-10","Senior",15000);

insert into Department values(1,"IT","Cairo");
insert into Department values(2,"HR","Cairo");
-- Constraints and Relationships
alter table Employee
add constraint fk_depId foreign key(DepartmentID) references Department(DepartmentID);

-- Question 1
select upper(FirstName) as FirstName,lower(LastName)as LastName,length(position) as lengthOfPosition ,DepartmentNAme from Employee
join Department
using (DepartmentId);

-- Question 2
select DepartmentNAme,round(sum(Salary)) as DepartmentBudgetSummary,count(EmployeeID) as NumberOfEmployeesInDepartment 
from Employee 
join Department
using (DepartmentId)
group by DepartmentNAme;


-- Question 6
select concat(FirstName," ",LastName)as Name,salary,DepartmentName, dept_avg.AvgSalary
 from Employee as e
join Department as d
using (DepartmentId)
join 
(select DepartmentID,avg(Salary) as AvgSalary from Employee group by DepartmentID)
 as dept_avg on e.DepartmentID = dept_avg.DepartmentID;
 
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
    UnitPrice DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity)
VALUES
(1, 'Product A', 'Category 1', 50.00, 100),
(2, 'Product B', 'Category 2', 30.00, 200),
(3, 'Product C', 'Category 1', 20.00, 150),
(4, 'Product D', 'Category 3', 40.00, 120),
(5, 'Product E', 'Category 2', 25.00, 180);

INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1, 1, 1, 2, 50.00),
(2, 1, 3, 1, 20.00),
(3, 2, 2, 3, 30.00),
(4, 3, 5, 4, 25.00),
(5, 4, 4, 2, 40.00),
(6, 5, 1, 5, 50.00);

ALTER TABLE OrderDetails
ADD CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
ADD CONSTRAINT FK_OrderDetails_Products FOREIGN KEY (ProductID) REFERENCES Products(ProductID);


SELECT 
    LEFT(ProductName, 10) AS TruncatedProductName,
    LEFT(ProductName, 2) AS ProductCategory,
    SUM(Quantity) AS TotalQuantityOrdered
FROM 
    Products p
JOIN 
    OrderDetails od ON p.ProductID = od.ProductID
GROUP BY 
    LEFT(ProductName, 10), LEFT(ProductName, 2);






