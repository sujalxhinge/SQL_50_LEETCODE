--1907. Count Salary Categories

SELECT "Low Salary" as category,
sum(if(income < 20000,1,0))as accounts_count
from accounts
UNION
SELECT "Average Salary" as category,
sum(if(income between 20000 and 50000,1,0))as accounts_count
from accounts
UNION
SELECT "High Salary" as category,
sum(if(income > 50000,1,0))as accounts_count
from accounts

