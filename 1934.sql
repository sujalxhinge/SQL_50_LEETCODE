--1934. Confirmation Rate


Select 
s.user_id,
ROUND(
    IfNull(sum(c.action ='confirmed')/count(c.action),0)
,2)As confirmation_rate
From Signups s
left join confirmations c
on s.user_id = c.user_id
group by
s.user_id