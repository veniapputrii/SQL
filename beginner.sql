select first_name, last_name, salary,
case when salary >= 10000 then 'Grade A'
when salary >= 5000 then 'Grade B'
when salary >= 1000 then 'Grade C'
else 'Grade D' end as salary_grade
from employee