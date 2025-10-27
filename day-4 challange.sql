create database shop;
use shop;

create table products(
product_id int primary key,
product_name varchar (100), 
product_price int,
quantity int
);

insert into products values
(1001, "heater", 42000, 10),
(1002, "air cooller", 35000, 15),
(1003, "television", 50000, 20),
(1004, "washine machine", 28000, 25);


create table sales(
sales_id int primary key,
customer_id int,
customer_name varchar (50),
product_id int,
foreign key (product_id) references products(product_id),
sales_price int,
sales_quantity int,
total_amount int
);

insert into sales VALUES
(111, 243, "vishnu", 1001, 42000, 3, 94000),
(112, 244, "kuna", 1002, 35000, 2, 65000);

create table employees(
employee_id int primary key,
employee_name varchar (50),
department_id int,
department_name varchar(50)
);

INSERT INTO employees values 
(111, "vasath", 1, "PRODUCTION"),
(112, "krish", 2, "SALES"),
(113, "lingesh", 3, "ACCOUNTS");

-- ORDER BY & LIMIT --
select * FROM products order by product_price desc limit 3;

-- AGGREGATE FUNTIONS --
select count(*) as total_sales from sales;

select sum(total_amount) as total_revenue from sales;

select avg(total_amount) as average_sales_value from sales;

select max(total_amount) as highest_sale from sales;

select min(total_amount) as lowest_sale from sales;

-- GROUP BY& HAVING --
SELECT department_id, count(employee_id) as total_employees from employees
group by department_id having count(employee_id) >10;