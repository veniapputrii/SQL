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

--update product_pattern
update product_pattern
set product_id = 4
where product_id = 2;

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

insert into product_pattern (product_id, pattern_id, quantity_required)
values(2, 'dil1', 2), (2, 'sel2',1), (2, 'hakl3', 1), (
5, 'dixl1', 2), (5, 'sexl2', 1), (5, 'hakxl3', 1), 
(1,'nam3',1), (1, 'spim1',5), (1,'sem3',1),(1,'rum2',1),
(6,'nal2',1),(6,'spil3',7),(6,'rul1',1),(6,'sel3',1),
(8,'naxl1',1),(8,'spixl2', 9), (8,'sexl1',1),(8,'ruxl1',1),
(10,'spim2',4),(10,'tem2',2),(10,'sem1',1), (10, 'rum1', 1),
(11, 'spil1',4),(11,'tel3',2),(11, 'sel1',1),(11,'rul2',1),
(12,'spixl3',4),(12,'texl2',2),(12,'sexl3',1),(12,'ruxl2',1);

--insert new rows in the pattern table
insert into pattern (pattern_id, pattern_name, standard_meters_required, width_cm, heigth_cm)
values('tem1', 'Tessel M', 1, 16.5, 10), ('nam2', 'Nala M', 5, 81.28,12),
('rum3', 'Rumbai M', 100,81.28,96.68),('spim4', 'Spiral M', 15,2,84.68),
('texl1', 'tessel XL', 0.5, 14, 10), ('naxl2', 'Nala XL', 22, 147.32, 20),
('ruxl', 'Rumbai XL', 150, 147.32,109.38), ('spilxl', 'Spiral XL',10 ,2,89.38),
('spim2', 'Spiral M', 4, 2, 106.68), ('tem2', 'tessel M',25 ,15,106.68),
('sem1', 'Semanggi M', 15,43.28, 53.34), ('rum1', 'Rumbai M', 70,43.28, 53.34),
('spil1', 'Spiral L',4 ,2, 106.68), ('tel3', 'tessel L', 50,20, 106.68),
('spixl3','Spiral XL', 5,2,119.38), ('texl2', 'tessel XL', 65,25,119.38),
('sexl3', 'Semangi XL', 80,89.32,59.69), ('ruxl2', 'Rumbai XL',100 ,89.32,59.69),
('nam3', 'Nala M', 10, 81.28, 15), ('spim1', 'spiral M', 5, 2, 91.68),
('sem3', 'semanggi M', 38,81.28, 40), ('rum2', 'Rumbai M', 85, 81.28, 51.68),
('spixl2', 'Spiral XL', 18,2, 99.38), ('naxl1','Nala XL', 100, 147.32, 20),
('sexl1', 'Semanggi XL', 130, 147.32, 50), ('ruxl1', 'Rumbai XL', 130,147.32, 49.38),
('nal2', 'Nala L',95 ,124.46, 15), ('spil3', 'Spiral L', 5, 2, 91.68), ('sel3', 'Semangi L',120 , 124.46,40),
('rul1', 'Rumbai L', 110, 124.46, 51.68);

insert into pattern(pattern_id, pattern_name, standard_meters_required, width_cm, heigth_cm)
values('sel1', 'Semanggi L',55 , 76.48,53.34), ('rul2', 'Rumbai L',70,76.48,53.34);

--insert new values in the employee table
insert into employee (name, address, experience_years)
values('Lita', 'Jl. Andra 02, Kec. Bojonegoro', 4),
('Nina', 'Jl. Andra 02, Kec. Bojonegoro', 5),
('Vara', 'Jl. Andra 02, Kec. Bojonegoro', 1);

--insert values in employee_worklog
insert into employee_worklog(employee_id, product_id, completed_quantity, actual_meters_used, work_date)


--Remove double spiral (not needed)
delete from pattern 
where pattern_name = 'double spiral M';
