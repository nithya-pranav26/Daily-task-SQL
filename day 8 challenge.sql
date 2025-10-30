CREATE DATABASE shopdb;
use shopdb;

create table Orders (
order_id int primary key,
customer_name varchar(50),
order_date date,
Amount decimal (10,2)
);

insert into Orders values
(11, "Sahana", "2025-04-07", 17675),
(12, "Guna", "2025-09-09", 16754),
(13, "Kavi", "2024-05-02", 28767);

create table Deleted_orders (
order_id int ,
customer_name varchar(50),
order_date date,
Amount decimal (10,2), 
deleted_date datetime
);

DELIMITER //

CREATE TRIGGER after_order_delete after delete on orders for each row
begin
	insert into Deleted_orders (order_id, customer_name, order_date, Amount, deleted_date)
    values (old.order_id, old. customer_name, old. order_date, old. Amount, now());
end;
//

DELIMITER ;

DELETE from orders where order_id = 12;

select * from deleted_orders;

-- DCL COMMANDS -- 

create user 'senior analyst @ localhost' identified by 'password444';

-- Grant select access (Reporting access)
grant select on shopdb. * to 'senior analyst @ localhost';

-- if access needs to removed --
revoke select on shopdb. * from 'senior analyst @ localhost';

-- TCL COMMANDS --

CREATE TABLE bankaccounts (
account_no int primary key,
holder_name varchar (100),
Balance decimal(10,2)
);

insert into bankaccounts values
(675432, "madhu", "600000"),
(567483, "Shanmu", "700000"),
(786542, "thanish", "400000");

select * from bankaccounts;

start transaction;

-- withdraw from Devi
update bankaccounts
set balance = balance - 10000 where account_no = 984367;

-- DEPOSIT TO Chinchu 
update bankaccounts
set balance = balance + 10000 where account_no = 698548;

-- if everything is correct 
COMMIT;

-- If something went wrong 
rollback;

-- Optional Savepoint 
savepoint after_withdraw;