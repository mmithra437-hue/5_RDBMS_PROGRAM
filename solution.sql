Create Student table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Gender VARCHAR(10),
    DepartmentID INT
);

Insert student records
INSERT INTO Student (StudentID, StudentName, Gender, DepartmentID)
VALUES
(1001, 'Arun', 'Male', 101),
(1002, 'Divya', 'Female', 102),
(1003, 'Karthik', 'Male', 101);

Display all student records
SELECT * FROM Student;
