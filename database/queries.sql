# Queries of Student Management System

# DISPLAY ALL STUDENTS
select * from student;

# STUDENTS WITH DEPARTMENT NAMES
select 
s.student_id,
s.student_name,
s.email,
d.department_name
from student s 
join department d 
on s. department_id = d.department_id;

# STUDENT FROM COMPUTER SCIENCE
select 
s.student_id,
s.student_name,
s.email,
d.department_name
from student s 
join department d
on s.department_id = d.department_id
where d.department_name = 'Computer Science';

# STUDENTS AND THEIR COURSES
select
s.student_id,
s.student_name,
c.course_name,
c.course_code
from student s 
join enrollment e 
on s.student_id = e.student_id
join course c
on e.course_id = c.course_id;

# STUDENTS WITH MARKS GREATER THAN 85
select 
s.student_id,
s.student_name,
c.course_name,
e.marks
from student s 
join enrollment e 
on s.student_id = e.student_id
join course c
on e.course_id = c.course_id
where e.marks > 85;

# AVERAGE MARKS OF EACH STUDENT
select
s.student_id,
s.student_name,
avg(e.marks) as average_marks
from student s 
join enrollment e 
on s.student_id = e.student_id
group by 
s.student_id,
s.student_name;

# STUDENT WITH HIGHEST MARSK
select 
s.student_id,
s.student_name,
c.course_name,
e.marks
from student s 
join enrollment e 
on s.student_id = e.student_id
join course c
on e.course_id = c.course_id
where e.marks = (select max(marks) from enrollment);

# STUDENTS EITH LOWEST MARKS
select 
s.student_id,
s.student_name,
c.course_name,
e.marks
from student s
join enrollment e 
on s.student_id = e.student_id
join course c
on e.course_id = c.course_id
where e.marks = (select min(marks) from enrollment);

# STUDENTS WHOSE NAMES START WITH A 
select 
student_id,
student_name,
email,
phone,
department_id
from student
where student_name like 'A%';

# STUDENTS ENROLLED IN MORE THAN ONE COURSE
select 
s.student_id,
s.student_name,
count(e.course_id) as total_courses
from student s 
left join enrollment e 
on s.student_id = e.student_id
group by 
s.student_id,
s.student_name
having count(e.course_id) > 1;

# STUDENT WITH 2ND HIGHEST MARKS
select
s.student_id,
s.student_name,
c.course_name,
e.marks
from student s 
join enrollment e 
on s.student_id = e.student_id
join course c 
on e.course_id = c.course_id
where e.marks = (
select max(marks) from enrollment where marks < (
select max(marks) from enrollment)
);

