-------------------------------------------------------Philobater--------------------------------------------------------

-- Foreign key Employees table referencing Departments table
ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Departments
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

----------------------------------------------------------Haneen------------------------------------------------------------

-- Foreign key Assignments table referencing Employees table
ALTER TABLE Assignments
ADD CONSTRAINT FK_Assignments_Employees
FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID);

-- Foreign key Assignments table referencing Projects table
ALTER TABLE Assignments
ADD CONSTRAINT FK_Assignments_Projects
FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID);

--------------------------------------------------------Yousef--------------------------------------------------------------

-- Foreign key Orders table referencing Customers table
ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

-------------------------------------------------------Ahmed----------------------------------------------------------------

-- Foreign key OrderDetails table referencing Orders table
ALTER TABLE OrderDetails
ADD CONSTRAINT FK_OrderDetails_Orders
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID);

-- Foreign key OrderDetails table referencing Products table
ALTER TABLE OrderDetails
ADD CONSTRAINT FK_OrderDetails_Products
FOREIGN KEY (ProductID) REFERENCES Products(ProductID);