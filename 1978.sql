--1978. Employees Whose Manager Left the Company

# Write your MySQL query statement below
SELECT employee_id
from employees
where salary < 30000 
and manager_id not in (select employee_id from employees)
order by employee_id asc