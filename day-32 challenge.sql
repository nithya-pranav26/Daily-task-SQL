create database school_db;
use school_db;

create table students(
student_id int primary key,
student_name varchar(50),
course_id int);

create table courses(
course_id int primary key,
course_name varchar(50));

insert into students values 
(1, "kathir", 101),
(2, "Meena", 102),
(3, "Madhan", 103),
(4, "Priya", 104);

insert into students(student_id,student_name) values 
(5, "Balu");

insert into courses values
(101, "accounts"),
(102, "Maths"),
(103, "History"),
(104, "Computer");

insert into courses values 
(105, "Commerce");

-- INNER JOIN --
select s.student_name, c.course_name from students s inner join courses c on s.course_id = c.course_id;

-- LEFT AND RIGHT JOIN --
select s.student_name, c.course_name from students s left join courses c on s.course_id = c.course_id;
select s.student_name, c.course_name from students s right join courses c on s.course_id = c.course_id;

create table employees_current(
emp_id int primary key,
emp_name varchar(50));

insert into employees_current values 
(1, "Aani"),
(2, "Karthi"),
(3, "Mithun"),
(4, "Laks");


create table employees_past(
past_emp_id int primary key,
past_emp_name varchar(50));

insert into employees_past values
(3, "Mithun"),
(4, "laks"),
(2, "meena"),
(1, "kathir");

-- UNION VS UNION ALL --
select emp_name from employees_current union select past_emp_name from employees_past;

select emp_name from employees_current union all select past_emp_name from employees_past;