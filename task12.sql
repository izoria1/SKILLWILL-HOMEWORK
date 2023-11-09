-- Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName CHAR(50),
    LastName CHAR(50),
    DepartmentID INT,
    ManagerID INT
);

-- Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName CHAR(100)
);

-- Managers Table
CREATE TABLE Managers (
    ManagerID INT PRIMARY KEY,
    ManagerName CHAR(50)
);

-- Connect Employees to Departments
ALTER TABLE Employees
ADD CONSTRAINT FK_Department
FOREIGN KEY (DepartmentID)
REFERENCES Departments(DepartmentID);

-- Connect Employees to Managers
ALTER TABLE Employees
ADD CONSTRAINT FK_Manager
FOREIGN KEY (ManagerID)
REFERENCES Managers(ManagerID);

-- Get Employee info with Department names
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- Get Employee info with Manager names
SELECT Employees.FirstName, Employees.LastName, Managers.ManagerName
FROM Employees
JOIN Managers ON Employees.ManagerID = Managers.ManagerID;
