# Database Project for Data Engineering Track in DEPI
## Overview
This project is a collaborative effort by Haneen Alaa, Ahmed Nezar, Philobateer, and Youssef Gehad and Supervised by Hazem Omar. It was undertaken as part of the Data Engineering track in the Digital Egypt Pioneers Initiative (DEPI), specifically for the SQL course. The project involves creating and managing a database for a hypothetical company, covering various aspects such as customer orders, employee assignments, and departmental budgets.

## Team Members
- Haneen Alaa
- Ahmed Nezar
- Philobateer
- Youssef Gehad

## Project Objectives
1. **Database Creation:** Design and implement a relational database with tables for customers, orders, employees, departments, products, projects, and assignments.
2. **Data Integrity:** Ensure referential integrity through the use of primary and foreign keys.
3. **Data Manipulation:** Perform various SQL queries to retrieve and manipulate data for business insights.

## Database Schema

1. Customers
   - CustomerID (Primary Key)
   - CustomerName
   - ContactNumber
   - Email
   - Address
     
2. Orders
   - OrderID (Primary Key)
   - CustomerID (Foreign Key)
   - OrderDate
   - TotalAmount
     
3. Employee
   - EmployeeID (Primary Key)
   - FirstName
   - LastName
   - DepartmentID (Foreign Key)
   - HireDate
   - Position
   - Salary
     
4. Department
   - DepartmentID (Primary Key)
   - DepartmentName
   - DepartmentLocation
     
5. Products
    - ProductID (Primary Key)
    - ProductName
    - Category
    - Price
    - StockQuantity
      
6. OrderDetails
    - OrderDetailID (Primary Key)
    - OrderID (Foreign Key)
    - ProductID (Foreign Key)
    - Quantity
    - UnitPrice
      
7. Projects
    - ProjectID (Primary Key)
    - ProjectName
    - StartDate
    - EndDate
    - Budget
      
8. Assignments
    - AssignmentID (Primary Key)
    - EmployeeID (Foreign Key)
    - ProjectID (Foreign Key)
    - Role
    - StartDate
  
## Installation
### Database Setup:
- Create the database using the provided SQL scripts.
- Ensure that all tables are created with the correct primary and foreign key constraints.
### Data Insertion:
- Insert initial data into each table using the provided scripts.
### Query Execution:
- Execute the provided SQL queries to retrieve and analyze data.

## Contributions
- **Haneen Alaa:** Worked on project assignments and department budget summary queries.
- **Ahmed Nezar:** Developed the customer and order tables and related queries.
- **Philobateer:** Focused on employee and department tables and their relationships.
- **Youssef Gehad:** Contributed to product and order detail tables and related queries.
