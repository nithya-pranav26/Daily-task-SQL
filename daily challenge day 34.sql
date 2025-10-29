create database stopsdp;
use stopsdp;

create table employee(
employee_id int primary key,
employee_name varchar (50),
email varchar(100),

hiredate date,
jobtitle varchar(50),
salary decimal (10,2)
);

insert into  employee values
(105,"ramu","ramu123@gmail.com","2015-02-03","electrician","20132"),
(106,"nithi","nithi11@gmail.com","2011-01-04","mechanic","30123"),
(111,"seeni","seeni55@gmail.com","2011-03-05","manager","60025");

-- stored procedure --

DELIMITER //

create procedure getemployeedateailsbyid (in empid int)
begin 
     select * from employee where employee_id = empid;
     end //
     
     DELIMITER ;
 

 call getemployeedateailsbyid (106);
 
 -- simple view --
 alter table employee
 add column department varchar(50);
 
alter table employee rename column depertment to department;
 select * from employee;

 update employee set department ="general" where employee_id = 105;
 update employee set department ="maintance" where employee_id = 106;
 update employee set department ="HR" where employee_id = 111;
 
 create view employeedepartmentview as select employee_name as "Employee Name", department from employee;
 
 select * from employeedepartmentview;
 
create table employee1(
employee_id int primary key,
employee_name varchar(100)
);

insert into employee1 values
 (1, "rani"),
 (2, "vani");
 
 create table department(
 dep_id int primary key,
 dept_name varchar(50),
 employee_id int);
 
 
 insert into department values
 (22, "marketing",1),
 (33, "sales" ,2);
 
 
 create table salary(
 salary_id int,
 salary decimal(10,2),
 employee_id int,
 foreign key (employee_id) references employee1( employee_id)
 );
 
 insert into salary values
 (701, "60000", 1),
 (702, "30000", 2);
 
 --- complex view ---
 
 select employee_name,dept_name,salary from employee1 e join department d on e.employee_id = d.employee_id
 join salary s on e.employee_id =s.employee_id;
 
 create view employeedetails as select employee_name,dept_name,salary from employee1 e join department d on e.employee_id = d.employee_id
 join salary s on e.employee_id =s.employee_id;
 
 select * from employeedetails;
 
 
 

