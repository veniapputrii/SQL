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
Select make_data(salesyear, salesday) from supermarket_sales










