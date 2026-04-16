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
select name, length(name) from employee
