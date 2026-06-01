/*select first_name, last_name, salary,
case when salary >= 10000 then 'Grade A'
when salary >= 5000 then 'Grade B'
when salary >= 1000 then 'Grade C'
else 'Grade D' end as salary_grade
from employee*/

--select 'Good' || 'Morning' || '!' as pipe_concatenated

--select concat('Good', 'Morning', '!') as concatfunction

--Concat & || Operator
--select name, 'Good' || 'Morning' || name as pipe_string, concat('Good', 'Morning', name) as concat_string from employee where id=96

--Substring function = seperate function
--select substring('I am the king of the world' from 10 for 4)
--select left('I am the king of the world', 13)
--select right('I am the king of the world', 9)
--select name, length(name) from employee

--String FUnction : Replace
--Select replace('SQL Starter Course', 'Starter', 'Beginner')
--Select Replace(email, 'randatmail.com', 'sakila.org') as email from public.employee


--String Function : Repeat function
--Select repeat('Hi',5) as repeat_greating
--Select id, CONCAT(Repeat('0', 5-LENGTH(CAST(id as text))), id) From employee
--Select LPAD(id::text, 5, '0') From employee

--Upper, lower, Initcap function
/*Select name, upper(name) from employee
Select name, lower(name) from employee
select scientific, INITCAP(scientific) from animal_names*/

--RTRIM Function
--SELECT RTRIM('--- SQL Course---','-')
--SELECT RTRIM(' SQL Course')

--LTRIM Function
--SELECT LTRIM('--- SQL COURSE---', '-')

--TRIM FUNCTION : Remove the longest string containing a character from the start, end, or both
--TRIM(LEADING/TRAILING/BOTH trim_character from string)
--Leading : remove characters from the left
--Trailing : remove from the right
--Both : remove characters from both ends of the string
--Select TRIM(BOTH '-' FROM '---SQL Course---')

--LIKE OPERATOR 
--WILDCARDS : % (Matches any sequence of zero more characters) & _(matches any single character).
--SELECT * FROM animal_names WHERE common like '%cat%'
--Select * from animal_names where common like 'Pu__'

--Date & Time
--SELECT Now():: DATE
--Select current_date;
--SELECT name, dob, AGE(CURRENT_DATE,dob) from employee
--SELECT firstname, logtime from log_timein where logtime between '10:00' and '12:00'
--SELECT TO_CHAR(CURRENT_DATE, 'Month dd, yyyy')
--Date Time Identifier
--SELECT date_part('dow', now()) as dow, date_part('doy', now()) as doy;

--EXTRACT
--SELECT extract(dow from now()) as dow, extract(doy from now()) as doy;

--DAte_TRUNC FUNCTION
--SELECT logtime, date_trunc('hour', logtime) from log_timein

--INTERVAL Data Type
--Select now(), now() - INTERVAL '6 hours' as sixhoursbefore;

-- MAKE_DATE
--Select make_data(salesyear, salesday) from supermarket_sales
--SELECT TO_TIMESTAMP('04 03 23 14:45', 'MM DD YY HH24:MI');
https://github.com/veniapputrii/SQL/edit/main/beginner.sql
--CONVERTING
--Select to_date('2023 Apr 03', 'yyyy Mon DD')

--TO_NUMBER : Convert string to numeric
--Select to_number('$1, 234, 567.89', 'L9G999G999.99');

--CAST
--SELECT CAST('Dec 12, 2023' as DATE);
--SELECT CAST('12-December 2023' as DATE);

--JOIN
--SELECT * FROM public.zoo_2
--ORDER BY id ASC

--INNER JOIN
--SELECT * FROM public.zoo_1
--ORDER BY id ASC

--SELECT
--zoo_1.id id_a,
--zoo_1.animal animal_a,
--zoo_2.id id_b,
--zoo_2.animal animal_b
--FROM
--zoo_1
--INNER JOIN zoo_2 ON zoo_1.animal = zoo_2.animal;

--LEFT OUTER JOIN
--zoo_1.id,
--zoo_1.animal, 
--zoo_2.id,
--zoo_2.animal
--FROM
--zoo_1
--LEFT JOIN zoo_2 on zoo_1.animal = zoo_2.animal;

--SELECT
--zoo_2.id,
--zoo_2.animal,
--zoo_1.id,
--zoo_1.animal

--FROM
--zoo_1
--RIGHT JOIN zoo_2 on zoo_1.animal = zoo_2.animal;


--FULL OUTER JOIN
--SELECT
--zoo_1.id,
--zoo_1.animal,
--zoo_2.id,
--zoo_2.animal
--FROM
--zoo_1
--FULL JOIN zoo_2 on zoo_1.animal = zoo_2.animal;

--SELECT * FROM customer NATURAL  JOIN shoporder

--SELECT * FROM customer INNER JOIN shoporder ON customer.orderid = shoporder.orderid 
--SELECT a.employeename,
--b.employeename managername
--FROM 
--employee_roster a
--INNER JOIN employee_roster b ON b.empployeeid = a,employeeid

--SELECT max(id) FROM employee
--SELECT * FROM employee where id = (select max(id) from employee)

--SELECT first_name, last_name, salary,(select avg(salary) from employee) as avg_salary from employee



--SELECT order_id, order_date, quantity, unit_price, total from orders where employee_id in (select id from employee where departmenet = 'sales')
--SELECT order_table.*,employee.name
--from(select order_id,order_date, shipment_date, quantity, unit_price, total, employee_id from orders where total <>0) as order_table
--left join employee on order_table.employee_id = employee.id

--Select first_name, last_name, salary, department, (select avg(salary)
 -- from employee e2 where e2.department = e1.department) as avg_salary from employee e1 order by department.

--select order_id, order_date, quantity, unit_price,total,
--(select max(order_id) from orders o2 where o2.order_id < o1.order_id) previous_order_id from orders o1 order by order_id

--Select order_date, sum(total) total, (select sum(total) from orders where order_date <=o1.order_date) running_total
--from orders o1 group by order_date order by order_date

--Operators - Ascending
--SELECT * From public.zoo_2
--Order by id ASC

-- UNION
--Select * from zoo_1
--UNION ALL
--Select * from zoo_2
--ORDER BY ID

--INTERSECT
--SELECT * FROM zoo_1
--INTERSECT 
--Select * From zoo_2

--EXCEPT
--select * from zoo_1
--except
--select * from zoo_2
--order by id

--view
--CREATE view customerorder as
--select s.subcategory, s.quantity, c.customername from shoporder s
--inner join customer c on s.orderid = c.orderid

--Window functions
--SELECT restaurantname, sales,
--RANK() OVER (ORDER BY sales DESC)
--FROM restaurant

--SELECT restaurantname, state, mealsserved, 
--RANK() over (partition by  state order by mealsserved desc)
--from restaurant

--DENSE RANK
--SELECT restaurantname, state, mealsserved, 
--DENSE_RANK() over (partition by  state order by mealsserved desc)
--from restaurant

--ROW_NUMBER
--select *,
--row_number() over(order_by restaurantname asc)
--from restaurants

--NTILE (can't we do a customer segmentation with NTILE?)
SELECT restaurantsname, sales,
NTILE(3) OVER (ORDER by sales DESC) salesgroup
from restaurants
