--1141. User Activity for the Past 30 Days I


SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
where (activity_date > "2019-06-27" AND activity_date <= "2019-07-27")
GROUP BY activity_date;




