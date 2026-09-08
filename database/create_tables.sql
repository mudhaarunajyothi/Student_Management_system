# Create tables

# Create department table
create table department(
department_id int primary key AUTO_INCREMENT,
department_name varchar(100) NOT NULL,
location varchar(100)
);

# Create student table
create table student(
student_id int primary key AUTO_INCREMENT,
student_name varchar(100) NOT NULL,
email varchar(100) UNIQUE,
phone varchar(15),
date_of_birth DATE,
gender varchar(10),
department_id int,
FOREIGN KEY(department_id)
REFERENCES department(department_id)
);

# Create teacher table
create table teacher(
teacher_id int primary key AUTO_INCREMENT,
teacher_name varchar(100) NOT NULL,
email varchar(100) UNIQUE,
phone varchar(15),
department_id int,
FOREIGN KEY(department_id)
REFERENCES department(department_id)
);

# Create course table
create table course(
course_id int primary key AUTO_INCREMENT,
course_name varchar(100) NOT NULL,
course_code varchar(20) UNIQUE,
credits int,
department_id int,
FOREIGN KEY(department_id)
REFERENCES department(department_id)
);

# Create enrollment table
create table enrollment(
enrollment_id int primary key AUTO_INCREMENT,
student_id int,
course_id int,
enrollment_date DATE,
marks DECIMAL(5,2),
FOREIGN KEY (student_id)
REFERENCES student(student_id),
FOREIGN KEY(course_id)
REFERENCES course(course_id)
);

# Create teacher courses table
create table teacher_course(
teacher_id int,
course_id int,
primary key (teacher_id, course_id),
FOREIGN KEY(teacher_id)
REFERENCES teacher(teacher_id),
FOREIGN KEY(course_id)
REFERENCES course(course_id)
);