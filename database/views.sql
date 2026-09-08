#  To view the details

# create student details view
create or replace view student_details as 
select 
s.student_id, s.student_name, s.email, s.phone, s.date_of_birth, s.gender, d.department_name
from student s
join department d
on s.department_id = d.department_id;

select * from student_details;

# To view studwnt marks
create or replace view student_marks as
select
s.student_id,
s.student_name,
c.course_name,
c.course_code,
e.marks,
e.enrollment_date
from student s
join enrollment e
on s.student_id = e.student_id
join course c
on e.course_id = c.course_id;

select * from student_marks;

# To view the teacher course details
create or replace view teacher_course_details as 
select
t.teacher_id,
t.teacher_name,
c.course_id,
c.course_name,
c.course_code,
d.department_name
from teacher t
join teacher_course tc
on t.teacher_id = tc.teacher_id
join course c
on tc.teacher_id = c.course_id
join department d
on c.department_id = d.department_id;

select * from teacher_course_details;
