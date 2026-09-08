#  procedures of the Student Management System

# To get all students
DELIMITER // 
create procedure GetAllStudents()
BEGIN
select * from student;
END //
DELIMITER ;

call GetAllStudents();

# To get student by id
DELIMITER //
create procedure GetStudentById(IN p_student_id int)
BEGIN
select * from student where student_id = p_student_id;
END //
DELIMITER ;

call GetStudentById(1);
call GetStudentById(4);

# To get students by department
DELIMITER //
create procedure GetStudentsByDepartment(IN p_department_id int)
BEGIN
select 
s.student_id,
s.student_name,
s.email,
d.department_name
from student s
join department d
on s.department_id = d.department_id
where s.department_id = p_department_id;
END //
DELIMITER ;

call GetStudentsByDepartment(2);

# To get student marks
DELIMITER //
create procedure GetStudentmarks(IN p_student_id int)
BEGIN
select 
s.student_name,
c.course_name,
c.course_code,
e.marks,
e.enrollment_date
from student s
join enrollment e 
on s.student_id = e.student_id
join course c 
on e.course_id = c.course_id
where s.student_id = p_student_id;
END //
DELIMITER ;

call GetStudentmarks(1);
call GetStudentmarks(3);