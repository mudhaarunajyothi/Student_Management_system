# DATABASE DESIGN

# DATABASE NAME
-- student_management_system

# TABLES
-- The database contains the following tables:
-- 1. department
-- 2. student
-- 3. teacher
-- 4. course
-- 5. enrollment
-- 6. teacher_course

# DEPARTMENT TABLE
-- PRIMARY KEY:
-- department_id

-- COLUMNS:
-- department_id
-- department_name
-- location

# STUDENT TABLE
-- PRIMARY KEY:
-- student_id

-- FOREIGN KEY:
-- department_id references department(department_id)

-- COLUMNS:
-- student_id
-- student_name
-- email
-- phone
-- date_of_birth
-- gender
-- department_id

# TEACHER TABLE
-- PRIMARY KEY:
-- teacher_id

-- FOREIGN KEY
-- department_id references department(department_id)

-- COLUMNS:
-- teacher_id
-- teacher_name
-- email
-- phone
-- department_id

# COURSE TABLE
-- PRIMARY KEY:
-- course_id

-- FOREIGN KEY:
-- department_id references department(department_id)

-- COLUMNS:
-- course_id
-- course_name
-- course_code
-- credits
-- department_id

# ENROLLMENT TABLES
-- PRIMARY KEY:
-- enrollment_id

-- FOREIGN KEYS:
-- student_id references student(student_id)
-- course_id references course(course_id)

-- COLUMNS:
-- enrollment_id
-- student_id
-- course_id
-- enrollment_data
-- marks

# TEACHER_COURSE TABLE
-- COMPOSITE PRIMARY KEY:
-- teacher_id, course_id

-- FOREIGN KEYS:
-- teacher_id references teacher(teacher_id)
-- course_id refenences course(course_id)

-- COLUMNS:
-- teacher_id
-- course_id

# RELATIONSHIPS
-- Department 1 : Many Students
-- Department 1 : Many Teacher
-- Department 1 : Many Course

-- Student Many : Many Course
-- Relationship handled by Enrollment table.

-- Teacher Many : Many Course
-- Relationship handled by Teacher_Course table.

-- DATABASE DESIGN SUMMARY
-- The Student Management System follows a relational database
-- design. Primary keys uniquely identify records, while foreign
-- keys establish relationships between tables.
--
-- The Enrollment table resolves the many-to-many relationship
-- between students and courses.
--
-- The Teacher_Course table resolves the many-to-many relationship
-- between teachers and courses.
