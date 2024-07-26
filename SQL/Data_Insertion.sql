USE COMPANY

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

-- Insert sample data into Departments table
INSERT INTO Department (DepartmentID, DepartmentName, DepartmentLocation)
VALUES
(1, 'IT', 'Cairo'),
(2, 'HR', 'Cairo');

-- Insert sample data into Employees table
INSERT INTO Employee (EmployeeID, FirstName, LastName, DepartmentID, HireDate, Position, Salary)
VALUES
(1, 'Philopater', 'Mansour', 1, '2024-07-01', 'Junior', 8000),
(2, 'Youssif', 'Gehad', 1, '2024-07-09', 'Junior', 8000),
(3, 'Ahmed', 'Nezar', 1, '2024-07-17', 'Junior', 8000),
(4, 'Haneen', 'Alaa', 1, '2024-07-18', 'Junior', 8000),
(5, 'Hazem', 'Omar', 1, '2021-02-15', 'Senior', 20000),
(6, 'Enjy', 'Moussa', 2, '2020-01-10', 'Senior', 15000);

-- Insert sample data into Products table
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity)
VALUES
(1, 'Product A', 'Category 1', 50.00, 100),
(2, 'Product B', 'Category 2', 30.00, 200),
(3, 'Product C', 'Category 1', 20.00, 150),
(4, 'Product D', 'Category 3', 40.00, 120),
(5, 'Product E', 'Category 2', 25.00, 180);

-- Insert sample data into OrderDetails table
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1, 1, 1, 2, 50.00),
(2, 1, 3, 1, 20.00),
(3, 2, 2, 3, 30.00),
(4, 3, 5, 4, 25.00),
(5, 4, 4, 2, 40.00),
(6, 5, 1, 5, 50.00);

-- Insert initial data into Projects table
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, Budget)
VALUES
(1, 'Project Alpha', '2023-01-01', '2023-12-31', 50000.00),
(2, 'Project Beta', '2023-02-01', '2023-11-30', 75000.00),
(3, 'Project Gamma', '2023-03-01', '2023-10-31', 60000.00),
(4, 'Project Delta', '2023-04-01', '2023-09-30', 80000.00),
(5, 'Project Epsilon', '2023-05-01', '2023-08-31', 90000.00);

-- Insert initial data into Assignments table
INSERT INTO Assignments (AssignmentID, EmployeeID, ProjectID, Role, StartDate)
VALUES
(1, 1, 1, 'Developer', '2023-01-01'),
(2, 2, 1, 'Tester', '2023-02-01'),
(3, 3, 2, 'Project Manager', '2023-03-01'),
(4, 4, 3, 'Developer', '2023-04-01'),
(5, 5, 4, 'Tester', '2023-05-01'),
(6, 6, 5, 'Project Manager', '2023-06-01');