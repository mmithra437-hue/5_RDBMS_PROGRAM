-- ============================================================
-- SQL AUTO GRADING TEST
-- INSERT STUDENT RECORDS
-- ============================================================

USE CollegeDB;


-- ============================================================
-- TEST 1: Student table exists
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Student table exists'
    ELSE 'FAIL - Student table does not exist'
END AS Result
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Student';


-- ============================================================
-- TEST 2: Check total number of records
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) >= 3
    THEN 'PASS - Student table contains at least 3 records'
    ELSE 'FAIL - Student table must contain at least 3 records'
END AS Result
FROM Student;


-- ============================================================
-- TEST 3: Check Arun record
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Arun record inserted correctly'
    ELSE 'FAIL - Arun record is missing or incorrect'
END AS Result
FROM Student
WHERE StudentID = 1001
AND StudentName = 'Arun'
AND Gender = 'Male'
AND DepartmentID = 101;


-- ============================================================
-- TEST 4: Check Divya record
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Divya record inserted correctly'
    ELSE 'FAIL - Divya record is missing or incorrect'
END AS Result
FROM Student
WHERE StudentID = 1002
AND StudentName = 'Divya'
AND Gender = 'Female'
AND DepartmentID = 102;


-- ============================================================
-- TEST 5: Check Karthik record
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Karthik record inserted correctly'
    ELSE 'FAIL - Karthik record is missing or incorrect'
END AS Result
FROM Student
WHERE StudentID = 1003
AND StudentName = 'Karthik'
AND Gender = 'Male'
AND DepartmentID = 101;


-- ============================================================
-- TEST 6: Check StudentID 1001
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - StudentID 1001 exists'
    ELSE 'FAIL - StudentID 1001 does not exist'
END AS Result
FROM Student
WHERE StudentID = 1001;


-- ============================================================
-- TEST 7: Check StudentID 1002
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - StudentID 1002 exists'
    ELSE 'FAIL - StudentID 1002 does not exist'
END AS Result
FROM Student
WHERE StudentID = 1002;


-- ============================================================
-- TEST 8: Check StudentID 1003
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - StudentID 1003 exists'
    ELSE 'FAIL - StudentID 1003 does not exist'
END AS Result
FROM Student
WHERE StudentID = 1003;


-- ============================================================
-- DISPLAY ALL STUDENT RECORDS
-- ============================================================

SELECT
    StudentID,
    StudentName,
    Gender,
    DepartmentID
FROM Student
ORDER BY StudentID;
