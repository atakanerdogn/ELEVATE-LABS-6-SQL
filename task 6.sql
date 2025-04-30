select 
year(from_date) as y, month(from_date) as m,
count(distinct emp_no) as total_employees,
sum(salary) as total_salaries,
avg(salary) as avg_salaries
from salaries where salary > 100000
group by year(from_date), month(from_date)
order by y, m;
