--185. Department Top Three Salaries

select department,employee,salary from
(SELECT d.name as department,e.name as employee,e.salary as salary,
dense_rank() over(partition by d.name order by e.salary desc) as ranks
from employee e
left join Department d
on e.departmentid = d.id) temp
where ranks <= 3
