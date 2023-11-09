-- Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName CHAR
);
-- Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName CHAR,
    LastName CHAR,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
-- Courses Table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName CHAR,
    ProfessorID INT,
    StudentID INT, -- Added StudentID for reference
    FOREIGN KEY (ProfessorID) REFERENCES Professors(ProfessorID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);
-- Professors Table
CREATE TABLE Professors (
    ProfessorID INT PRIMARY KEY,
    ProfessorName CHAR
);


-- Students and their courses using INNER JOIN
SELECT Students.FirstName, Students.LastName, Courses.CourseName
FROM Students
JOIN Courses ON Students.StudentID = Courses.StudentID;

-- Professors and their courses using LEFT JOIN
SELECT Professors.ProfessorName, Courses.CourseName
FROM Professors
LEFT JOIN Courses ON Professors.ProfessorID = Courses.ProfessorID;

-- All students and their courses, including those without courses using RIGHT JOIN
SELECT Students.FirstName, Students.LastName, Courses.CourseName
FROM Students
RIGHT JOIN Courses ON Students.StudentID = Courses.StudentID;

-- All students and their courses, with students even if they don't have courses using FULL OUTER JOIN
SELECT Students.FirstName, Students.LastName, Courses.CourseName
FROM Students
FULL OUTER JOIN Courses ON Students.StudentID = Courses.StudentID;
