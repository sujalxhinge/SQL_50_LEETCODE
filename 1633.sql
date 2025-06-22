--1633. Percentage of Users Attended a Contest

SELECT contest_id,
ROUND(
IFNULL(COUNT(distinct user_id) * 100 / (SELECT COUNT(user_id)FROM Users),0),
2)as percentage
from register
group by contest_id
order by percentage desc,contest_id