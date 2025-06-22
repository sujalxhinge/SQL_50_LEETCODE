--176. Second Highest Salary

SELECT max(salary) as SecondHighestSalary
FROM Employee
WHERE salary < (SELECT max(salary)from employee)
