

drop table if exists employee_worklog;
drop table if exists product_pattern ;
drop table if exists pattern;
drop table if exists employee;
drop table if exists product;


--CREATE TABLES--
--create the product table
create table if not exists product(
product_id bigint generated always as identity primary key,
product_name varchar (50),
price decimal(7,2),
size varchar(50),
ready_quantity bigint
);

--create the pattern table
create table if not exists pattern(
pattern_id varchar(50) primary key,
pattern_name varchar(50),
standard_meters_required decimal(6,2),
width_cm decimal(6,2),
heigth_cm decimal(6,2)
);

--create the product_pattern table
create table if not exists product_pattern(
product_id bigint,
pattern_id varchar(50),
quantity_required integer,
primary key(product_id, pattern_id),
foreign key(product_id) references product (product_id),
foreign key(pattern_id) references pattern (pattern_id)
);

--create the employee table
create table if not exists employee(
employee_id integer generated always as identity primary key,
name varchar(50),
address varchar,
experience_years integer
);

--create the employee_working table
create table employee_worklog(
worklog_id bigint generated always as identity primary key,
employee_id integer,
product_id bigint, 
completed_quantity integer,
actual_meters_used decimal(10,2),
work_date date ,
foreign key(employee_id) references employee(employee_id),
foreign key(product_id) references product(product_id)
);

