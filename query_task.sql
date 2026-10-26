-- 1. LIKE--
--use like to select how many employee are from Gayam city?
select
	*
from
	employee
where
	address like '%Gayam%';

-- 2. JOIN--
-- report of completed product prices in the first day of october
select
	ew.product_id ,
	ew.employee_id,
	p.price,
	ew.actual_meters_used ,
	ew.completed_quantity,
	ew.work_date
from
	product p
inner join employee_worklog ew on
	p.product_id = ew.product_id
where
	ew.work_date = '2026-10-01';
	
--3. >
-- which product that use more than 500 m material
select
	product_id,
	employee_id,
	actual_meters_used,
	completed_quantity,
	work_date
from
	employee_worklog
where
	actual_meters_used > 500;

--4. Group BY
-- expected consumption for each product
select
	pp.product_id,
	sum(p.standard_meters_required * pp.quantity_required) as total_meters_required
from
	pattern p
inner join product_pattern pp on
	p.pattern_id = pp.pattern_id
group by
	pp.product_id ;

--the AVG actual meter used each product by employees
select
	product_id,
	avg(actual_meters_used)::numeric(10, 2)as avg_consumption,
	array_agg(distinct employee_id::TEXT) as employee_ids
from
	employee_worklog
group by
	product_id ;

--5. IN
--how many M size in the pattern table
select * from pattern 
where size in ('M');


--6. UPDATE
