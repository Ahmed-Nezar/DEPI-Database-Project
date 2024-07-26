-- Question 1
SELECT 
    UPPER(Employee.FirstName) AS FirstName, 
    LOWER(Employee.LastName) AS LastName, 
    LEN(Employee.Position) AS LengthOfPosition, 
    Department.DepartmentName 
FROM Employee 
JOIN Department 
ON Employee.DepartmentID = Department.DepartmentID;

-- Question 2
SELECT 
    Department.DepartmentName, 
    ROUND(SUM(Employee.Salary), 2) AS DepartmentBudgetSummary, 
    COUNT(Employee.EmployeeID) AS NumberOfEmployeesInDepartment
FROM Employee 
JOIN Department 
ON Employee.DepartmentID = Department.DepartmentID
GROUP BY Department.DepartmentName;

-- Question 3
SELECT 
    UPPER(p.ProjectName) AS ProjectName,
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeName,
    a.Role
FROM Assignments AS a
JOIN Projects AS p
ON a.ProjectID = p.ProjectID
JOIN Employee AS e
ON a.EmployeeID = e.EmployeeID;

-- Question 4 Customer Order Analysis
SELECT 
    LOWER(c.CustomerName) AS customer_name, 
    COUNT(o.OrderID) AS total_orders, 
    SUM(o.TotalAmount) AS total_amount_spent
FROM customers c
JOIN orders o ON c.CustomerID = o.CustomerID
GROUP BY LOWER(c.CustomerName);

-- Question 5
SELECT 
    LEFT(ProductName, 10) AS TruncatedProductName,
    LEFT(ProductName, 2) AS ProductCategory,
    SUM(Quantity) AS TotalQuantityOrdered
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY LEFT(ProductName, 10), LEFT(ProductName, 2);

-- Question 6
SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS Name,
    e.Salary,
    d.DepartmentName,
    dept_avg.AvgSalary
FROM Employee AS e
JOIN Department AS d
ON e.DepartmentID = d.DepartmentID
JOIN (SELECT DepartmentID, AVG(Salary) AS AvgSalary 
     FROM Employee GROUP BY DepartmentID
    ) AS dept_avg
ON e.DepartmentID = dept_avg.DepartmentID;