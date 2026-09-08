# REQUIREMENTS DOCUMENT

# PROJECT TITLE
-- Student Management System

# PROJECT OBJECTIVE
-- The main objective of the Student Management System is 
-- to store and manage informantion about students, 
-- departments, teachers, courses, enrollments, and marks 
-- by using MySQL.

# FUNCTIONAL REQUIREMENTS
-- 1. Store department information.
-- 2. Store student information.
-- 3. Store teacher information.
-- 4. Store course information.
-- 5. Enroll students in courses.
-- 6. Store marks obtained by students.
-- 7. Assign teachers to courses.
-- 8. Display student detail.
-- 9. Display student and department details.
-- 10. Display student course details.
-- 11. Find students based on marks.
-- 12. Calculate average marks.
-- 13. Find highest and lowest marks.
-- 14. Find students enrolled in multiple courses.
-- 15. Retrieve useful information using SQL queries.

# ENTITIES / TABLES
-- 1. Department
-- 2. Student
-- 3. Teacher
-- 4. Course
-- 5. Enrollment
-- 6. Teacher_Course

# RELATIONSHIPS
-- 1. One department can have many students.
-- 2. One department can have many teachers.
-- 3. One department can have many courses.
-- 4. One student can have many courses.
-- 5. One course can have many students.
-- 6. One teacher can teach many courses.
-- 7. One course can be taught by many teachers.

# DATABASE REQUIREMENTS
-- STUDENT INFORMATION:
-- Student ID,
-- Student Name,
-- Email,
-- Phone,
-- Date of Birth,
-- Gender ,
-- Department ID

-- DEPARTMENT INFORMATION:
-- Department ID,
-- Department Name,
-- Location

-- TEACHER INFORMATION:
-- Teacher ID,
-- Teacher Name,
-- Email,
-- Phone,
-- Department ID

-- COURSE INFORMATION:
-- Course ID,
-- Course Name,
-- Course Code,
-- Credits,
-- Department ID

-- ENROLLMENT INFORMATION:
-- Enrollment ID,
-- Student ID,
-- Course ID,
-- Enrollment Date,
-- Marks;

-- TEACHER-COURSE INFORMATION:
-- Teacher ID, 
-- Course ID

# DATABASE FEATURES
-- Primary Key
-- Foreign Key
-- Unique Key
-- NOT NULL Constraints
-- AUTO_INCREMENT
-- INNER JOIN
-- LEFT JOIN
-- Group By
-- Having
-- Aggregate Function
-- Subqueries
-- Views
-- Stored Procedures

# NON-FUNCTIONAL REQUIREMENTS
-- 1. The database should maintain data accuracy. 
-- 2. Each record should have a unique identifier.
-- 3. Relationships between tables should be maintained.
-- 4. Duplicate email address should not be allowed.
-- 5. The database should be easy to maintain.
-- 6. SQL queries should return accurate results.

# EXPECTED OUTCOME
-- The System should provide a structured relational database
-- for managing students, departments, teachers, courses,
-- enrollments, and marks.

-- The project should demonstrate parctical knowledge of MySQL 
-- database creation, table creation, data insertion,
-- relationships, views, stored procedures, joins, aggregate
-- functions, and SQL queries. 
