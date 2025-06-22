--1731. The Number of Employees Which Report to Each Employee

# Write your MySQL query statement below
SELECT
e1.employee_id,e1.name,
count(e2.reports_to) as reports_count,
round(avg(e2.age))as average_age
FROM employees e1
inner join employees e2
ON e1.employee_id = e2.reports_to
group by e1.employee_id
order by e1.employee_id