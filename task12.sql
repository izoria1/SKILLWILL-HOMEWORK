-- Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    ManagerID INT
);

-- Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

-- Managers Table
CREATE TABLE Managers (
    ManagerID INT PRIMARY KEY,
    ManagerName VARCHAR(50)
);

-- Create Foreign Key Relationships
ALTER TABLE Employees
ADD CONSTRAINT FK_Department
FOREIGN KEY (DepartmentID)
REFERENCES Departments(DepartmentID);

ALTER TABLE Employees
ADD CONSTRAINT FK_Manager
FOREIGN KEY (ManagerID)
REFERENCES Managers(ManagerID);


SELECT e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;

SELECT e.FirstName, e.LastName, m.ManagerName
FROM Employees e
JOIN Managers m ON e.ManagerID = m.ManagerID;
