Create table if not exists level1_customer
(
cust_id char(3) primary key,
first_name char(20),
last_name char(20),
balance decimal(7,2),
credit_limit decimal(7,2),
rep_id char(2)
);

insert into level1_customer
select cust_id, first_name, last_name, balance, credit_limit, rep_id
	from customer
	where (credit_limit = 500)
;
update level1_customer 
set last_name = 'Martinez'
where (cust_id = '616');

select * from level1_customer where rep_id = 15 and balance > 150;

update level1_customer
set credit_limit = 550
where (rep_id = '15') and (balance > 150);
drop table level1_customer;

insert into level1_customer 
values ('432','Veni','Agustina', 213,500,'10')
;

update level1_customer
set last_name = 'Jones'
where (cust_id = '294');

delete from level1_customer where (cust_id = '795') ;

update level1_customer
set balance = NULL 
where (cust_id = '616');

alter table level1_customer add cust_type char(1);

update level1_customer set cust_type = 'R';

update level1_customer set cust_type = 'S' where cust_id = '227';
select * from level1_customer;

create table noncat (
item_id char (4),
description char (30),
on_hand decimal(4,0),
category char(3),
price decimal(6,2));

select * from item;

insert into noncat
select item_id, description, on_hand, category,price 
from item where category NOT IN ('CAT');

update noncat set description = "Dog Toz Gift Bonanza" where item_id = 'DT12';
select * from noncat;

update noncat 
set price = price * 1.50 where category = 'BRD';

insert into noncat
values('FF17', 'Premium Fish Food', 10, 'FSH', 11.95);
select * from noncat;

delete from noncat where (category = 'HOR');

update noncat set category = NULL where item_id = 'UF39';

alter table noncat add on_hand_value decimal (7,2);
update noncat set on_hand_value = on_hand * price;


alter table noncat
alter column  description char(40) not null;

drop 