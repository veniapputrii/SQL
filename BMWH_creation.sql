-- Veni Agustina Pratama Putri | Student ID 36349

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
actual_meters_used decimal(4,2),
work_date date ,
foreign key(employee_id) references employee(employee_id),
foreign key(product_id) references product(product_id)
);

drop table product;
drop table if exists pattern;
drop table if exists employee;
drop table employee_worklog;
drop table product_pattern ;



--ADD
-- add a new value in pattern
insert into pattern (pattern_id, pattern_name, standard_meters_required, width_cm, heigth_cm)
values('nal1','nala L', '10', '124.46', '15'),('spil2','spiral L', '10', '2', '81.58'), ('rul3','rumbai L','5', '124.46', '96.68'), ('tel3','tessel L', '5', '18', '10');



--UPDATE 
-- Update the id [ "tel3" -> "tel4" ] in pattern table
update pattern 
set pattern_id = 'tel4'
where pattern_id = 'tel3';

-- update standard meters need
update pattern
set standard_meters_required = 0.5
where pattern_id = 'tel4';

update pattern
set standard_meters_required = 5
where pattern_id = 'nal1';

update pattern
set standard_meters_required = 3
where pattern_id = 'spil2';



--LIKE
-- Workers who live in Gayam ; how many employees who live in Gayam?
select * from employee where address like '%Gayam%';



--INSERT
-- insert new products
insert into product(product_name, price, size, ready_quantity)
values('gabriela', 49.32,'M', 2), ('gabriela', 215.32, 'XL',3),
('Basura', 100.20,'L',1), ('Lala land', 60.88, 'M', 1),
('Basura', 214.20, 'XL', 2), ('Lala Land', 130.00, 'L', 4);
insert into product(product_name, price, size, ready_quantity)
values('nadin', 52.21, 'M', 2), ('Nadin', 152.10,'L', 10), ('Nadin', 202.90, 'XL', 19);

-- insert new product_pattern
insert into product_pattern (product_id, pattern_id, quantity_required)
values(9, 'nal1',1), (9, 'rul3', 1), (9, 'spil2',7), (9,'tel4',7);
