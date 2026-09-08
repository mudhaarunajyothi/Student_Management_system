# Insert the data records into a existing tables

# Insert department records
insert into department(department_name, location)
values
('Computer Science', 'Block A'),
('Electronics and Communication', 'Block B'),
('Mechanical Engineering', 'Block C'),
('Civil Engineering', 'Block D'),
('Artificial Intelligence and Machine Learning', 'Block E');

select * from department;

# Insert student records
insert into student
(student_name, email,phone, date_of_birth, gender, department_id)
values
('Lucky', 'lucky@gmail.com', '9876543210', '2004-05-15', 'Female', 1),
('Rahul', 'rahul@gmail.com', '9876543211', '2003-08-20', 'Male', 1),
('Priya', 'priya@gmail.com', '9876543212', '2004-02-10', 'Female', 2),
('Kiran', 'kiran@gmail.com', '9876543213', '2003-11-25', 'Male', 2),
('Sneha', 'sneha@gmail.com', '9876543214', '2004-07-18', 'Female', 3),
('Arjun', 'arjun@gmail.com', '9876543215', '2003-04-12', 'Male', 3),
('Divya', 'divya@gmail.com', '9876543216', '2004-09-05', 'Female', 4),
('Ravi', 'ravi@gmail.com', '9876543217', '2003-12-30', 'Male', 4),
('Anjali', 'anjali@gmail.com', '9876543218', '2004-01-22', 'Female', 5),
('Vikram', 'vikram@gmail.com', '9876543219', '2003-06-14', 'Male', 5);

select * from student;

# Insert teacher records
insert into teacher(teacher_name, email, phone, department_id)
values
('Dr. Kumar', 'kumar@gmail.com', '9876500001', 1),
('Dr. Lakshmi', 'lakshmi@gmail.com', '9876500002', 2),
('Prof. Ramesh', 'ramesh@gmail.com', '9876500003', 3),
('Prof. Anitha', 'anitha@gmail.com', '9876500004', 4),
('Dr. Mahesh', 'mahesh@gmail.com', '9876500005', 5);

select * from teacher;

# Insert course records
insert into course(course_name, course_code, credits, department_id)
values
('Database Management Systems', 'CS101', 4, 1),
('Data Structures', 'CS102', 4, 1),
('Computer Networks', 'CS103', 3, 1),
('Digital Electronics', 'EC101', 4, 2),
('Thermodynamics', 'ME101', 4, 3),
('Structural Engineering', 'CE101', 4, 4),
('Machine Learning', 'AIML101', 4, 5);

select * from course;

# Insert enrollment records
insert into enrollment(student_id, course_id, enrollment_date, marks)
values
(1, 1, '2026-01-10', 88.50),
(1, 2, '2026-01-10', 92.00),
(2, 1, '2026-01-11', 78.00),
(2, 3, '2026-01-11', 85.50),
(3, 4, '2026-01-12', 91.00),
(4, 4, '2026-01-12', 76.50),
(5, 5, '2026-01-13', 89.00),
(6, 5, '2026-01-13', 82.50),
(7, 6, '2026-01-14', 95.00),
(8, 6, '2026-01-14', 80.00),
(9, 7, '2026-01-15', 94.50),
(10, 7, '2026-01-15', 87.00),
(3, 1, '2026-01-16', 86.00),
(5, 1, '2026-01-16', 90.00),
(9, 2, '2026-01-17', 93.50);

select * from enrollment;

# Insert teacher course records
insert into teacher_course(teacher_id,course_id)
values
(1,1),
(1,2),
(2,4),
(3,5),
(4,6),
(5,7),
(1,3);

select * from teacher_course;